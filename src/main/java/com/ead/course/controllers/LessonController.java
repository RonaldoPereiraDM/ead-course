package com.ead.course.controllers;

import com.ead.course.dtos.LessonRecordDto;
import com.ead.course.models.LessonModel;
import com.ead.course.service.LessonService;
import com.ead.course.service.ModuleService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

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

    @PostMapping("/modules/{moduleId}/lessons")
    public ResponseEntity<Object> saveLesson(
            @PathVariable(value = "moduleId") UUID moduleId,
            @RequestBody @Valid LessonRecordDto lessonRecordDto)
    {
        LessonModel lessonModel = lessonService.save(lessonRecordDto, moduleService.findById(moduleId).get());
        return ResponseEntity.status(HttpStatus.CREATED).body(lessonModel);
    }

}