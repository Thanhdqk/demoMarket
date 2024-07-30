package com.poly.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.poly.asm.entity.User;
import com.poly.asm.util.JpaUtil;

public class UserDao extends ConnectDao {

	public User checkLogin(String username, String password) {
		String sql = "SELECT o FROM User o WHERE o.username = ?0 AND o.password = ?1";
		TypedQuery<User> query = entityManager.createQuery(sql, User.class);
    	query.setParameter(0, username);
    	query.setParameter(1, password);
		List<User> result = query.getResultList();
		if (result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}

	public List<User> findAll() {
		String sql = "SELECT o FROM User o";
		TypedQuery<User> query = entityManager.createQuery(sql, User.class);
		return query.getResultList();
	}

	public User findById(int id) {
		String sql = "SELECT o FROM User o WHERE o.id = ?0";
		TypedQuery<User> query = entityManager.createQuery(sql, User.class);
    	query.setParameter(0, id);
		List<User> result = query.getResultList();
		if (result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}
	
	public User findByName(String username) {
		String sql = "SELECT o FROM User o WHERE o.username = :username";
		TypedQuery<User> query = entityManager.createQuery(sql, User.class);
    	query.setParameter("username", username);
		List<User> result = query.getResultList();
		if (result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}
	public User findByIUsername(String username) {
		String sql = "SELECT o FROM User o WHERE o.username = :username";
		TypedQuery<User> query = entityManager.createQuery(sql, User.class);
    	query.setParameter("username", username);
    	return query.getSingleResult();
	}

	public boolean update(User user) {
		try {
			entityManager.getTransaction().begin();
			entityManager.merge(user);
			entityManager.getTransaction().commit();
			System.out.println("Update succeed");
			return true;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Cannot update entity");
			e.printStackTrace();
			return false;
		}
	}

	public boolean delete(int id) {
		User user = findById(id);
		try {
			entityManager.getTransaction().begin();
			entityManager.remove(user);
			entityManager.getTransaction().commit();
			System.out.println("Delete succeed");
			return true;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Cannot delete entity");
			e.printStackTrace();
			return false;
		}
	}

	public void delete1(String username) throws Exception{// Delete theo id
		//Táº¡o EntityManager Ä‘á»ƒ báº¯t Ä‘áº§u lÃ m viá»‡c vá»›i CSDL
		EntityManager em = JpaUtil.getEntityManager();
		//Táº¡o transaction
		EntityTransaction tran = em.getTransaction();

		try {
			//báº¯t Ä‘áº§u transaction
			tran.begin();
			// update user vÃ o CSDL
			User user = em.find(User.class, username);// Tìm và xóa khóa chính 
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
	
	public void deleteByUsername(String username) throws Exception {
	    EntityManager em = JpaUtil.getEntityManager();
	    EntityTransaction tran = em.getTransaction();

	    try {
	        tran.begin();
	        User user = em.createQuery("SELECT u FROM User u WHERE u.username = :username", User.class)
	                     .setParameter("username", username)
	                     .getSingleResult();
	        if (user != null) {
	            em.remove(user);
	        } else {
	            throw new Exception("This user does not exist!");
	        }
	        tran.commit();
	    } catch (Exception e) {
	        e.printStackTrace();
	        tran.rollback();
	        throw e;
	    } finally {
	        em.close();
	    }
	}

	
	public boolean insert(User user) {
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(user);
			entityManager.getTransaction().commit();
			System.out.println("Create succeed");
			return true;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("Cannot insert entity");
			e.printStackTrace();
			return false;
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
}
