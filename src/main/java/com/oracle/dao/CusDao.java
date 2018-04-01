package com.oracle.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.oracle.vo.Comment;
import com.oracle.vo.Customer;
import com.oracle.vo.Goods;
import com.oracle.vo.Photographer;

public interface CusDao {
	
	public void register(Customer Customer);
	
	public Customer login(@Param("username")String username,@Param("password")String password);
	
	public Photographer check(@Param("gos_id")int gos_id);
	
	public List<Goods> selectForGoodsOfPhotographer(@Param("pho_id")int pho_id);
	
	public Goods checkGoods(@Param("gos_id")int gos_id);
	
//	public void writeComment(Comment comment);
	
}
