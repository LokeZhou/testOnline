<%--
  Created by IntelliJ IDEA.
  User: Leeeeo
  Date: 2017/6/2
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<c:if test="${fn:length(userLoginName)==0}">
    <%@include file="header_before_login.jsp" %>
    <base href="<%=basePath%>">
</c:if>
<c:if test="${fn:length(userLoginName)!=0}">
    <%@include file="header_after_login.jsp" %>
    <base href="<%=basePath%>">
</c:if>

</html>
