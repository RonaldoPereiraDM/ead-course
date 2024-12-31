package com.ead.course.controllers;

import com.ead.course.clients.AuthUserClient;
import com.ead.course.configs.annotations.Monitored;
import com.ead.course.dtos.UserRecordDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

import static org.springframework.http.HttpStatus.OK;
import static org.springframework.http.ResponseEntity.status;

@RestController
public class CourseUserController {

    private final AuthUserClient userClient;

    public CourseUserController(AuthUserClient userClient) {
        this.userClient = userClient;
    }

    @Monitored
    @GetMapping("courses/{courseId}/users")
    public ResponseEntity<Page<UserRecordDto>> getAllUsersByCourse(
            @PageableDefault(sort = "courseId", direction = Sort.Direction.ASC) Pageable peageble,
            @PathVariable("courseId") UUID courseId
    ) {
        Page<UserRecordDto> allCoursesByUser = userClient.getAllUsersByCourse(courseId, peageble);
        return status(OK).body(allCoursesByUser);
    }

}