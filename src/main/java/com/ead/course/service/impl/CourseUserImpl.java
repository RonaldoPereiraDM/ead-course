package com.ead.course.service.impl;

import com.ead.course.repository.CourseUserRepository;
import com.ead.course.service.CourseUserService;
import org.springframework.stereotype.Service;

@Service
public class CourseUserImpl implements CourseUserService {

    private final CourseUserRepository courseUserRepository;

    public CourseUserImpl(CourseUserRepository courseUserRepository) {
        this.courseUserRepository = courseUserRepository;
    }

}