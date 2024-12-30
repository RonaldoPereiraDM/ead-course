package com.ead.course.controllers;

import com.ead.course.dtos.CourseRecordDto;
import com.ead.course.models.CourseModel;
import com.ead.course.models.ModuleModel;
import com.ead.course.service.CourseService;
import com.ead.course.specitication.SpecificationTemplate;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import static org.springframework.http.HttpStatus.*;
import static org.springframework.http.ResponseEntity.status;

@RestController
@RequestMapping("/courses")
@CrossOrigin("")
public class CourseController {

    private final CourseService courseService;

    public CourseController(
            CourseService courseService
    ) {
        this.courseService = courseService;
    }

    @PostMapping
    public ResponseEntity<Object> saveCourse(@RequestBody @Valid CourseRecordDto courseRecordDto){

        if(courseService.existsByName(courseRecordDto.name())){
            return status(CONFLICT).body("Error: Course Name is Already Taken!");
        }

        CourseModel save = courseService.save(courseRecordDto);
        return status(CREATED).body(save);
    }

    @GetMapping
    public ResponseEntity<Page<CourseModel>> getAllCourses(SpecificationTemplate.CourseSpec spec, Pageable pageable){
        Page<CourseModel> all = courseService.findAll(spec, pageable);

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

    @GetMapping("/{courseId}")
    public ResponseEntity<CourseModel> getOneCourse(@PathVariable("courseId") UUID courseId){
        Optional<CourseModel> courseModel = courseService.findById(courseId);
        return status(OK).body(courseModel.get());
    }

    @DeleteMapping("/{courseId}")
    public ResponseEntity<Object> deleteCourse(@PathVariable("courseId") UUID courseId){
        CourseModel courseModel = courseService.findById(courseId).get();
        courseService.delete(courseModel);
        return status(OK).body("Course deleted successfully.");
    }

    @PutMapping("/{courseId}")
    public ResponseEntity<Object> updateCourse(
            @PathVariable("courseId") UUID courseId,
            @RequestBody @Valid CourseRecordDto courseRecordDto
    ){
        CourseModel update = courseService.update(courseRecordDto, courseService.findById(courseId).get());
        return status(OK).body(update);
    }
}