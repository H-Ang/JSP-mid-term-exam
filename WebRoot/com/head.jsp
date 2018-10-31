<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">

				<div class="navbar-header">
					<a class="navbar-brand" href="#">水果商城</a>
				</div>
				<div>
					<!--向左对齐-->
					<a class="navbar-text navbar-left" href="index.jsp">购物</a> <a
						class="navbar-text navbar-left" href="shopcar.jsp">购物车</a>
					<!--向右对齐-->
					<a class="navbar-text navbar-right" href="login.jsp">返回登录</a> 
					<%
						if((Integer)session.getAttribute("user_type")==1){
							
					%>
					<a class="navbar-text navbar-right" href="userManage.jsp">用户管理</a>
					
					<%
						}
					%>
					
				</div>
			</div>
			<div class="col-md-1"></div>



		</div>
	</nav>
</body>
</html>
