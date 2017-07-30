<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta name="save" content="history" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户注册</title>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width">
    <link href="css/join/frameworks-81a59bf26d881d29286674f6deefe779c444382fff322085b50ba455460ccae5.css" type="text/css" rel="stylesheet">
    <link href="css/join/github-87d822aa41a2e50fc4a176f81e161236c98e01a8a4e8258b55acdeab81d58d35.css" type="text/css" rel="stylesheet">
    <link href="css/join/site-305da239d9594c987edb45691bee8e64ab6e76c2649f5f82dc9eaa49b5e4ed50.css" type="text/css" rel="stylesheet">
  
</head>
<body>
<div class="position-relative js-header-wrapper ">
    <a href="https://github.com/join?source=header-home#start-of-content" tabindex="1"
       class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar">
        <div class="progress"></div>
    </div>


</div>

<div id="start-of-content" class="accessibility-aid"></div>

<div id="js-flash-container">
</div>

<div role="main">
    <div class="bg-shade-gradient">
        <div class="setup-wrapper">
            <div class="setup-header setup-org">
                <h1>注册加入TestOnline</h1>
                <p class="lead">更多更专业测试</p>

            </div>

            <div class="setup-main ">
                <div class="setup-form-container">
                  
                    <form accept-charset="UTF-8" action="${pageContext.request.contextPath }/user/registerSubmit.action" autocomplete="off"
                          class="setup-form js-signup-form" id="signup-form" Step 1:method="post">
                        <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input
                                name="authenticity_token" type="hidden"
                                value="JNQvfA8s/FMQ110RipCpCeyM22p0v0DHtdUGC6KZsXRByNbhU3BERx+DtrO+4YYABIqztwQg598s6m5GzzeVcA==">
                        </div>

                        <h2 class="setup-form-title mb-3">
                                                                                                    创建个人账户
                        </h2>

                        <dl class="form-group">
                            <dt class="input-label">
                                <label autocapitalize="off" autofocus="autofocus"
                                                           data-autocheck-authenticity-token="joOeRaXErYsIvG2jy7kpmxoG/SSdXmHlEE/2VeYthG3+L22K1ZdXIzFJzq1JDOaciHNtm7mHiPZ5AkOwTYjXiQ=="
                                                           data-autocheck-url="/signup_check/username" for="user_login"
                                                           name="user[login]">用户名</label></dt>
                            <dd><input autocapitalize="off" autofocus="autofocus" class="form-control"
                                       data-autocheck-authenticity-token="joOeRaXErYsIvG2jy7kpmxoG/SSdXmHlEE/2VeYthG3+L22K1ZdXIzFJzq1JDOaciHNtm7mHiPZ5AkOwTYjXiQ=="
                                       data-autocheck-url="/signup_check/username" id="user_login" name="userName"
                                       size="30" type="text">
                            </dd>
                        </dl>
                   

                        <dl class="form-group successed">
                            <dt class="input-label"><label
                                    data-autocheck-authenticity-token="DEUOgnN+jyYHE3LmwaagdTjEGoG7DHgvMzZ+wRi94IIjksYUqIeSjWiULPrtla7QgwTybfBI5eonHb/Y9qS6Yw=="
                                    data-autocheck-url="/signup_check/password" for="user_password"
                                    name="user_password">密码</label></dt>
                            <dd>
                                <input class="form-control is-autocheck-successful"
                                       data-autocheck-authenticity-token="DEUOgnN+jyYHE3LmwaagdTjEGoG7DHgvMzZ+wRi94IIjksYUqIeSjWiULPrtla7QgwTybfBI5eonHb/Y9qS6Yw=="
                                       data-autocheck-url="/signup_check/password" id="user_password"
                                       name="userPassword" size="30" type="password"
                                       data-com.agilebits.onepassword.user-edited="yes">
                           </dd>
                        </dl>
                        <dl class="form-group successed">
                            <dt class="input-label">
                                <label autocapitalize="off" for="user_tel" name="user_tel">手机</label>
                            </dt>
                            <dd>
                                <input autocapitalize="off" class="form-control is-autocheck-errored"
                                       id="user_tel" name="userTelephone"
                                       size="30" type="text">
                            </dd>
                        </dl>
                        <dl class="form-group successed">
                            <dt class="input-label">
                                <label autocapitalize="off" for="user_tel" name="user_tel">邮箱</label>
                            </dt>
                            <dd>
                                <input autocapitalize="off" class="form-control is-autocheck-errored"
                                       id="user_tel" name="userEmail"
                                       size="30" type="text">
                            </dd>
                        </dl>
                          <dl class="form-group successed">
                            <dt class="input-label">
                                <label autocapitalize="off" for="user_tel" name="user_tel">性别</label>
                            </dt>
                            <dd>
                                <div class="textbox-group clearfix" >
                                
                                <input type="radio" name="userSex" id="nan" class="fn-left mt9" value="男">
				                <label for="nan" class="sex nan fn-left">男</label>
				                <span class="note"></span>
				                <input type="radio" name="userSex" id="nv" class="ml43 fn-left mt9" value="女">
				                <label for="nv" class="sex nv fn-left">女</label>
                                <span class="note"></span>
                                </div>
                            </dd>
                        </dl>


                        <button type="submit" class="btn btn-primary" id="signup_button"
                                data-disable-with="Creating account…">确定并注册
                        </button>

                    </form>
                </div> <!-- /.setup-form-container -->
            </div> <!-- /.setup-main -->

            <div class="setup-secondary">
                <div class="setup-info-module">
                    <h2>注册加入TestOnline</h2>
                    <ul class="features-list">
                        <li><strong>更多更专业测试</strong>性格、职业</li>
                        <li><strong>查询</strong>测试记录</li>
                        <li><strong>成为白金会员</strong>享受更多</li>
                        <li class="list-divider"></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-backdrop js-touch-events"></div>

</div>
<c:if test="${allErrors!=null}">
   <c:forEach items="${allErrors }" var="error">
       ${error.defaultMessage}<br>
   </c:forEach>
</c:if>
</body>
</html>

