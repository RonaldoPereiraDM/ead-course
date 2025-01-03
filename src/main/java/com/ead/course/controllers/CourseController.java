package com.ead.course.controllers;

import com.ead.course.configs.annotations.Monitored;
import com.ead.course.dtos.CourseRecordDto;
import com.ead.course.models.CourseModel;
import com.ead.course.service.CourseService;
import com.ead.course.specitication.SpecificationTemplate;
import jakarta.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;
import java.util.UUID;

import static com.ead.course.specitication.SpecificationTemplate.courseUserId;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import static org.springframework.http.HttpStatus.*;
import static org.springframework.http.ResponseEntity.status;

@RestController
@RequestMapping("/courses")
@CrossOrigin("")
public class CourseController {

    private Logger logger = LoggerFactory.getLogger(CourseController.class);

    private final CourseService courseService;

    public CourseController(
            CourseService courseService
    ) {
        this.courseService = courseService;
    }

    @Monitored
    @PostMapping
    public ResponseEntity<Object> saveCourse(@RequestBody @Valid CourseRecordDto courseRecordDto){
        logger.debug("POST saveCourse courseRecordDto received {}", courseRecordDto);
        if(courseService.existsByName(courseRecordDto.name())){
            logger.warn("POST Course Name is Already Taken {}", courseRecordDto.name());
            return status(CONFLICT).body("Error: Course Name is Already Taken!");
        }

        CourseModel save = courseService.save(courseRecordDto);
        return status(CREATED).body(save);
    }

    @Monitored
    @GetMapping
    public ResponseEntity<Page<CourseModel>> getAllCourses(
            SpecificationTemplate.CourseSpec spec,
            Pageable pageable,
            @RequestParam(required = false) UUID userId
    ){
        logger.debug("GET all courses.");

        Page<CourseModel> all = (userId != null) ?
                courseService.findAll(courseUserId(userId), pageable) :
                courseService.findAll(spec, pageable);

        if(!all.isEmpty()){
            for (CourseModel course : all.toList()){
                UUID courseId = course.getCourseId();
                ResponseEntity<CourseModel> oneCourse = methodOn(CourseController.class).getOneCourse(courseId);
                course.add(linkTo(oneCourse).withSelfRel()
                );
            }
        }

        return status(OK).body(all);
    }

    @Monitored
    @GetMapping("/{courseId}")
    public ResponseEntity<CourseModel> getOneCourse(@PathVariable("courseId") UUID courseId){
        logger.debug("GET retreiveCourse courseId received {}", courseId);
        Optional<CourseModel> courseModel = courseService.findById(courseId);
        return status(OK).body(courseModel.get());
    }

    @Monitored
    @DeleteMapping("/{courseId}")
    public ResponseEntity<Object> deleteCourse(@PathVariable("courseId") UUID courseId){
        logger.debug("DELETE deleteCourse courseId received {}", courseId);
        CourseModel courseModel = courseService.findById(courseId).get();
        courseService.delete(courseModel);
        return status(OK).body("Course deleted successfully.");
    }

    @Monitored
    @PutMapping("/{courseId}")
    public ResponseEntity<Object> updateCourse(
            @PathVariable("courseId") UUID courseId,
            @RequestBody @Valid CourseRecordDto courseRecordDto
    ){
        logger.debug("PUT updateCourse courseRecordDto received {}", courseRecordDto);
        CourseModel update = courseService.update(courseRecordDto, courseService.findById(courseId).get());
        return status(OK).body(update);
    }
}