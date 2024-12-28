package com.ead.course.service;

import com.ead.course.dtos.ModuleRecordDto;
import com.ead.course.models.CourseModel;
import com.ead.course.models.ModuleModel;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;

import java.util.Optional;

public interface ModuleService {

    void delete(ModuleModel moduleModel);

    ModuleModel save(@Valid ModuleRecordDto moduleRecordDto, CourseModel courseModel);
}
