package com.toolJavaBean;

import java.util.ArrayList;
import java.util.List;

import com.valJavaBean.User;

public class MyTool {

	/**
	 * ��ȡ�����û�
	 * @return
	 */
	public static  List<User> getAllUsers(){
		 List<User> users=new ArrayList();   
	     for(int i=0;i<10;i++   )
	     {
	             User u1=new User();
	             u1.setName("��"+(i+1));
			     u1.setPassword("123456");
			     u1.setSex("��");
			     u1.setTel("13099999"+i+1);
			     users.add(u1);
	     }
	     
	     User admin = new User();
	     admin.setName("admin");
	     admin.setPassword("123456");
	     admin.setSex("��");
	     admin.setTel("1309999999");
	     users.add(admin);
	     
	     return users;		
	}
	/**
	 * ����½�˵� �û��� ���� �Ƿ���ȷ
	 * @param users          �����û�
	 * @param username       ��¼�û���
	 * @param password       ����
	 * @return
	 */
	public static boolean check_Login(List<User> users,String username ,String password){
		//����½�˵� �û��� ���� �Ƿ���ȷ
	     boolean check_login=false;
	     for(int i=0;i<users.size();i++   )
	     {
	         if(username.equals(users.get(i).getName())  && password.equals(users.get(i).getPassword()))
	         {
	            check_login=true;
	            break;
	         }
	     }		
		return check_login;
	}
	
	
	public static Integer check_user(List<User> users,String username ,String password){
		//����½�˵� �û��� ���� �Ƿ���ȷ
	     Integer check_user=0;
	     for(int i=0;i<users.size();i++   )
	     {
	         if(username.equals(users.get(i).getName())  && password.equals(users.get(i).getPassword()) && username.equals("admin"))
	         {
	            check_user=1;
	            break;
	         }
	     }		
		return check_user;
	}
	
	
	
	
}
