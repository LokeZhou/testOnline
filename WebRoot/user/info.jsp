<%--
  Created by IntelliJ IDEA.
  User: Leeeeo
  Date: 2017/6/13
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%@include file="common/header_after_login.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/info.css" rel="stylesheet">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>个人中心</title>
    <script type="text/javascript">
        function funcShow(id) {
            for (var i = 0; i < 5; i++) {
                var divInfo = document.getElementById('div' + (i + 1));
                divInfo.style.display = 'none';
            }
            var div = document.getElementById('div' + id);
            div.style.display = 'block';
        }
    </script>
    <style type="text/css">
        .demo {
            background: #ffded7;
            padding: 2em 0;
        }

        a:hover, a:focus {
            outline: none;
            text-decoration: none;
        }

        .tab .nav-tabs {
            padding-left: 15px;
            border-bottom: 4px solid #692f6c;
        }

        .tab .nav-tabs li a {
            color: #fff;
            padding: 10px 20px;
            margin-right: 10px;
            background: #692f6c;
            text-shadow: 1px 1px 2px #000;
            border: none;
            border-radius: 0;
            opacity: 0.5;
            position: relative;
            transition: all 0.3s ease 0s;
        }

        .tab .nav-tabs li a:hover {
            background: #692f6c;
            opacity: 0.8;
        }

        .tab .nav-tabs li.active a {
            opacity: 1;
        }

        .tab .nav-tabs li.active a,
        .tab .nav-tabs li.active a:hover,
        .tab .nav-tabs li.active a:focus {
            color: #fff;
            background: #692f6c;
            border: none;
            border-radius: 0;
        }

        .tab .nav-tabs li a:before,
        .tab .nav-tabs li a:after {
            content: "";
            border-top: 42px solid transparent;
            position: absolute;
            top: -2px;
        }

        .tab .nav-tabs li a:before {
            border-right: 15px solid #692f6c;
            left: -15px;
        }

        .tab .nav-tabs li a:after {
            border-left: 15px solid #692f6c;
            right: -15px;
        }

        .tab .nav-tabs li a i,
        .tab .nav-tabs li.active a i {
            display: inline-block;
            padding-right: 5px;
            font-size: 15px;
            text-shadow: none;
        }

        .tab .nav-tabs li a span {
            display: inline-block;
            font-size: 14px;
            letter-spacing: -9px;
            opacity: 0;
            transition: all 0.3s ease 0s;
        }

        .tab .nav-tabs li a:hover span,
        .tab .nav-tabs li.active a span {
            letter-spacing: 1px;
            opacity: 1;
            transition: all 0.3s ease 0s;
        }

        .tab .tab-content {
            padding: 30px;
            background: #fff;
            font-size: 16px;
            color: #6c6c6c;
            line-height: 25px;
        }

        .tab .tab-content h3 {
            font-size: 24px;
            margin-top: 0;
        }

        @media only screen and (max-width: 479px) {
            .tab .nav-tabs li {
                width: 100%;
                margin-bottom: 5px;
                text-align: center;
            }

            .tab .nav-tabs li a span {
                letter-spacing: 1px;
                opacity: 1;
            }
        }

        #nartab li {
            border-bottom: dotted dodgerblue 3px;
        }

        #nartab {
            line-height: 100px;
            padding-left: 90px;
            list-style-image: url(./images/heart1.jpg);
        }
    </style>

</head>
<body>

<div class="row" style="width: 100%;display: block;">
    <div style="width: 20%;float: left;display: block;">
       <ul id="nartab">
         <li><a href="javascript:funcShow(1)" id="intro">个人信息</a></li>
       </ul>
    </div>
    <div style="width:80%;float: left;border: 5px dashed CornflowerBlue;">
        <div id="div1" style="display:block;">
            <div>
                <div class="form-group"
                 style="float: left;width: 90%;margin-left:200px;margin-right: 1000px;color:LightSeaGreen">
                   <label class="control-label" for="living">用户ID</label>
                    ${requestScope.loginUser.userId }
                </div>
                 <div class="form-group"
                 style="float: left;width: 90%;margin-left:200px;margin-right: 1000px;color:LightSeaGreen">
                   <label class="control-label" for="living">用户名</label>
                    ${requestScope.loginUser.userName }
                </div>
                <div class="form-group"
                 style="float: left;width: 90%;margin-left:200px;margin-right: 1000px;color:LightSeaGreen">
                   <label class="control-label" for="favorite">性别</label>
                    ${requestScope.loginUser.userSex }
                </div>
                <div class="form-group"
                 style="float: left;width: 90%;margin-left:200px;margin-right: 1000px;color:LightSeaGreen">
                  <label class="control-label" for="experience">等级</label>
                   ${requestScope.loginUser.userRank }
                </div>
                <div class="form-group"
                 style="float: left;width: 90%;margin-left:200px;margin-right: 1000px;color:LightSeaGreen">
                  <label class="control-label" for="criteria">邮箱</label>
                   ${requestScope.loginUser.userEmail }
                </div>
                <div class="form-group"
                 style="float: left;width: 90%;margin-left:200px;margin-right: 1000px;color:LightSeaGreen">
                  <label class="control-label" for="criteria">手机</label>
                  ${requestScope.loginUser.userTelephone }
                </div>
            </div>
           
        </div>
   </div>
</div>
</body>
</html>
