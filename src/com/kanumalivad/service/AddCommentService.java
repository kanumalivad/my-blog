package com.kanumalivad.service;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kanumalivad.hibernate.util.HibernateUtil;
import com.kanumalivad.model.Comments;;

public class AddCommentService{
	public boolean register(Comments c)
	{
		 Session session = HibernateUtil.openSession();
		 
		 Transaction tx = null;	
		 try {
			 tx = session.getTransaction();
			 tx.begin();
			 session.saveOrUpdate(c);		
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
}