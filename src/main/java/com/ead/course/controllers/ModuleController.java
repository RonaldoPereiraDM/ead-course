package com.ead.course.controllers;

import com.ead.course.dtos.ModuleRecordDto;
import com.ead.course.models.ModuleModel;
import com.ead.course.service.CourseService;
import com.ead.course.service.ModuleService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

import static org.springframework.http.HttpStatus.OK;
import static org.springframework.http.ResponseEntity.status;

@RestController
public class ModuleController {

    private final ModuleService moduleService;
    private final CourseService courseService;

    public ModuleController(
            ModuleService moduleService,
            CourseService courseService
    ) {
        this.moduleService = moduleService;
        this.courseService = courseService;
    }

    @PostMapping("/courses/{courseId}/modules")
    public ResponseEntity<Object> saveModule(
            @PathVariable("courseId") UUID courseId,
            @RequestBody @Valid ModuleRecordDto moduleRecordDto
    ){
        ModuleModel saved = moduleService.save(moduleRecordDto, courseService.findById(courseId).get());
        return status(OK).body(saved);
    }

}