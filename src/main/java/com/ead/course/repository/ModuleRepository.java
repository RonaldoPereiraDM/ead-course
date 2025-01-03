package com.ead.course.repository;

import com.ead.course.models.ModuleModel;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface ModuleRepository extends JpaRepository<ModuleModel, UUID>, JpaSpecificationExecutor<ModuleModel> {

    @EntityGraph(attributePaths = {"course"})
    ModuleModel findByTitle(String title);

    //@Modifying//quando precisar modificar algo na base dados
    @Query(value = """
            SELECT * FROM tb_modules 
            WHERE course_course_id = :courseId
            """, nativeQuery = true)
    List<ModuleModel> findAllModulesIntoCourse(@Param("courseId") UUID courseId);

    @Query(value = """
            SELECT * FROM tb_modules 
            WHERE course_course_id = :courseId
            AND module_id = :moduleId
            """, nativeQuery = true)
    Optional<ModuleModel> findModulesIntoCourse(@Param("courseId") UUID courseId, @Param("moduleId") UUID moduleId);
}