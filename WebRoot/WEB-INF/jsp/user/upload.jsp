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
  
   <form name="pull" method="post">
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
    
      
 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip1" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目一</label>
                <textarea  name="questionsList[0].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[0].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[0].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[0].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[0].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[0].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[0].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[0].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[0].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[0].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(2)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip2" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目二</label>
                <textarea  name="questionsList[1].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[1].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[1].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[1].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[1].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[1].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[1].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[1].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[1].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[1].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(3)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip3" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目三</label>
                <textarea  name="questionsList[2].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[2].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[2].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[2].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[2].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[2].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[2].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[2].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[2].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[2].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(4)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip4" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目四</label>
                <textarea  name="questionsList[3].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[3].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[3].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[3].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[3].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[3].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[3].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[3].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[3].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[3].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(5)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip5" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目五</label>
                <textarea  name="questionsList[4].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[4].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[4].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[4].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[4].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[4].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[4].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[4].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[4].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[4].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(6)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip6" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目六</label>
                <textarea  name="questionsList[5].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[5].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[5].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[5].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[5].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[5].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[5].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[5].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[5].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[5].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(7)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip7" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目七</label>
                <textarea  name="questionsList[6].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[6].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[6].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[6].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[6].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[6].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[6].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[6].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[6].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[6].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(8)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip8" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目八</label>
                <textarea  name="questionsList[7].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[7].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[7].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">C答案</label>
                <input class="textbox" type="text" name="questionsList[7].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[7].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[7].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[7].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[7].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">c</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[7].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[7].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(9)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip9" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目九</label>
                <textarea  name="questionsList[8].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[8].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[8].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[8].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[8].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[8].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[8].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[8].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">c</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[8].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[8].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(10)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip10" >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目十</label>
                <textarea  name="questionsList[9].questionContent" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[9].questionAnswerA"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[9].questionAnswerB"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[9].questionAnswerC"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[9].questionAnswerD"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[9].questionAnswer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[9].questionAnswer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[9].questionAnswer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[9].questionAnswer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[9].questionGrade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(11)">下一题</button>
        </div>
     </div> 
    </form>                         
  </body>
</html>
