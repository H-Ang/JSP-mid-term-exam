<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.valJavaBean.*,com.toolJavaBean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<User> users=MyTool.getAllUsers();
 //设置中文 解决中文乱码 
     request.setCharacterEncoding("UTF-8");
     String username=request.getParameter("userName");
     String password=request.getParameter("pw");
     
     boolean check_login=MyTool.check_Login(users, username, password);
     
     Integer user_type = MyTool.check_user(users, username, password);
     
     session.setAttribute("user_type", user_type);

if(check_login)
     {
      //不跳转 显示登陆人 姓名 
      response.sendRedirect("index.jsp");
      }else{
		      //跳转到错误页面 
		       response.sendRedirect("error.jsp");
      }
%>

