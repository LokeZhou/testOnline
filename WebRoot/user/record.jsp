<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>历史记录</title>
    
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
     测试记录：
<table width="100%" border=1>
<tr>
	<td>用户名</td>
	<td>类型</td>
	<td>版本</td>
	<td>描述</td>
	<td>分数</td>
</tr>
<c:forEach items="${recordList }" var="recordList" varStatus="status" >
<tr>
	<td>${requestScope.recordList[status.index].userid}</td>
	<td>${requestScope.recordList[status.index].type}</td>
	<td>${requestScope.recordList[status.index].version}</td>
	<td>${requestScope.recordList[status.index].description}</td>
	<td>${requestScope.recordList[status.index].score}</td>
</tr>
</c:forEach>

</table>
  <a href="user/userLoginAfter.jsp" class="js-selected-navigation-item header-nav-link">返回</a>
  </body>
</html>
