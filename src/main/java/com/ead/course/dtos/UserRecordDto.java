package com.ead.course.dtos;

import com.ead.course.enums.UserStatus;
import com.ead.course.enums.UserType;

public record UserRecordDto(
        String userId,
        String email,
        String fullName,
        String username,
        UserStatus userStatus,
        UserType userType,
        String phoneNumber,
        String imageUrl
) { }