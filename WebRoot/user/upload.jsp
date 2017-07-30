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
     <style type="text/css"> 
       body{ text-align:center;background-image:url(./images/blackgroud.jpg)  } 
       .div{ margin-top:100px; margin-left:300px;width:700px; height:100px; } 
      /* css注释：为了观察效果设置宽度 边框 高度等样式 */ 
     </style> 
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
	       
	    }
	    if(x==1)
	     {
	        document.getElementById("tip"+x).style.display="block";
	        start.style.display="none";
	        type.style.display="none";
	        questions.style.display="none";
	        
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
  
  <body >
  <div class="div" >
   <form name="pull" method="post">
       <div class="textbox-group clearfix" id="type">
                <label class="label">题目类型</label>
                <input type="radio" name="type" id="intelligence" class="ml43 fn-left mt9" value="intelligence">
				<label for="intelligence" class="intelligence fn-left">智力测试</label>
                <span class="note"></span>
                <input type="radio" name="type" id="character" class="ml43 fn-left mt9" value="character">
				<label for="professional" class="professional fn-left">性格测试</label>
                <span class="note"></span>
                <input type="radio" name="type" id="professional" class="ml43 fn-left mt9" value="professional">
				<label for="professional" class="professional fn-left">职业性格测试</label>
                <span class="note"></span>
     </div>
     <!--    <div class="textbox-group  textbox-group-questions" data-model="questions" data-controltype="TextBoxGroup" id="questions">
                <label class="label">题目数</label>
                <input class="textbox" type="text" id ="number" name="questions" placeholder="请输入题量（10）" autocomplete="off" />
                <span class="note"></span>
     </div> -->
     <div><button class="btn btn-orange" id="start" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(1)">确定</button>
     </div>
    
      
 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip1"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目一</label>
                <textarea  name="questionsList[0].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[0].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[0].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[0].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[0].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[0].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[0].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[0].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[0].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[0].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(2)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip2"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目二</label>
                <textarea  name="questionsList[1].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[1].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[1].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[1].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[1].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[1].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[1].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[1].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[1].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[1].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(3)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip3"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目三</label>
                <textarea  name="questionsList[2].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[2].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[2].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[2].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[2].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[2].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[2].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[2].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[2].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[2].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(4)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip4"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目四</label>
                <textarea  name="questionsList[3].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[3].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[3].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[3].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[3].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[3].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[3].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[3].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[3].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[3].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(5)">下一题</button>
        </div>
     </div>    
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip5"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目五</label>
                <textarea  name="questionsList[4].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[4].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[4].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[4].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[4].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[4].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[4].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[4].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[4].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[4].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(6)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip6"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目六</label>
                <textarea  name="questionsList[5].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[5].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[5].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[5].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[5].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[5].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[5].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[5].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[5].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[5].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(7)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip7"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目七</label>
                <textarea  name="questionsList[6].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[6].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[6].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[6].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[6].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[6].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[6].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[6].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[6].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[6].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(8)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip8"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目八</label>
                <textarea  name="questionsList[7].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[7].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[7].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[7].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[7].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[7].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[7].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[7].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[7].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[7].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(9)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip9"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目九</label>
                <textarea  name="questionsList[8].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[8].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[8].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[8].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[8].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[8].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[8].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[8].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[8].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[8].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(10)">下一题</button>
        </div>
     </div> 
     <div  style="background-color:#F9F9F9;height:300px;display:none;font-size:15pt;font-family:'微软雅黑';"  id="tip10"  >     
            <div class="textbox-group countrycode-fix" data-model="name" data-controltype="TextBoxGroupUserName">
                <label class="label">题目十</label>
                <textarea  name="questionsList[9].content" style="width:600px; height:150px;"></textarea>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">A答案</label>
                <input class="textbox" type="text" name="questionsList[9].answera"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">B答案</label>
                <input class="textbox" type="text" name="questionsList[9].answerb"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">c答案</label>
                <input class="textbox" type="text" name="questionsList[9].answerc"  style="width:200px; height:20px;" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">D答案</label>
                <input class="textbox" type="text" name="questionsList[9].answerd"  style="width:200px; height:20px;"/>
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
            
            <div class="textbox-group clearfix" >
                <label class="label">正确答案</label>
                <input type="radio" name="questionsList[9].answer" id="a" class="fn-left mt9" value="A">
				<label for="a" class="sex nan fn-left">A</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[9].answer" id="b" class="fn-left mt9" value="B">
				<label for="b" class="sex nan fn-left">B</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[9].answer" id="c" class="fn-left mt9" value="C">
				<label for="c" class="sex nan fn-left">C</label>
				<span class="note"></span>
				<input type="radio" name="questionsList[9].answer" id="d" class="fn-left mt9" value="D">
				<label for="d" class="sex nan fn-left">D</label>
				<span class="note"></span>
            </div>
             <div class="textbox-group" data-model="password" data-controltype="TextBoxGroupPassword">
                <label class="label">分数</label>
                <input class="textbox" type="text" name="questionsList[9].grade"  maxlength="20" />
                <span class="note"></span>
                    <span class="safe-grade safe-grade-hidden">
                    </span>
            </div>
        <div class="textbox-group textbox-group-submit">
                <button class="btn btn-orange" data-model="submitBtn" data-controltype="Button" type="button" onclick="showtip(11)">提交</button>
        </div>
     </div> 
    </form>  
   </div>                     
  </body>
</html>
