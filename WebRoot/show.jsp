<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.valJavaBean.GoodsSingle"%>
<%
	ArrayList goodslist = (ArrayList) session.getAttribute("goodslist");
%>
<%@ include file="com/link.jsp"%>
<%@ include file="com/head.jsp"%>


<div class="container-fluid">

	<div class="row">

		<div class="col-md-2"></div>
		<div class="col-md-8">
			<table class="table table-hover" border="0" width="450" rules="none"
				cellspacing="0" cellpadding="0">
				<tr height="50">
					<td colspan="3" align="center">提供商品如下</td>
				</tr>
				<tr align="center" height="30" bgcolor="lightgrey">
					<td>名称</td>
					<td>价格(元/斤)</td>
					<td>购买</td>
				</tr>
				<%
					if (goodslist == null || goodslist.size() == 0) {
				%>
				<tr height="100">
					<td colspan="3" align="center">没有商品可显示！</td>
				</tr>
				<%
					} else {
						for (int i = 0; i < goodslist.size(); i++) {
							GoodsSingle single = (GoodsSingle) goodslist.get(i);
				%>
				<tr height="50" align="center">
					<td><%=single.getName()%></td>
					<td><%=single.getPrice()%></td>
					<td><a href="docar.jsp?action=buy&id=<%=i%>">购买</a>
					</td>
				</tr>
				<%
					}
					}
				%>
				<tr height="50">
					<td align="center" colspan="3"><a href="shopcar.jsp">查看购物车</a>
					</td>
				</tr>
			</table>

		</div>
		<div class="col-md-2"></div>

	</div>
	
</div>