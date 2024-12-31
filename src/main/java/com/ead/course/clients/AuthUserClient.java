package com.ead.course.clients;

import com.ead.course.configs.annotations.Monitored;
import com.ead.course.dtos.ResponsePageDto;
import com.ead.course.dtos.UserRecordDto;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestClientException;

import java.util.UUID;

@Component
public class AuthUserClient {

    private Logger logger = LogManager.getLogger(AuthUserClient.class);

    @Value("${ead.api.url.authuser}")
    private String baseUrlCourse;

    private final RestClient restClient;

    public AuthUserClient(RestClient.Builder restClientBuilder) {
        this.restClient = restClientBuilder.build();
    }

    @Monitored
    public Page<UserRecordDto> getAllUsersByCourse(UUID courseId, Pageable pageable) {

        String pathParamUserId = "/users?courseId=" + courseId.toString();
        String pageNumber = "&page=" + pageable.getPageNumber();
        String pageSize = "&size=" + pageable.getPageSize();
        String sort = "&sort=" + pageable.getSort().toString().replaceAll(": ", ",");

        String url = baseUrlCourse + pathParamUserId + pageNumber + pageSize + sort;

        logger.info("Request RestClient to retrieve users by courseId: {}", courseId);
        logger.debug("Request URL: {}", url);

        try {
            return restClient.get()
                    .uri(url)
                    .retrieve()
                    .body(new ParameterizedTypeReference<ResponsePageDto<UserRecordDto>>() {});

        } catch (RestClientException e) {
            logger.error("Error Request RestClient with cause: {}", e.getMessage());
            throw new RuntimeException("Error Request RestClient", e);
        }
    }

}