package com.ead.course.configs.logs;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import java.util.UUID;

public class LoggingInterceptor implements HandlerInterceptor {

    /*APENAS UM TESTE PARA BRINCAR COM O HANDLER INTERCEPTOR
    Este código é um interceptor em Java que monitora o desempenho de requisições HTTP em uma aplicação Spring.
    Ele registra o início da requisição com um ID único (correlationId), marca o tempo inicial, e depois
    registra quando a requisição é finalizada junto com seu status HTTP. Por fim, calcula e registra o tempo
    total que a requisição levou para ser processada. Todos esses registros (logs) são exibidos em azul no
    console, facilitando o monitoramento do fluxo e performance das requisições na aplicação.
    */

    private Logger logger = LoggerFactory.getLogger(PerformanceMethodAspect.class);

    private long start;
    private long requisitionTime;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        start = System.currentTimeMillis();
        MDC.put("correlationId", UUID.randomUUID().toString()); //O correlationId permite rastrear uma requisição específica através dos logs. EX: [nio-8087-exec-2]
        logger.info("\u001B[34m" + "Iniciando processada: {} {}", request.getMethod(), request.getRequestURI());
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        logger.info("\u001B[34m" + "Requisição Processada - httpStatus: {}", HttpStatus.valueOf(response.getStatus()));
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        requisitionTime = System.currentTimeMillis() - start;
        logger.info("\u001B[34m" + "Requisição Finalizada. Tempo da requisição: {} ms", requisitionTime);
    }
}
