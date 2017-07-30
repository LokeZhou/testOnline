<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

   
    
    <title>选择测试类型</title>
    
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
    <script> 
    function checkSelecct()
     {
         document.selectForm.action=action="${pageContext.request.contextPath }/user/test.action";
         
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
                             <select name="typeSelect"  >
                               <option value="0">请选择测试类型</option>
                               <c:forEach items="${typeList}" var="typeList" varStatus="status">
                                 <option value="${status.count}">${requestScope.typeList[status.index]}</option>
                               </c:forEach>
                              </select>
                         </form>
                        <button type="submit" class="btn btn-primary" id="signup_button"
                                data-disable-with="Creating account…" onclick="checkSelecct()">开始
                        </button>           
                </div> <!-- /.setup-form-container -->
            </div> <!-- /.setup-main -->

            <div class="setup-secondary">
                <div class="setup-info-module">
                    <h2>Test  Type</h2>
                    <ul class="features-list">
                        <li><strong>智力</strong>测试</li>
                        <li><strong>性格</strong>测试</li>
                        <li><strong>职业</strong>测试</li>
                        <li class="list-divider"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

  <div class="modal-backdrop js-touch-events"></div>

</div>
 <!--  <form  id="selectForm" name="selectForm" method="post">
      <select name="typeSelect"  >
         <option value="0">请选择测试类型</option>
         <c:forEach items="${typeList}" var="typeList" varStatus="status">
           <option value="${status.count}">${requestScope.typeList[status.index]}</option>
         </c:forEach>
      </select>
      <div class="textbox-group textbox-group-submit">
          <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="checkSelecct()">确定</button>
      </div>
  </form> -->
</body>
</html>