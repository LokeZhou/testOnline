<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>用户登陆</title>
     <style> 
       body{ text-align:center;  } 
       .div{  margin-top:100px; margin-left:100px; width:700px; height:100px; } 
      /* css注释：为了观察效果设置宽度 边框 高度等样式 */ 
     </style>

    <script>
    function loginSubmit(){
	//提交form
	
	document.registerForm.action=action="${pageContext.request.contextPath }/user/loginSubmit.action";
	document.registerForm.submit();
}


</script>
<body class="logged-out env-production emoji-size-boost session-authentication page-responsive min-width-0">
<div class="div">
<div id="start-of-content" class="show-on-focus"></div>


<div role="main">

    <div id="js-pjax-container" data-pjax-container="">


        <div class="div" id="login" >
            
              <form accept-charset="UTF-8" action="${pageContext.request.contextPath }/user/loginSubmit.action" method="post">
                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="✓"><input
                        name="authenticity_token" type="hidden"
                        value="QP6hOFfU0RjHFYTq3ZEAr3YQuDi1pmlSeetme7i+WGTa737IaEwgwh5ysfGSrijtk5XH8rZPgOC2q6169XCVmA==">
                </div>
                <div class="auth-form-header p-0">
                    <h1>Sign in to TestOnline</h1>
                </div>


                <div id="js-flash-container">
                </div>


                <div class="auth-form-body mt-3">

                    <label for="login_field">
                                                                                            用户ID
                    </label>
                    <input autocapitalize="off" autocorrect="off" autofocus="autofocus" class="form-control input-block"
                           id="login_field" name="userId" tabindex="1" type="text"
                           data-com.agilebits.onepassword.user-edited="yes">

                    <label for="password">
                                                                                         密码 
                    </label>
                    <input class="form-control form-control input-block" id="password" name="userPassword" tabindex="2"
                           type="password" data-com.agilebits.onepassword.user-edited="yes">

                    <input class="btn btn-primary btn-block" data-disable-with="Signing in…" name="commit" tabindex="3"
                           type="submit" value="登陆" >
                </div>
            </form>

            <p class="create-account-callout mt-3">
                                                                             还没有注册?
                <a href="register.jsp" data-ga-click="Sign in, switch to sign up">去注册</a>.
            </p>
        </div>

    </div>
    <div class="modal-backdrop js-touch-events"></div>
</div>
</div>
<div class="page-sidebar" style="width:320px;height:100px;margin-top:50px;margin-left:400px">
            <div class="gpk2">
                <dl>
                    <dt>注册成为用户，您可以：</dt>
                    <dd>
                        <ul>
                            <li>更多更专业测试<b class="hl">性格</b>、<b class="hl">职业</b></li>
                            <li>查询、您的测试记录</li>
                            <li>有机会升级为<b class="hl">白金</b>会员</li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <div style="width:320px;height:170px;float:right;overflow: hidden;">
           
                <abbr id="banner_reg_left" style="display: none;" data-type="qad" data-query="vataposition=QNR_ODM=_CN&tag=99&rows=1&cur_page_num=0&rep=1&f=s" data-style="width:100%; height:178px;"></abbr>
            </div>
            <div class="clr"></div>
        </div>
  
<c:if test="${allErrors!=null}">
   <c:forEach items="${allErrors }" var="error">
       ${error.defaultMessage}<br>
   </c:forEach>
</c:if>
<c:if test="${errorMessage!=null}">
    ${requestScope.errorMessage}<br>
</c:if>




</body>

</html>

