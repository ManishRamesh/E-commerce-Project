package com.niit.config;

import java.util.Properties;


import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.models.Authorities;
import com.niit.models.BillingAddress;
import com.niit.models.CartItem;
import com.niit.models.Category;
import com.niit.models.Customer;
import com.niit.models.CustomerOrder;
import com.niit.models.Product;
import com.niit.models.ShippingAddress;
import com.niit.models.User;

@Configuration
@EnableTransactionManagement

public class DbConfig {

	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		System.out.println("Entering Database");
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/product");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		System.out.println("DataSource bean " + dataSource);
		return dataSource;
	}

	@Bean
	public SessionFactory sessionFactory() {
		System.out.println("Entering session Factory creation method");
		LocalSessionFactoryBuilder lsf = new LocalSessionFactoryBuilder(getDataSource());
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
        hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
        hibernateProperties.setProperty("hibernate.show_sql", "true");
		lsf.addProperties(hibernateProperties);
		Class classes[]=new Class[] {Product.class,Category.class,Authorities.class,BillingAddress.class,ShippingAddress.class,User.class,Customer.class,CartItem.class,CustomerOrder.class};
		System.out.println("SESSION FACTORY BEAN "+lsf);
             
        return lsf.addAnnotatedClasses(classes).buildSessionFactory();

	}
	
	@Bean
	public HibernateTransactionManager hibTransManagement() {
		return new HibernateTransactionManager(sessionFactory());
	}
	
	
}
