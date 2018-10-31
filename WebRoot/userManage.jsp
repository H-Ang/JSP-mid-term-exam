<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.valJavaBean.*,com.toolJavaBean.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<User> users=MyTool.getAllUsers();
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'userManage.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
</style>

<%@ include file="com/link.jsp" %>
<%@ include file="com/head.jsp" %>
</head>

<body>
	<div class="container-fluid">
	
		<div class="row">
		
			<div class="col-md-2"></div>
			<div class="col-md-8">
				
				<table border="0" class="table table-hover active">
					<caption style="margin-bottom: 10px">用户管理</caption>
					<tr>
						<td>用户姓名</td>
						<td>电话</td>
						<td>性别</td>
						<td>密码</td>
						<td>操作</td>
					</tr>
					<%
						for(int i=0;i<users.size();i++)
								         {
								         
								         /*for(user u:users)
								         {
								             u.name;
								         
								         }*/
					%>
					<tr id="<%=i%>">
						<td align="center"><%=users.get(i).getName()%></td>
						<td><%=users.get(i).getTel()%></td>
						<td><%=users.get(i).getSex()%></td>
						<td><input type="password"
							value="<%=users.get(i).getPassword()%>"></input></td>
						<td><button class="btn btn-default	 .active" onclick="delrow(this) ">删除</button></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>
			<div class="col-md-2"></div>
			<script type="text/javascript">
				/*var _tr= document.getElementById("0");
				 var _table=_tr.parentNode;
				 _table.removeChild(_tr);
				 */
				function delrow(_obj) {
					_td = _obj.parentNode;
					_tr = _td.parentNode;
					_table = _tr.parentNode;
					_table.removeChild(_tr);
				}

				//alert(_tr);
			</script>
</body>
</html>
