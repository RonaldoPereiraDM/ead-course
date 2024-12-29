package com.ead.course.exceptions;

import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.util.HashMap;
import java.util.Map;

import static org.springframework.http.HttpStatus.BAD_REQUEST;
import static org.springframework.http.HttpStatus.NOT_FOUND;
import static org.springframework.http.ResponseEntity.status;

@ControllerAdvice
public class GloblalExceptionHandler {

    @ExceptionHandler(NotFoundException.class)
    public ResponseEntity<ErrorRecordResponse> handlerNotFoundException(NotFoundException ex){
        var errorResponse = new ErrorRecordResponse(NOT_FOUND.value(), ex.getMessage(), null);
        return status(NOT_FOUND).body(errorResponse);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<ErrorRecordResponse> handlerMethodArgumentNotValidException(MethodArgumentNotValidException ex){
        Map<String,String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach(error ->{
            String fieldName = ((FieldError) error).getField();
            String errorMessage = error.getDefaultMessage();
            errors.put(fieldName, errorMessage);
        });

        var errorResponse = new ErrorRecordResponse(
                BAD_REQUEST.value(),
                "Error: Validation failed",
                errors
        );
        return status(BAD_REQUEST).body(errorResponse);
    }

    //Tratar erros 400 para enums
    @ExceptionHandler(HttpMessageNotReadableException.class)
    public ResponseEntity<ErrorRecordResponse> handlerHttpMessageNotReadableException(HttpMessageNotReadableException ex){
        Map<String,String> errors = new HashMap<>();
        if(ex.getCause() instanceof InvalidFormatException){
            InvalidFormatException ifx = (InvalidFormatException) ex.getCause();
            if (ifx.getTargetType() != null && ifx.getTargetType().isEnum()){
                String fieldName = ifx.getPath().get(ifx.getPath().size()-1).getFieldName();
                String errorMessage = ex.getMessage();
                errors.put(fieldName, errorMessage);
            }
        }
        var errorResponse = new ErrorRecordResponse(BAD_REQUEST.value(), "Error: Validation failed", errors);
        return status(BAD_REQUEST).body(errorResponse);
    }

}