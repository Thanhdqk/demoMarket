package com.poly.asm.dao;


import java.util.List;


import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.poly.asm.entity.*;
import com.poly.asm.util.*;

public class UserDao1{
	public User checkLogin(String id, String password) { // Tìm user và password
		EntityManager em = JpaUtil.getEntityManager();
		
		String sql = "Select u from User u where u.username = :username and u.password = :password";
		TypedQuery<User> query = em.createQuery(sql, User.class);
		query.setParameter("username", id);
		query.setParameter("password", password);
		
		return query.getSingleResult();
	}
	
	public User findByID(String id) { // tìm user
		EntityManager em = JpaUtil.getEntityManager();	
		String sql = "Select u from User u where u.username = :username";
		TypedQuery<User> query = em.createQuery(sql, User.class);
		query.setParameter("username", id);
		
		List<User> resultList = query.getResultList();
	    if (!resultList.isEmpty()) {
	        return resultList.get(0); // Assuming username is unique
	    } else {
	        return null; // or throw an exception or handle as appropriate
	    }
	}
	
	public void create(User user) { // Thêm user
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o transaction
		EntityTransaction tran = em.getTransaction();

		try {
			//báº¯t Ä‘áº§u transaction
			tran.begin();
			// lÆ°u user vÃ o CSDL
			em.persist(user);
			//Cháº¥p nháº­t káº¿t quáº£ thao tÃ¡c
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			//Huá»· thao tÃ¡c khi cÃ³ exception
			tran.rollback();
			System.out.println("Lá»—i trÃ¹ng ID");
			throw e;
		} finally {
			em.close();
		}

	}

	public void update(User user) { // Cập nhật user
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o transaction
		EntityTransaction tran = em.getTransaction();
		
		try {
			//báº¯t Ä‘áº§u transaction
			tran.begin();
			// update user vÃ o CSDL
			em.merge(user);
			//Cháº¥p nháº­t káº¿t quáº£ thao tÃ¡c
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			//Huá»· thao tÃ¡c khi cÃ³ exception
			tran.rollback();
			throw e;
		} finally {
			em.close();
		}

	}
	
	public void deleteAll() {// Xóa toàn bộ
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o transaction
		EntityTransaction tran = em.getTransaction();
		//Táº¡o cÃ¢u truy váº¥n
		String jqpl = "Delete from User o";
		//Táº¡o Ä‘á»‘i tÆ°á»£ng truy váº¥n
		em.createQuery(jqpl).executeUpdate();
	}
	
	public void delete(String id) throws Exception{// Delete theo id
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o transaction
		EntityTransaction tran = em.getTransaction();

		try {
			//báº¯t Ä‘áº§u transaction
			tran.begin();
			// update user vÃ o CSDL
			User user = em.find(User.class, id);//Tìm id theo class User
			//náº¿u tÃ¬m tháº¥y thÃ¬ xoÃ¡ | khÃ´ng thÃ¬ khÃ´ng tá»“n táº¡i
			if(user != null) {
				em.remove(user);
			}else {
				throw new Exception("This user does not exist!");
			}
			//Cháº¥p nháº­n káº¿t quáº£ thao tÃ¡c
			tran.commit();
		} catch (Exception e) {
			e.printStackTrace();
			//Huá»· thao tÃ¡c khi cÃ³ exception
			tran.rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	
	public List<User> findAll(){
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Láº¥y cÃ¢u lá»‡nh findAll cÃ³ sáºµn lÃºc táº¡o lá»›p User
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
		//Tráº£ vá»� káº¿t quáº£ truy váº¥n
		return query.getResultList();
		
	}
	
	public List<User> findByRole(boolean role){// tìm theo vai trò
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o cÃ¢u lá»‡nh truy váº¥n
		String jqpl = "Select o from User o where o.admin = :role";
		//Táº¡o Ä‘á»‘i tÆ°á»£ng truy váº¥n
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		query.setParameter("role", role);
		//Tráº£ vá»� káº¿t quáº£ truy váº¥n
		return query.getResultList();
		
	}
	
	public List<User> findByKeyWord(String keyword){
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o cÃ¢u truy váº¥n
		String jqpl = "Select o from User o where o.fullName like :keyword";
		//Táº¡o Ä‘á»‘i tÆ°á»£ng truy váº¥n
		TypedQuery<User> query = em.createQuery(jqpl, User.class);
		query.setParameter("keyword", "%"+keyword+"%");
		//Tráº£ vá»� káº¿t quáº£ truy váº¥n
		return query.getResultList();
	}
	
	public User findOne(String id, String password){
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o cÃ¢u truy váº¥n
		String jqpl = "Select o from User o where o.username = :username and o.password = :password";
		//Táº¡o Ä‘á»‘i tÆ°á»£ng truy váº¥n
		TypedQuery<User> query = em.createQuery(jqpl,User.class);
		
		query.setParameter("username", id);
		query.setParameter("password", password);
		//Tráº£ vá»� káº¿t quáº£ truy váº¥n
		return query.getSingleResult();
		
	}
	
//	public User findByID(String id){
//		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
//		EntityManager em = JpaUtils.getEntityManager();
//		//Táº¡o cÃ¢u truy váº¥n
//		String jqpl = "Select o from User o where o.id = :id";
//		//Táº¡o Ä‘á»‘i tÆ°á»£ng truy váº¥n
//		TypedQuery<User> query = em.createQuery(jqpl,User.class);
//		
//		query.setParameter("id", id);
//
//		//Tráº£ vá»� káº¿t quáº£ truy váº¥n
//		return query.getSingleResult();
//		
//	}
}
