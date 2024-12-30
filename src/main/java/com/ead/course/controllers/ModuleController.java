package com.ead.course.controllers;

import com.ead.course.configs.annotations.Monitored;
import com.ead.course.dtos.ModuleRecordDto;
import com.ead.course.models.CourseModel;
import com.ead.course.models.ModuleModel;
import com.ead.course.service.CourseService;
import com.ead.course.service.ModuleService;
import com.ead.course.specitication.SpecificationTemplate;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;
import static org.springframework.http.HttpStatus.CREATED;
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

    @Monitored
    @PostMapping("/courses/{courseId}/modules")
    public ResponseEntity<Object> saveModule(
            @PathVariable("courseId") UUID courseId,
            @RequestBody @Valid ModuleRecordDto moduleRecordDto
    ) {
        ModuleModel saved = moduleService.save(moduleRecordDto, courseService.findById(courseId).get());
        return status(CREATED).body(saved);
    }

    @Monitored
    @GetMapping("/courses/{courseId}/modules")
    public ResponseEntity<Page<ModuleModel>> getAllModules(
            @PathVariable("courseId") UUID courseId,
            SpecificationTemplate.ModuleSpec spec,
            Pageable pageable
    ) {
        Specification<ModuleModel> moduleModelSpecification = SpecificationTemplate.moduleCourseId(courseId).and(spec);
        Page<ModuleModel> courseModuleModelPage = moduleService.findAllModulesIntoCourse(moduleModelSpecification, pageable);

        if(!courseModuleModelPage.isEmpty()){
            for (ModuleModel module : courseModuleModelPage.toList()){
                UUID moduleId = module.getModuleId();
                ResponseEntity<ModuleModel> oneModule = methodOn(ModuleController.class).getOneModule(courseId, moduleId);
                module.add(linkTo(oneModule).withSelfRel()
                );
            }
        }

        return status(OK).body(courseModuleModelPage);
    }

    @Monitored
    @GetMapping("/courses/{courseId}/modules/{moduleId}")
    public ResponseEntity<ModuleModel> getOneModule(
            @PathVariable("courseId") UUID courseId,
            @PathVariable("moduleId") UUID moduleId
    ) {
        ModuleModel moduleModelFinded = moduleService.findModuleIntoCourse(courseId, moduleId).get();
        return status(OK).body(moduleModelFinded);
    }

    @Monitored
    @DeleteMapping("/courses/{courseId}/modules/{moduleId}")
    public ResponseEntity<Object> deleteModule(
            @PathVariable("courseId") UUID courseId,
            @PathVariable("moduleId") UUID moduleId
    ) {
        moduleService.delete(moduleService.findModuleIntoCourse(courseId, moduleId).get());
        return status(OK).body("Course deleted successfully.");
    }

    @Monitored
    @PutMapping("/courses/{courseId}/modules/{moduleId}")
    public ResponseEntity<Object> updateModule(
            @PathVariable("courseId") UUID courseId,
            @PathVariable("moduleId") UUID moduleId,
            @RequestBody @Valid ModuleRecordDto moduleRecordDto
    ) {
        ModuleModel updated = moduleService.update(moduleRecordDto, moduleService.findModuleIntoCourse(courseId, moduleId).get());

        return status(OK).body(updated);
    }

}