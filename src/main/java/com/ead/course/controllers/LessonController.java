package com.ead.course.controllers;

import com.ead.course.configs.annotations.Monitored;
import com.ead.course.dtos.CourseRecordDto;
import com.ead.course.dtos.LessonRecordDto;
import com.ead.course.models.CourseModel;
import com.ead.course.models.LessonModel;
import com.ead.course.models.ModuleModel;
import com.ead.course.service.LessonService;
import com.ead.course.service.ModuleService;
import com.ead.course.specitication.SpecificationTemplate;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import static org.springframework.http.HttpStatus.OK;
import static org.springframework.http.ResponseEntity.status;

@RestController
public class LessonController {

    private final ModuleService moduleService;
    private final LessonService lessonService;

    public LessonController(
            ModuleService moduleService,
            LessonService lessonService
    ) {
        this.moduleService = moduleService;
        this.lessonService = lessonService;
    }

    @Monitored
    @PostMapping("/modules/{moduleId}/lessons")
    public ResponseEntity<Object> saveLesson(
            @PathVariable(value = "moduleId") UUID moduleId,
            @RequestBody @Valid LessonRecordDto lessonRecordDto) {
        LessonModel lessonModel = lessonService.save(lessonRecordDto, moduleService.findById(moduleId).get());
        return status(HttpStatus.CREATED).body(lessonModel);
    }

    @Monitored
    @GetMapping("/modules/{moduleId}/lessons")
    public ResponseEntity<Page<LessonModel>> getAllLessons(
            @PathVariable(value = "moduleId") UUID moduleId,
            SpecificationTemplate.LessonSpec spec,
            Pageable pageable
    ) {
        Specification<LessonModel> lessonModelSpecification = SpecificationTemplate.lessonModuleId(moduleId).and(spec);
        Page<LessonModel> allLessonsIntoModule = lessonService.findAllLessonsIntoModule(moduleId, lessonModelSpecification, pageable);

        if(!allLessonsIntoModule.isEmpty()){
            for (LessonModel lesson : allLessonsIntoModule.toList()){
                UUID lessonId = lesson.getLessonId();
                ResponseEntity<LessonModel> oneModule = methodOn(LessonController.class).getOneLesson(lessonId, moduleId);
                lesson.add(linkTo(oneModule).withSelfRel()
                );
            }
        }

        return status(OK).body(allLessonsIntoModule);
    }

    @Monitored
    @GetMapping("/modules/{moduleId}/lessons/{lessonId}")
    public ResponseEntity<LessonModel> getOneLesson(
            @PathVariable("moduleId") UUID moduleId,
            @PathVariable("lessonId") UUID lessonId
    ) {
        LessonModel lessonModel = lessonService.findLessonIntoModule(moduleId, lessonId).get();
        return status(OK).body(lessonModel);
    }

    @Monitored
    @DeleteMapping("/modules/{moduleId}/lessons/{lessonId}")
    public ResponseEntity<Object> deleteModule(
            @PathVariable("moduleId") UUID moduleId,
            @PathVariable("lessonId") UUID lessonId
    ) {
        lessonService.delete(lessonService.findLessonIntoModule(moduleId, lessonId).get());
        return status(OK).body("Lesson deleted successfully");
    }

    @Monitored
    @PutMapping("/modules/{moduleId}/lessons/{lessonId}")
    public ResponseEntity<Object> updateLesson(
            @PathVariable("moduleId") UUID moduleId,
            @PathVariable("lessonId") UUID lessonId,
            @RequestBody @Valid LessonRecordDto lessonRecordDto
    ){
        LessonModel lessonModel = lessonService.findLessonIntoModule(moduleId, lessonId).get();
        LessonModel update = lessonService.update(lessonRecordDto, lessonModel);
        return status(OK).body(update);
    }

}