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
    <link href="https://qunarzz.com/usercenter_pc/prd/styles/user-register@d14c830e01716607c21c69d53b53f301.css" rel="stylesheet" type="text/css" />
    <script>
    function loginSubmit(){
	//提交form
	
	document.registerForm.action=action="${pageContext.request.contextPath }/user/loginSubmit.action";
	document.registerForm.submit();
}


</script>
</head>
<body>
<div class="login-page">
    <div class="page-title">
        <a class="page-logo" href="http://www.qunar.com"></a>
        <div>账号登陆</div>
    </div>
    <div style="align:center; text-align:center;padding-bottom:10px;padding-left:5px;">
        <!--<iframe id="banner_reg_top" src="" data-ad-type="qad" data-vataposition="QNR_NjM=_CN" data-tag="99" data-rows="1" data-cur_page_num="0" data-rep="1" data-f="s" width="100%" height="0" frameborder="0" scrolling="no"></iframe>-->
        <abbr id="banner_reg_top" style="display: none;" data-type="qad" data-query="vataposition=QNR_NjM=_CN&tag=99&rows=1&cur_page_num=0&rep=1&f=s" data-style="width:100%;"></abbr>
    </div>
    <div class="page-content" id="registerPage" data-viewmodel="RegisterViewModel">
        <form name="registerForm" method="post">
                    <input type="hidden" value="1" name="usertype" id="usertype" />
            <input type="hidden" value="" name="ref" id="ref" />
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">用户ID</label>
                <input class="textbox" type="text" name="userId" placeholder="请输入用户ID" maxlength="20" autocomplete="off" />
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">登录密码</label>
                <input class="textbox" type="password" name="userPassword" placeholder="请输入登录密码"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
       
           
            <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="loginSubmit()">登陆</button>
            </div>
        </form>
        <div class="page-sidebar">
            <div class="gpk2">
                <dl>
                    <dt>注册成为“去哪儿”的用户后，您可以：</dt>
                    <dd>
                        <ul>
                            <li>畅游与去哪儿合作的<b class="hl">机票</b>、<b class="hl">酒店</b>、<b class="hl">度假</b>代理商网站，轻松管理订单</li>
                            <li>查询、计划、管理您的预订信息</li>
                            <li>享受优质超低价格<b class="hl">团购</b>服务</li>
                        </ul>
                    </dd>
                </dl>
            </div>
            <div style="width:320px;height:170px;float:right;overflow: hidden;">
                <!--<iframe id="banner_reg_left" src="" data-ad-type="qad" data-vataposition="QNR_ODM=_CN" data-tag="99" data-rows="1" data-cur_page_num="0" data-rep="1" data-f="s" width="100%" height="0" frameborder="0" scrolling="no"></iframe>-->
                <abbr id="banner_reg_left" style="display: none;" data-type="qad" data-query="vataposition=QNR_ODM=_CN&tag=99&rows=1&cur_page_num=0&rep=1&f=s" data-style="width:100%; height:178px;"></abbr>
            </div>
            <div class="clr"></div>
        </div>
    </div>
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

