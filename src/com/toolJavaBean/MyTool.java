package com.toolJavaBean;

import java.util.ArrayList;
import java.util.List;

import com.valJavaBean.User;

public class MyTool {

	/**
	 * 获取所有用户
	 * @return
	 */
	public static  List<User> getAllUsers(){
		 List<User> users=new ArrayList();   
	     for(int i=0;i<10;i++   )
	     {
	             User u1=new User();
	             u1.setName("张"+(i+1));
			     u1.setPassword("123456");
			     u1.setSex("男");
			     u1.setTel("13099999"+i+1);
			     users.add(u1);
	     }
	     
	     User admin = new User();
	     admin.setName("admin");
	     admin.setPassword("123456");
	     admin.setSex("男");
	     admin.setTel("1309999999");
	     users.add(admin);
	     
	     return users;		
	}
	/**
	 * 检查登陆人的 用户名 密码 是否正确
	 * @param users          所有用户
	 * @param username       登录用户名
	 * @param password       密码
	 * @return
	 */
	public static boolean check_Login(List<User> users,String username ,String password){
		//检查登陆人的 用户名 密码 是否正确
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
		//检查登陆人的 用户名 密码 是否正确
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
