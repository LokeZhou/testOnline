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
    <link href="https://qunarzz.com/usercenter_pc/prd/styles/user-register@d14c830e01716607c21c69d53b53f301.css" rel="stylesheet" type="text/css" />
    <script>
    function registerSubmit(){
	//提交form
	
	document.registerForm.action=action="${pageContext.request.contextPath }/user/registerSubmit.action";
	document.registerForm.submit();
}


</script>
</head>
<body>
<div class="register-page">
    <div class="page-title">
        <a class="page-logo" href="http://www.qunar.com"></a>
        <div>账号注册</div>
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
                <label class="label">用户名</label>
                <input class="textbox" type="text" name="userName" placeholder="请输入用户名" maxlength="20" autocomplete="off" />
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">登录密码</label>
                <input class="textbox" type="password" name="userPassword" placeholder="请输入登录密码"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group clearfix" data-model="mobile" data-controltype="TextBoxGroupPhone">
                <label class="label">手机号码</label>
                <input class="textbox" type="text" name="userTelephone" placeholder="请输入手机号码" maxlength="11" autocomplete="off" />
                <span class="note note-none">可用于激活码获取、密码找回等</span>
            </div>
            <div class="textbox-group  textbox-group-email" data-model="email" data-controltype="TextBoxGroup">
                <label class="label">注册邮箱</label>
                <input class="textbox" type="text"name="userEmail" placeholder="请输入注册邮箱" autocomplete="off" />
                <span class="note note-none">可用于激活码获取、密码找回等</span>
                <span class="note"></span>
            </div>
            <div class="textbox-group clearfix" >
                <label class="label">性别</label>
                <input type="radio" name="userSex" id="nan" class="fn-left mt9" value="m">
				<label for="nan" class="sex nan fn-left">男</label>
				<span class="note"></span>
				<input type="radio" name="userSex" id="nv" class="ml43 fn-left mt9" value="f">
				<label for="nv" class="sex nv fn-left">女</label>
                <span class="note"></span>
            </div>
           
         
        
            <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="registerSubmit()">同意协议并注册</button>
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
</body>
</html>

