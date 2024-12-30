package com.ead.course.configs.logs;

import jakarta.annotation.PostConstruct;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class PerformanceMethodAspect {

    private Logger logger = LoggerFactory.getLogger(PerformanceMethodAspect.class);

    @Around("@annotation(com.ead.authuser.configs.annotations.Monitored)")
    public Object measureExecutionTime(ProceedingJoinPoint point) throws Throwable {

        String className = point.getTarget().getClass().getSimpleName(); //nome da classe
        String methodName = point.getSignature().getName(); //nome do método

        long start = System.currentTimeMillis();
        Object result = point.proceed(); // Executa o método original
        long time = System.currentTimeMillis() - start;

        logger.info("\u001B[34m" + "Classe: {} - Método: {} - Tempo de execução: {}ms",
                className,
                methodName,
                time);

        return result;
    }

    @PostConstruct
    public void init() {
        logger.info("\u001B[34m" + "PerformanceMethodAspect loaded!!!!!!");
    }

}
