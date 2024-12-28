package com.ead.course.service;

import com.ead.course.dtos.CourseRecordDto;
import com.ead.course.models.CourseModel;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;

public interface CourseService {

    void delete(CourseModel courseModel);

    CourseModel save(@Valid CourseRecordDto courseRecordDto);

    boolean existsByName(@NotBlank String name);
}
