<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>上传题目</title>
    
	 <meta name="save" content="history" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	 <script>
	function pull()
	{
	   document.pull.action=action="${pageContext.request.contextPath }/user/uploadSubmit.action";
	   document.pull.submit();
	}
	function showtip(x)
	{
	   if(x==11)
	    {
	       pull();
	       start.style.display="";
	    }
	    if(x==1)
	     {
	        document.getElementById("tip"+x).style.display="block";
	        start.style.display="none";
	     }
	   if(x>1 && x<11)
	    {
	       document.getElementById("tip"+(x-1)).style.display="none";
	       document.getElementById("tip"+x).style.display="block";
           start.style.display="none";
        }
	}
 
</script>

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
     <div><button class="btn btn-orange" id="start" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(1)">确定</button>
     </div>
   <form name="pull" method="post">
    <c:forEach items="${listQuestions }" var="item" varStatus="status">
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip1"  >
         <div style="padding:26px;">
                <label class="label">题目一</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(2)">下一题</button>
        </div>    
     </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip2"  >
         <div style="padding:26px;">
                <label class="label">题目二</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(3)">下一题</button>
        </div>
        
    </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip3"  >
         <div style="padding:26px;">
                <label class="label">题目三</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(4)">下一题</button>
        </div>
        
    </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip4"  >
         <div style="padding:26px;">
                <label class="label">题目四</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
      </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(5)">下一题</button>
        </div>     
     </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip5"  >
         <div style="padding:26px;">
                <label class="label">题目五</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(6)">下一题</button>
        </div>
        
    </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip6"  >
         <div style="padding:26px;">
                <label class="label">题目六</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(7)">下一题</button>
        </div>    
     </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip7"  >
         <div style="padding:26px;">
                <label class="label">题目七</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(8)">下一题</button>
        </div>      
    </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip8"  >
         <div style="padding:26px;">
                <label class="label">题目八</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(9)">下一题</button>
        </div>
     </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip9"  >
         <div style="padding:26px;">
                <label class="label">题目九</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(10)">下一题</button>
        </div>
     </div>
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip10"  >
         <div style="padding:26px;">
                <label class="label">题目十</label>
                <textarea name="listQuestions[${status.index }].questionContent" id="questionContent" class="mod-cus-input mod-cus-input-4" cols="60" rows="10"></textarea> 
         </div>
         <div style="padding:3px;">
                <label class="label">A答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerA" id="questionAnswerA" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">B答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerB" id="questionAnswerB" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">C答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerC" id="questionAnswerC" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div style="padding:3px;">
                <label class="label">D答案</label>
                <textarea name="listQuestions[${status.index }].questionAnswerD" id="questionAnswerD" class="mod-cus-input mod-cus-input-4" cols="60" rows="1"></textarea>
         </div> 
         <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerA" class="fn-left mt9" value="A">
				<label for="questionAnswerA" class="questionAnswerA fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerB" class="fn-left mt9" value="B">
				<label for="questionAnswerB" class="questionAnswerB fn-left">B</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerC" class="fn-left mt9" value="C">
				<label for="questionAnswerC" class="questionAnswerC fn-left">C</label>
				<span class="note"></span>
                <input type="radio" name="listQuestions[${status.index }].questionAnswer" id="questionAnswerD" class="fn-left mt9" value="D">
				<label for="questionAnswerD" class="questionAnswerD fn-left">D</label>
				<span class="note"></span>
        </div>
        <div class="textbox-group countrycode-fix" data-model="grade" data-controltype="TextBoxGroupgrade">
                <label class="label">本题分数</label>
                <input class="textbox" type="text" name="listQuestions[${status.index }].questionGrade" placeholder="请输入分数" maxlength="20" autocomplete="off" />
        </div>
        
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(11)">下一题</button>
        </div>    
    </div>
    </c:forEach>
   </form>                                  
  </body>
</html>
