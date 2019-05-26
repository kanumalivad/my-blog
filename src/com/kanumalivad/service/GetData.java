package com.kanumalivad.service;

import java.util.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kanumalivad.hibernate.util.HibernateUtil;
import com.kanumalivad.model.User;
import com.kanumalivad.model.Posts;
import com.kanumalivad.model.Comments;

import java.util.ArrayList;
import java.util.List;

public class GetData{
	public Posts getPostById(int pid)
	{
		
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Posts post = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Posts where pid='"+pid+"'");
        
            post = (Posts)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return post;
	}
	public Posts getPostByTitle(String title,int pid)
	{
		
		Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Posts post = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Posts where title='"+title+"' and pid='"+pid+"'");
        
            post = (Posts)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return post;
	}
	public List<Posts> getListOfPosts()
	{
		List<Posts> list = new ArrayList<Posts>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Posts order by date desc 2").list();  
        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
	}
	public List<Comments> getCommentsByPostId(int pid)
	{
		List<Comments> list = new ArrayList<Comments>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Comments where pid='"+pid+"'").list();  
        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
	}
	public List<Comments> getCommentsList()
	{
		List<Comments> list = new ArrayList<Comments>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Comments order by date").list();  
        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
	}
	public List<Posts> getRecentPost()
	{
		List<Posts> list = new ArrayList<Posts>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;        
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from Posts ORDER BY date desc limit 4").list();  
        
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
	}
	
	
}