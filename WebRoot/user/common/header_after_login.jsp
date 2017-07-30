<%--
  Created by IntelliJ IDEA.
  User: Leeeeo
  Date: 2017/6/20
  Time: 01:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="css/register2/frameworks-81a59bf26d881d29286674f6deefe779c444382fff322085b50ba455460ccae5.css"
          type="text/css" rel="stylesheet">
    <link href="css/register2/site-305da239d9594c987edb45691bee8e64ab6e76c2649f5f82dc9eaa49b5e4ed50.css" type="text/css"
          rel="stylesheet">
    <link href="css/register2/github-8789d320be825216d799841dcb27bc201b0605572d4c8c07c30feb5bc27a66b7.css"
          type="text/css" rel="stylesheet">
    <link href="css/register2/github-87d822aa41a2e50fc4a176f81e161236c98e01a8a4e8258b55acdeab81d58d35.css"
          type="text/css" rel="stylesheet">
    <link href="css/register2/site-305da239d9594c987edb45691bee8e64ab6e76c2649f5f82dc9eaa49b5e4ed50.css" type="text/css"
          rel="stylesheet">
</head>
<body>
<div class="header" role="banner">
    <div class="container clearfix">
        <ul class="header-nav float-left" role="navigation">
            <li class="header-nav-item">欢迎你  ${requestScope.loginUser.userName }</li>
            <li class="header-nav-item">
               <c:if test="${requestScope.loginUser.userId==0 }">
                 <a href="user/rootLoginAfter.jsp" class="js-selected-navigation-item header-nav-link">首页</a>
               </c:if>
               <c:if test="${requestScope.loginUser.userId!=0 }"> 
                 <a href="user/userLoginAfter.jsp" class="js-selected-navigation-item header-nav-link">首页</a>
               </c:if>
            </li>
            <li class="header-nav-item"><a href="/home_page.jsp" class="js-selected-navigation-item header-nav-link">帮助</a></li>
            <li class="header-nav-item"><a href="/recomm.jsp" class="js-selected-navigation-item header-nav-link">指南</a></li>
            <li class="header-nav-item"><a href="${pageContext.request.contextPath }/user/info.action" class="js-selected-navigation-item header-nav-link">个人中心</a></li>
        </ul>


        <ul class="header-nav user-nav float-right" id="user-links">
            <li class="header-nav-item">
            </li>
 

            <li class="header-nav-item dropdown js-menu-container">
                <a class="header-nav-link name tooltipped tooltipped-sw js-menu-target"
                   href="${pageContext.request.contextPath }/user/logout.action">注销
                </a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
