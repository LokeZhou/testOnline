<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>在线测试</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style> 
       body{ text-align:center;background-image:url(./images/blackgroud.jpg)"} 
       .div{  margin-top:100px; margin-left:100px; width:700px; height:100px; } 
      /* css注释：为了观察效果设置宽度 边框 高度等样式 */ 
     </style> 
    <script> 
    function pull()
    {
       document.pull.action=action="${pageContext.request.contextPath }/user/testSubmit.action";
	   document.pull.submit();
    }
    
    function showtip(x)
     {
         if(x==10)
	    {
	       pull();
	       
	    }
	   if(x==0)
	   {
	     document.getElementById(x).style.display="block";
	     start.style.display="none";
         selectType.style.display="none";
	   }
	   if(x>0&&x<10)
	    {
	       document.getElementById((x-1)).style.display="none";
	       document.getElementById(x).style.display="block";
           
        }
     }
     </script>
  </head>
  <body>
 <div class="div">
  <div class="textbox-group textbox-group-submit" id="start">
        <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(0)">开始</button>
  </div>
  <form name="pull" method="post">
   <c:forEach items="${Questionlist}" var="Questionlist" varStatus="status">
    <div  style="background-color:#F9F9F9;height:300px;display:none;margin-top:150px;font-size:15pt;font-family:'微软雅黑';"  id="${status.index}"  > 
        
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">${status.count}</label>
                ${requestScope.Questionlist[status.index].content}
            </div>
            <div class="textbox-group clearfix" >
                <input type="radio" name="answerList[${status.index}]" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				${requestScope.Questionlist[status.index].answera}
				<span class="note"></span>
		    </div>
		    <div class="textbox-group clearfix" >
				<input type="radio" name="answerList[${status.index}]" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				${requestScope.Questionlist[status.index].answerb}
				<span class="note"></span>
			</div>
			<div class="textbox-group clearfix" >
				<input type="radio" name="answerList[${status.index}]" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				${requestScope.Questionlist[status.index].answerc}
				<span class="note"></span>
			</div>
			<div class="textbox-group clearfix" >
				<input type="radio" name="answerList[${status.index}]" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				${requestScope.Questionlist[status.index].answerd}
				<span class="note"></span>
            </div>
     
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(${status.count})">下一题</button>
        </div>
       
     </div> 
   </c:forEach>
   </form>
   </div>
  </body>
   </html>