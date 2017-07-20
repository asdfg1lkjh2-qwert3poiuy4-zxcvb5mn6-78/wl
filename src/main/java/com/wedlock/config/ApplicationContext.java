package com.wedlock.config;

import java.util.List;
import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
@Configuration
@ComponentScan(basePackages = { "com.wedlock" })
@EnableWebMvc
// @Import({DataConfig.class, ThymeleafConfig.class, SocialConfig.class,
// SecurityConfig.class})
@Import({ DataConfig.class })
@ImportResource({ "classpath:trace-context.xml" })
@PropertySource("classpath:spring.properties")
public class ApplicationContext extends WebMvcConfigurerAdapter {

	// Maps resources path to webapp/resources
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	/*
	 @Override
	    public void configureMessageConverters(List<HttpMessageConverter<?>> converters){

	        converters.add(new MappingJackson2HttpMessageConverter());
	        super.configureMessageConverters(converters);
	    }
*/
	// Provides internationalization of messages
	@Bean
	public ResourceBundleMessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasename("messages");
		return messageSource;
	}

	// Only needed if we are using @Value and ${...} when referencing properties
	// Otherwise @PropertySource is enough by itself
	@Bean
	public static PropertySourcesPlaceholderConfigurer properties() {
		PropertySourcesPlaceholderConfigurer propertySources = new PropertySourcesPlaceholderConfigurer();
		Resource[] resources = new ClassPathResource[] { new ClassPathResource("spring.properties") };
		propertySources.setLocations(resources);
		propertySources.setIgnoreUnresolvablePlaceholders(true);
		return propertySources;
	}

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver getCommonsMultipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(30971520);
		multipartResolver.setMaxInMemorySize(1048576);
		return multipartResolver;
	}
	
	@Bean
    public JavaMailSender getMailSender(){
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
         
        //Using gmail
        mailSender.setHost("smtpout.asia.secureserver.net");
        mailSender.setPort(25);
        mailSender.setUsername("monalisa@wedlock.online");
        mailSender.setPassword("Munu@1234");
         
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.starttls.enable", "true");
        javaMailProperties.put("mail.smtp.auth", "true");
        javaMailProperties.put("mail.transport.protocol", "smtp");
        javaMailProperties.put("mail.debug", "true");//Prints out everything on screen
         
        mailSender.setJavaMailProperties(javaMailProperties);
        return mailSender;
    }

}
