package com.helloWorld.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.helloWorld.model.User;

@Repository
@Transactional
public class UserRepository {
	@Autowired
	SessionFactory session;

	public void save(User user) {
		session.getCurrentSession().saveOrUpdate(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> list() {
		return session.getCurrentSession().createQuery("from User").list();
	}
}
