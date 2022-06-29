package com.springmvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CheckEmailValidator implements ConstraintValidator<CheckEmail, String> {

    private String emailPostfix;

    @Override
    public void initialize(CheckEmail constraintAnnotation) {
        emailPostfix = constraintAnnotation.value();
    }

    @Override
    public boolean isValid(String enteredValue, ConstraintValidatorContext constraintValidatorContext) {
        return enteredValue.endsWith(emailPostfix);
    }
}
