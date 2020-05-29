package com.mayer.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.mayer.service.CartService;
import com.mayer.service.CartServiceImpl;
import com.mayer.service.CustomerService;
import com.mayer.service.CustomerServiceImpl;
import com.mayer.service.ProductService;
import com.mayer.service.ProductServiceImpl;
import com.mayer.service.PurchasingService;
import com.mayer.service.PurchasingServiceImpl;
import com.mayer.service.UserService;
import com.mayer.service.UserServiceImpl;



@Configuration
@ComponentScan(basePackages = "com.mayer")
public class AppConfig {

	
		@Bean(name = "dataSource")
		public DataSource dataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setUrl("jdbc:mysql://localhost:3306/grocery3-2020");
			dataSource.setUsername("root");
			dataSource.setPassword("root");

			return dataSource;
		}

		public Properties hibernateProperties() {
			Properties hibernateProperties = new Properties();
			hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQL5InnoDBDialect");
			hibernateProperties.setProperty("hibernate.show_sql", "true");
			hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
			//hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "create");
			return hibernateProperties;
		}
		@Bean(name = "entityManagerFactory")
		@Primary
		public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
			LocalContainerEntityManagerFactoryBean entityManagerFactory = new LocalContainerEntityManagerFactoryBean();
			entityManagerFactory.setDataSource(dataSource());
			entityManagerFactory.setPackagesToScan("com.mayer.domain");
			entityManagerFactory.setJpaProperties(hibernateProperties());
			entityManagerFactory.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
			return entityManagerFactory;

		}
		@Bean
		public ViewResolver viewResolver() {
			InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
			viewResolver.setSuffix(".jsp");
			viewResolver.setPrefix("/WEB-INF/view/");
			viewResolver.setViewClass(JstlView.class);
			return viewResolver;
		}
		
		   @Bean
		   public MessageSource messageSource() {
		      ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
		      messageSource.setBasename("/WEB-INF/messages/messages");
		      return messageSource;
		   
		   }
		
		 @Bean UserService userServise() { return new UserServiceImpl(); };
		

		 @Bean ProductService productService() {
			 return new ProductServiceImpl();
		 }
	
		 
		 
		 @Bean CustomerService customerServise() {
			 return new CustomerServiceImpl();
		 }
		 
		 @Bean CartService cartServise() {
			 return new CartServiceImpl();
		 }
		 
		 @Bean
		 PurchasingService purchasingService() {
			 return new PurchasingServiceImpl();
		 }
		 
		 
		
		 @Bean
		   public JdbcTemplate jdbcTemplate(){		
		      JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource());
		      return jdbcTemplate;
		   	
		   }

	}
