<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%><%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

   
   
    <title>测试结果</title>
	<meta name="save" content="history" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width">
	<link href="css/join/frameworks-81a59bf26d881d29286674f6deefe779c444382fff322085b50ba455460ccae5.css" type="text/css" rel="stylesheet">
    <link href="css/join/github-87d822aa41a2e50fc4a176f81e161236c98e01a8a4e8258b55acdeab81d58d35.css" type="text/css" rel="stylesheet">
    <link href="css/join/site-305da239d9594c987edb45691bee8e64ab6e76c2649f5f82dc9eaa49b5e4ed50.css" type="text/css" rel="stylesheet">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
     <style> 
       body{ text-align:center;background-image:url(./images/blackgroud.jpg);background-size:cover;  } 
       .div{  margin-top:300px; margin-left:300px; width:700px; height:100px; style="background:#FFF; color:#000"} 
      /* css注释：为了观察效果设置宽度 边框 高度等样式 */ 
     </style> 
  </head>
  
  <body>
  <div class="div">
   测试结果及分析<br>
   <c:if test="${intelligenceDescription!=null}">
                 测试分数：${requestScope.intelligenceTotalScore }<br>
     ${requestScope.intelligenceDescription }<br>  
   </c:if>
   <c:if test="${characterDescription!=null}">
                 测试分数：${requestScope.characterTotalScore }<br>
     ${requestScope.characterDescription }<br>  
   </c:if>
   <c:if test="${professionalDescription!=null}">
     ${requestScope.professionalDescription }<br>  
   </c:if>
   <c:if test="${requestScope.loginUser.userId==null }">
       <a href="home.jsp" >返回首页</a>
   </c:if>
   <c:if test="${requestScope.loginUser.userName=='root' }">
       <a href="rootLoginAfter.jsp" >返回首页</a>
   </c:if>
   <c:if test="${requestScope.loginUser.userId!=0 && requestScope.loginUser.userId!=null}"> 
   <a href="userLoginAfter.jsp" >返回首页</a>
   </c:if>
   </div>
  </body>
</html>
