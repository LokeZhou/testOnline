<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

   
   
    <title>注册成功</title>
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
       body{ text-align:center; } 
       .div{  margin-top:100px; margin-left:100px; width:700px; height:100px; } 
      /* css注释：为了观察效果设置宽度 边框 高度等样式 */ 
     </style> 
      <script> 
    function checkSelecct()
     {
         document.selectForm.action=action="${pageContext.request.contextPath }/user/login.action";
         
	     document.selectForm.submit();
     }
     </script>
  </head>
  
  <body>
   <div id="start-of-content" class="accessibility-aid"></div>

     <div id="js-flash-container">
     </div>

     <div role="main">
       <div class="bg-shade-gradient">
        <div class="setup-wrapper">
            <div class="setup-header setup-org">
                <h1>TestOnline</h1>
                <p class="lead">更多更专业测试</p>
            </div>

            <div class="setup-main ">
                <div class="setup-form-container">
                  
                        <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input
                                name="authenticity_token" type="hidden"
                                value="JNQvfA8s/FMQ110RipCpCeyM22p0v0DHtdUGC6KZsXRByNbhU3BERx+DtrO+4YYABIqztwQg598s6m5GzzeVcA==">
                        </div>
                        <form  id="selectForm" name="selectForm" method="post">
                          ${requestScope.message1} ${requestScope.insertUser.userId }<br/>
                          ${requestScope.message2} ${requestScope.insertUser.userPassword }<br/>
                        <button type="submit" class="btn btn-primary" id="signup_button"
                                data-disable-with="Creating account…" onclick="checkSelecct()">去登陆
                        </button> 
                        </form>
                </div> <!-- /.setup-form-container -->
            </div> <!-- /.setup-main -->

            <div class="setup-secondary">
                <div class="setup-info-module">
                    <h2>Register</h2>
                    <ul class="features-list">
                        <li><strong>普通</strong>会员</li>
                        <li><strong>白金</strong>会员</li>
                        <li class="list-divider"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

  <div class="modal-backdrop js-touch-events"></div>

</div>
 <!--   <div class="div">
   ${requestScope.message1} ${requestScope.insertUser.userId }<br/>
   ${requestScope.message2} ${requestScope.insertUser.userPassword }<br/>
   <a href="${pageContext.request.contextPath }/user/login.action">去登陆？</a><br>
  </div>-->
  </body>
</html>
