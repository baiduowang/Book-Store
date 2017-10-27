package dao;

import java.util.List;

import entity.User;

public interface UserDaoInterface {
	public  int add(User user);//��������
	public  void del(String id);//ɾ������
	public  int update(User user);//�޸�����
	public  List<User> show(String id);//��������Ա��ʾ����
	public  List<User> findByAll(String level);//��ѯ����
	public  List<User> findAll();
	public List<User> findAdmin(String key);
}
