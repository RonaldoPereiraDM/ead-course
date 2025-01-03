package com.ead.course.service.impl;

import com.ead.course.configs.annotations.Monitored;
import com.ead.course.dtos.LessonRecordDto;
import com.ead.course.exceptions.NotFoundException;
import com.ead.course.models.LessonModel;
import com.ead.course.models.ModuleModel;
import com.ead.course.repository.LessonRepository;
import com.ead.course.service.LessonService;
import org.springframework.beans.BeanUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class LessonServiceImpl implements LessonService {

    private final LessonRepository lessonRepository;

    public LessonServiceImpl(LessonRepository lessonRepository) {
        this.lessonRepository = lessonRepository;
    }

    @Monitored
    @Override
    public LessonModel save(LessonRecordDto lessonRecordDto, ModuleModel moduleModel) {
        var lessonModel = new LessonModel();
        BeanUtils.copyProperties(lessonRecordDto, lessonModel);
        lessonModel.setCreationDate(LocalDateTime.now(ZoneId.of("UTC")));
        lessonModel.setModule(moduleModel);
        return lessonRepository.save(lessonModel);
    }

    @Monitored
    @Override
    public List<LessonModel> findAllLessonsIntoModule(UUID moduleId) {
        return lessonRepository.findAllLessonsIntoModule(moduleId);
    }

    @Monitored
    @Override
    public Optional<LessonModel> findLessonIntoModule(UUID moduleId, UUID lessonId) {
        Optional<LessonModel> lessonIntoModule = lessonRepository.findLessonIntoModule(moduleId, lessonId);
        if(lessonIntoModule.isEmpty()){
            throw new NotFoundException("Error: Lesson not found for this Module!");
        }
        return lessonIntoModule;
    }

    @Monitored
    @Override
    public void delete(LessonModel lessonModel) {
        lessonRepository.delete(lessonModel);
    }

    @Monitored
    @Override
    public LessonModel update(LessonRecordDto lessonRecordDto, LessonModel lessonModel) {
        BeanUtils.copyProperties(lessonRecordDto, lessonModel);
        return lessonRepository.save(lessonModel);
    }

    @Monitored
    @Override
    public Page<LessonModel> findAllLessonsIntoModule(UUID moduleId, Specification<LessonModel> spec, Pageable pageable) {
        return lessonRepository.findAll(spec, pageable);
    }

}