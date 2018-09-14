package com.niit.BackEnd;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.config.DbConfig;
import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.models.Product;

public class Main {

	public static void main(String[] args) {

		System.out.println("Hello World");

		ApplicationContext context = new AnnotationConfigApplicationContext(DbConfig.class, ProductDaoImpl.class);

		ProductDao productDao = (ProductDao) context.getBean("productDaoImpl");

		Product product = new Product();
		product.setProductName("G7");
		product.setProductDesc("LG G7");
		product.setPrice(59000);
		product.setQuantity(12);
		
		product.setProductName("iPhone X");
		product.setProductDesc("Apple iPhone X");
		product.setPrice(100000);
		product.setQuantity(10);

		productDao.saveProduct(product);

	}

}
