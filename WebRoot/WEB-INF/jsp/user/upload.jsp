<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传题目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <div class="textbox-group clearfix" >
                <label class="label">题目类型</label>
                <input type="radio" name="libraryType" id="emotion" class="fn-left mt9" value="emotion">
				<label for="emotion" class="emotion fn-left">情感测试</label>
				<span class="note"></span>
				<input type="radio" name="libraryType" id="character" class="ml43 fn-left mt9" value="character">
				<label for="character" class="character fn-left">性格测试</label>
                <span class="note"></span>
                <input type="radio" name="libraryType" id="intelligence" class="ml43 fn-left mt9" value="intelligence">
				<label for="intelligence" class="intelligence fn-left">智力测试</label>
                <span class="note"></span>
                <input type="radio" name="libraryType" id="professional" class="ml43 fn-left mt9" value="professional">
				<label for="professional" class="professional fn-left">专业测试</label>
                <span class="note"></span>
     </div>
     <div class="textbox-group  textbox-group-questions" data-model="questions" data-controltype="TextBoxGroup">
                <label class="label">题目数</label>
                <input class="textbox" type="text"name="libraryQuestions" placeholder="请输入题量（10）" autocomplete="off" />
                <span class="note"></span>
     </div>
     <div  style="background-color:#F9F9F9;height:300px;display:block;font-size:15pt;font-family:'微软雅黑';"  id="tip1"  >
         <div style="padding:26px;">
                <label class="label">题目</label>
                <textarea name="questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="Submit()">下一题</button>
        </div>
        
    </div>
      

  </body>
</html>
