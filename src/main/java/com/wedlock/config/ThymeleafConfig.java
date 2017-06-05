package com.wedlock.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
//import org.thymeleaf.spring3.SpringTemplateEngine;
//import org.thymeleaf.spring3.view.ThymeleafViewResolver;
//import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

@Configuration 
public class ThymeleafConfig {

	@Bean 
	public InternalResourceViewResolver templateResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setOrder(1);
		
		// Disable cache for testing purposes
		resolver.setCache(false);
		return resolver;
	}
	
//	@Bean 
//	public ServletContextTemplateResolver templateResolver() {
//		ServletContextTemplateResolver resolver = new ServletContextTemplateResolver();
//		resolver.setPrefix("/WEB-INF/templates/");
//		resolver.setSuffix(".html");
//		resolver.setTemplateMode("HTML5");
//		resolver.setOrder(1);
//		
//		// Declare virtual paths
//		resolver.addTemplateAlias("connect/facebookConnect","facebook/connect");
//		resolver.addTemplateAlias("connect/twitterConnect","twitter/connect");
//		resolver.addTemplateAlias("connect/facebookConnected","facebook/connected");
//		resolver.addTemplateAlias("connect/twitterConnected","facebook/connected");
//		
//		// Disable cache for testing purposes
//		resolver.setCacheable(false);
//		return resolver;
//	}
	
//	@Bean 
//	public SpringTemplateEngine templateEngine() {
//		SpringTemplateEngine engine = new SpringTemplateEngine();
//		engine.setTemplateResolver(templateResolver());
//		return engine;
//	}
	
//	@Bean 
//	public ThymeleafViewResolver thymeleafViewResolver() {
//		ThymeleafViewResolver resolver = new ThymeleafViewResolver();
//		resolver.setTemplateEngine(templateEngine());
//		return resolver;
//	}
		
	
}
