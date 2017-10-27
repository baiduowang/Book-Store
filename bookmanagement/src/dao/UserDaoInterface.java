package dao;

import java.util.List;

import entity.User;

public interface UserDaoInterface {
	public  int add(User user);//增加数据
	public  void del(String id);//删除数据
	public  int update(User user);//修改数据
	public  List<User> show(String id);//超级管理员显示数据
	public  List<User> findByAll(String level);//查询所有
	public  List<User> findAll();
	public List<User> findAdmin(String key);
}
