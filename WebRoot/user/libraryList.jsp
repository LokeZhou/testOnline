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
    
    <title>题库</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
   function checkSelecct()
     {
         document.librarieListForm.action=action="${pageContext.request.contextPath }/user/delectLibrary.action";
         
	     document.librarieListForm.submit();
     }
     </script>
  </head>
  
  <body>

     题库列表：
<table width="100%" border=1>
<tr>
	<td>类型</td>
	<td>版本</td>
	<td>题量</td>
</tr>

<c:forEach items="${librarieList }" var="librarieList" varStatus="status" begin="1">
<tr>
	<td>${requestScope.librarieList[status.index].type}</td>
	<td>${requestScope.librarieList[status.index].versions}</td>
	<td>${requestScope.librarieList[status.index].questions}</td>
	</tr>
</c:forEach>

</table>
 <form name="librarieListForm"id="librarieListForm" method="post">
 <select name="delectVersions"  >
      <option value="0">请选择删除版本</option>
       <c:forEach items="${librarieList}" var="librarieList" varStatus="status" >
          <option value="${status.count}">${requestScope.librarieList[status.index].versions}</option>
       </c:forEach>
      </select>
    <button type="submit"  onclick="checkSelecct()">删除
                        </button> 
      
</form>
  <a href="user/rootLoginAfter.jsp" class="js-selected-navigation-item header-nav-link">返回</a>
  </body>
</html>
