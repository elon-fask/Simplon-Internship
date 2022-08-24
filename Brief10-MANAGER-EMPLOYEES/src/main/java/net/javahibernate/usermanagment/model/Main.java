package net.javahibernate.usermanagment.model;

import java.time.LocalDateTime;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

public class Main {
	 public static void main(String[] args) {
	        // From Java 10, you can use var instead of declaring the type explicitly
	        ClassLoaderTemplateResolver resolver = new ClassLoaderTemplateResolver();
	        resolver.setTemplateMode(TemplateMode.HTML);
	        resolver.setCharacterEncoding("UTF-8");
	        resolver.setPrefix("/templates/");
	        resolver.setSuffix(".html");

	        Context context = new Context();
	        context.setVariable("name", "Najib");
	        context.setVariable("date", LocalDateTime.now().toString());

	        TemplateEngine templateEngine = new TemplateEngine();
	        templateEngine.setTemplateResolver(resolver);

	        String result = templateEngine.process("index", context);
	        System.out.println(result);
	 }

}
