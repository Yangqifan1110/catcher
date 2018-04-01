package com.oracle.service;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.oracle.dao.CusDao;
import com.oracle.vo.Comment;
import com.oracle.vo.Customer;
import com.oracle.vo.Goods;
import com.oracle.vo.Photographer;

//为什么collections不是抽象类呢？
public abstract class CusService {
	
	private static SqlSessionFactory factory;
	private static SqlSession session;
	private static CusDao dao;
	
	static {
		try {
			factory=new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("configuration.xml"));
			//唯一的session？
			//session=factory.openSession();
			//dao=session.getMapper(CusDao.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
		finally{
			if(session!=null)
				session.close();
		}
	}
	
	public static void register(Customer cus)
	{
		//session.getConnection();
		session=factory.openSession();
		dao=session.getMapper(CusDao.class);
		dao.register(cus);
		session.commit();
		session.close();
	}
	
	public static Customer login(String username,String password)
	{
		session=factory.openSession();
		dao=session.getMapper(CusDao.class);
		Customer cus=dao.login(username, password);
		session.commit();
		session.close();
		return cus;
	}
	
	public static Photographer check(int gos_id)
	{
		session=factory.openSession();
		dao=session.getMapper(CusDao.class);
		Photographer pho=dao.check(gos_id);
		session.commit();
		session.close();
		return pho;
		
	}
	
	public static Goods checkGoods(int gos_id)
	{
		session=factory.openSession();
		dao=session.getMapper(CusDao.class);
		Goods good=dao.checkGoods(gos_id);
		session.commit();
		session.close();
		return good;
		
	}
	
//	public static void writeComment(Comment cot)
//	{
//
//		session=factory.openSession();
//		dao=session.getMapper(CusDao.class);
//		dao.writeComment(cot);
//		session.commit();
//		session.close();
//	}
	
}
