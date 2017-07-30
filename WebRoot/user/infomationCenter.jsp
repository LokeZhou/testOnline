<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html><html>
 <head> 
    <meta http-equiv=Content-Type content="text/html;charset=utf-8">  
    <title>个人中心</title> 
    <link type=text/css rel=stylesheet href="https://ss1.bdstatic.com/5KZ1bjqh_Q23odCf/static/princess/css/csssetting_53993ac3.css"> </head> 
<body> 
       <div id=banner> 
          <div class=banner-position>
             <div id=banhld class=banner-content>
               <div class=plzhld></div>
               <a href=https://www.baidu.com/ target=_blank>
             
             </div>
          </div> 
       </div>
       <div id=content>
           <div class="mod-setting clearfix"> 
              <div class="setting-title yahei">个人设置</div>
              <div class="setting-content clearfix">
                 <div class=setting-menu> 
                     <div class="menu-title menu-profile-current active">
                      <h3>个人资料</h3>  
                     </div> 
                     <ul class=menu-list> 
                        <li class="menu-item basic-link on">
                        <a href=/p/setting/profile/basic>基本资料</a>
                         <li class=menu-split> <li class="menu-item details-link">
                     </ul> 
                 </div>
                 <div class=mod-setting-profile> <div class="setting-profile-title yahei">基本资料</div> 
                    <form id=profile class=setting-profile-form method=POST > 
                       <table class=setting-profile-table> 
                          <tbody>  
                            <tr> 
                              <th>用户名:</th> 
                              <td>
                                  ${requestScope.loginUser.userName }
                            <tr> 
                              <th>性别:</th>
                              <td>
                                  ${requestScope.loginUser.userSex }
                            <tr> 
                              <th>等级:</th>
                              <td>
                                  ${requestScope.loginUser.userRank }
                             <tr>
                              <th>电话:</th> 
                              <td> 
                                  ${requestScope.loginUser.userTelephone }
                            <tr> 
                              <th>邮箱: </th> 
                              <td> 
                                  ${requestScope.loginUser.userEmail }
                            <tr> 
                              <th>上传题数:</th>
                              <td>
                                  ${requestScope.loginUser.upload }
                                   <a href="${pageContext.request.contextPath }/user/upload.action">上传题目？</a><br>
                              <tr> 
                               <th>已测试题数: </th>
                              <td>
                                  ${requestScope.loginUser.testTime }
                                  <a href="${pageContext.request.contextPath }/user/testSelect.action">去测试？</a><br>
                              <tr> 
                            </table> 
                           </form>
                           </div>
             </div>
             
         </div>
       </div>
</body>