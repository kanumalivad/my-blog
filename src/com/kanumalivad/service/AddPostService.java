package com.kanumalivad.service;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kanumalivad.hibernate.util.HibernateUtil;
import com.kanumalivad.model.Posts;

public class AddPostService{
	public boolean register(Posts post)
	{
		 Session session = HibernateUtil.openSession();
		 
		 Transaction tx = null;	
		 try {
			 tx = session.getTransaction();
			 tx.begin();
			 session.saveOrUpdate(post);		
			 tx.commit();
		 } catch (Exception e) {
			 if (tx != null) {
				 tx.rollback();
			 }
			 e.printStackTrace();
		 } finally {
			 session.close();
		 }	
		 return true;
	}
	public void updateImagePath()
	{
 Session session = HibernateUtil.openSession();
		 
		 Transaction tx = null;	
		 try {
			 tx = session.getTransaction();
			 tx.begin();
			 String lastID=session.createQuery("SELECT LAST_INSERT_ID()").uniqueResult().toString();
			 System.out.println(lastID);
			 tx.commit();
		 } catch (Exception e) {
			 if (tx != null) {
				 tx.rollback();
			 }
			 e.printStackTrace();
		 } finally {
			 session.close();
		 }
	}
}