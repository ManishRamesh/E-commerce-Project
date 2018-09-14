package com.niit.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Payment;

@Repository
@Transactional
public class PaymentDaoImpl implements PaymentDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void PaymentDetails(Payment payment) {
		Session session = sessionFactory.getCurrentSession();
		session.save(payment);

	}

}
