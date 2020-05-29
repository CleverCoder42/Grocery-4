package com.mayer.aop;

import java.util.List;

import org.aspectj.lang.JoinPoint;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AnAspect {
	
	/*
	 * @Before("execution(com.mayer.domain.Item.delete(int)") public void
	 * before(JoinPoint joinPoint){ System.out.println("====BEFORE==="+
	 * joinPoint.getSignature().getDeclaringTypeName()
	 * +", "+joinPoint.getSignature().getName());
	 * 
	 * 
	 * 
	 * }
	 */
}
