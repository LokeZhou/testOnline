package com.ttc.ssm.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ttc.ssm.controller.validation.ValidGroup1;
import com.ttc.ssm.controller.validation.ValidGroup2;
import com.ttc.ssm.controller.validation.ValidGroup3;
import com.ttc.ssm.controller.validation.ValidGroup4;
import com.ttc.ssm.po.Library;
import com.ttc.ssm.po.ListQuestionVo;
import com.ttc.ssm.po.Question;
import com.ttc.ssm.po.User;
import com.ttc.ssm.po.UserRecord;
import com.ttc.ssm.service.LibraryService;
import com.ttc.ssm.service.QuestionService;
import com.ttc.ssm.service.RecordService;
import com.ttc.ssm.service.UserService;

@Controller
//为了对url进行分类管理 ，可以在这里定义根路径，最终访问url是根路径+子路径
//比如：用户登陆：/user/login.action
//@RequestMapping("/user")
public class IndexController {
	
	@Autowired
	UserService userService;
	@Autowired
	LibraryService libraryService;
	@Autowired
	QuestionService questionService;
	@Autowired
	RecordService recordService;
	
	User insertUser=new User();
	User loginUser=new User();
	Library insertLibrary=new Library();
	Library testLibrary=new Library();
	UserRecord insertRecord=new UserRecord();
	//选择类型
	String  selectType=new String();
	/*登陆*/
	@RequestMapping("/user/login")
	public ModelAndView login(){
		       //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		
				//指定视图
				modelAndView.setViewName("login");
				
				return modelAndView;
		
	}
	/*注销*/
	@RequestMapping("user/logout")
	public ModelAndView logout(){
		  loginUser.Init();
		 
		
		//返回ModelAndView
		  ModelAndView modelAndView =  new ModelAndView();

		//指定视图
		  modelAndView.setViewName("home");
		
		  return modelAndView;
	}
	/*登陆验证*/
	@RequestMapping("user/loginSubmit")
	public String loginSubmit(Model model,HttpServletRequest request,@Validated(value={ValidGroup2.class}) User  user, BindingResult bindingResult){
		
		
		ArrayList<User> userList=userService.getUserList();
		for(int i=0;i<userList.size();i++)
		{
			User temp=(User)userList.get(i);
					
			if(temp.getUserId()==user.getUserId())
			{
				if(temp.getUserPassword().equals(user.getUserPassword()))
				{
					loginUser=new User(temp);
					model.addAttribute("loginUser",loginUser);
					if(loginUser.getUserRank().equals("admin"))
					{
						return "rootLoginAfter";  //管理员登陆
					}
					else
					return  "userLoginAfter";    //普通用户登陆
				}	
			}
			else {
				continue;
			}
			
		}
		
		if(bindingResult.hasErrors()){
			List<ObjectError> allErrors = bindingResult.getAllErrors();
			
			// 将错误信息传到页面
			model.addAttribute("allErrors", allErrors);
			
		}
        String errorMessage="用户ID或密码错误！";
        model.addAttribute("errorMessage", errorMessage);
		// 出错重新到登陆页面
		return "login";
		
	}
	/*个人中心*/
	@RequestMapping("user/info")
	public ModelAndView info(Model model,HttpServletRequest request){
		       
		        model.addAttribute("loginUser",loginUser);
		        //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		
				//指定视图
				modelAndView.setViewName("info");
				
				return modelAndView;
		
	}
	/*注册*/
	@RequestMapping("user/register")
	public ModelAndView register(){
		       
		        
		        
		        //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		
				//指定视图
				modelAndView.setViewName("register");
				
				return modelAndView;
		
	}
	/*注册提交*/
	@RequestMapping("user/registerSubmit")
	public String submit(Model model,HttpServletRequest request,@Validated(value={ValidGroup1.class}) User  user, BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			List<ObjectError> allErrors = bindingResult.getAllErrors();
			
			// 将错误信息传到页面
			model.addAttribute("allErrors", allErrors);
			
			
			// 出错重新到注册页面
			return "register";
		}
		      //注册用户添进数据库
		       insertUser.setUserId(userService.checkMaxId()+1);
		       insertUser.setUserName(user.getUserName());
		       insertUser.setUserPassword(user.getUserPassword());
		       insertUser.setUserRank("commonUser");
		       insertUser.setUserTelephone(user.getUserTelephone());
		       insertUser.setUserEmail(user.getUserEmail());
		       insertUser.setUserSex(user.getUserSex());
		       userService.insert(insertUser);

		      
		       String message1="你的账号ID号为：";
		       String message2="你的账号密码为：";
		       model.addAttribute("insertUser",insertUser);
		       model.addAttribute("message1",message1);
		       model.addAttribute("message2",message2);
		    		   
		      return "registerAfter";
	}
	/*上传题目*/
	@RequestMapping("user/upload")
	public ModelAndView upload(){
		       
		   
		        //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		    
				//指定视图
				modelAndView.setViewName("upload");
				
				
				return modelAndView;
		
	}
	/*提交长传*/
	@RequestMapping("/user/uploadSubmit")
	public String uploadSubmit(Model model,HttpServletRequest request, ListQuestionVo  listQuestionVo,Library library){
		       
		       insertLibrary.setUserid(loginUser.getUserId());
		       insertLibrary.setVersions(libraryService.checkMaxVersionByPrimaryKey(insertLibrary.getUserid())+1);
		       insertLibrary.setType(library.getType());
		       insertLibrary.setQuestions(10);
		       libraryService.insert(insertLibrary);
		       loginUser.setUpload(loginUser.getUpload()+1);
		       userService.updateByPrimaryKeySelective(loginUser);
		       
		       
		    
		       Question[]  insertQuestionsList=listQuestionVo.getQuestionsList();
		
		       for(int i=0;i<insertLibrary.getQuestions();i++)
		          {
		    	     insertQuestionsList[i].setUserid(insertLibrary.getUserid());
		    	     insertQuestionsList[i].setVersions(insertLibrary.getVersions());
		    	    // System.out.print(insertQuestionsList[i].getContent());
		    	     questionService.insert(insertQuestionsList[i]);
		    	
		          }
			   return "rootLoginAfter";
		
	}
	/*测试选择*/
	@RequestMapping("user/testSelect")
	public String testSelect(Model model,HttpServletRequest request)
	{
		String commonUser="commonUser";
		String platinumUser="platinumUser";
		ArrayList<String> typeList=new ArrayList<String>();
		typeList.add("智力测试");
		
		if((loginUser.getUserRank().equals(commonUser)||loginUser.getUserRank().equals(platinumUser)||loginUser.getUserRank().equals("admin"))&&loginUser.getUserId()!=null)
		{
			typeList.add("性格测试");
			if(loginUser.getUserRank().equals(platinumUser)||loginUser.getUserRank().equals("admin"))
				typeList.add("职业性格测试");
		}
		
		model.addAttribute("typeList",typeList);
	    return "testSelect";
	    
	}
	/*测试*/
	@RequestMapping("user/test")
	public String testSelect(Model model,HttpServletRequest request,String typeSelect)
	{
		
		if(typeSelect.equals("1"))
			 selectType="intelligence";
		if(typeSelect.equals("2"))
		     selectType="character";
		if(typeSelect.equals("3"))
			 selectType="professional";
		//随机抽取匹配题库
		ArrayList<Integer>  versionList=libraryService.selectByType(selectType);
		Random random=new Random();
		int index=random.nextInt(versionList.size());
		
		testLibrary.setUserid(0);
		testLibrary.setVersions(versionList.get(index));
		ArrayList<Question> Questionlist=questionService.getQuestionList(testLibrary);
		
		if(loginUser.getUserId()!=null)
		{
		//set记录
	      insertRecord.setType(selectType);
	      insertRecord.setVersion(versionList.get(index));
	      
		}
		
		model.addAttribute("Questionlist",Questionlist);
		model.addAttribute("selectType", selectType);
		return "test";
	}
	/*测试提交*/
	@RequestMapping("user/testSubmit")
	public String testSubmit(Model model,HttpServletRequest request,ListQuestionVo  listQuestionVo)
	{
		//获取答案
		String[]  answerList=listQuestionVo.getAnswerList();
		ArrayList<Question> Questionlist=questionService.getQuestionList(testLibrary);
	
		int intelligenceTotalScore=0; //智力测试成绩
		String intelligenceDescription=null;//智力结果描述
		boolean intelligenceFlag=false;
		
		int characterTotalScore=0;    //性格测试成绩
		String characterDescription=null; //性格结果描述
		boolean characterFlag=false;
		
		ArrayList<Integer> professionalScoreList=new ArrayList<Integer>();
		int resultIndex=0;
		String professionalDescription=null; //职业结果描述
		boolean professionalFlag=false;
		
		//智力测试成绩
		if(selectType.equals("intelligence"))
		  {
			intelligenceFlag=true;
			for(int i=0;i<Questionlist.size();i++)
			{
				if(answerList[i].equals(Questionlist.get(i).getAnswer()))
					intelligenceTotalScore+=Questionlist.get(i).getGrade();
			}
		  }
		//性格测试成绩
		if(selectType.equals("character"))
		  {
			characterFlag=true;
			for(int i=0;i<Questionlist.size();i++)
			{
				if(answerList[i].equals("A"))
					characterTotalScore+=10;
				else if(answerList[i].equals("B"))
					characterTotalScore+=5;
				else if(answerList[i].equals("C"))
					characterTotalScore+=1;
			}
		  }
		//职业测试成绩
		if(selectType.equals("professional"))
		{
			int[] score=new int[10];
			professionalFlag=true;
			for(int i=0;i<Questionlist.size();i++)
			{
				if(answerList[i].equals("A"))
					score[i]+=10;
				else if(answerList[i].equals("B"))
					score[i]+=5;
				else if(answerList[i].equals("C"))
					score[i]+=1;
			}
			professionalScoreList.add(score[0]+score[1]);
			professionalScoreList.add(score[2]+score[3]);
			professionalScoreList.add(score[4]+score[5]);
			professionalScoreList.add(score[6]+score[7]);
			professionalScoreList.add(score[8]+score[9]);
			int maxScore=Collections.max(professionalScoreList);
			for(int i=0;i<professionalScoreList.size();i++)
			{
				if(maxScore==professionalScoreList.get(i))
					{
					   resultIndex=i;
					   break;
					}
			}
			
		}
	  //智力测试结果
		if(intelligenceFlag==true)
		{
			if(intelligenceTotalScore>=90)
				intelligenceDescription="天才智力！";
			if(intelligenceTotalScore>=70 && intelligenceTotalScore<90)
				intelligenceDescription="常才智力！";
			if(intelligenceTotalScore>=50&& intelligenceTotalScore<70)
				intelligenceDescription="正常智力！";
			if(intelligenceTotalScore>=40&& intelligenceTotalScore<50)
				intelligenceDescription="轻度落后正常智力！";
			if(intelligenceTotalScore>=20&& intelligenceTotalScore<40)
				intelligenceDescription="痴鲁智力！";
			if(intelligenceTotalScore<20)
				intelligenceDescription="白痴！！！---------------------------->三分钟后过期无效。不必伤悲，据说天才往往是不正常滴！^-^";
			insertRecord.setDescription(intelligenceDescription);
			insertRecord.setScore(intelligenceTotalScore);
			model.addAttribute("intelligenceDescription", intelligenceDescription);
			model.addAttribute("intelligenceTotalScore",intelligenceTotalScore);
		}
		//性格测试结果
		if(characterFlag==true)
		{
			if(characterTotalScore>90)
				characterDescription="EQ高手！你的情绪聪明是你事业有成的一个重要前提条件";
			if(characterTotalScore>=70 && characterTotalScore<90)
				characterDescription="EQ较高，你是一个快乐的人，不易恐惊担忧，对于工作你热情投入、敢于负责，你为人更是正义正直、同情关怀";
			if(characterTotalScore>=50 && characterTotalScore<70)
				characterDescription="EQ一般，对于一件事，你不同时候的表现可能不一，这与你的意识有关,但这种意识不是常常都有";
			if(characterTotalScore<50)
				characterDescription="EQ较低，你常常不能控制自己，你极易被自己的情绪所影响。很多时候，你轻易被击怒、动火、发脾气";
			insertRecord.setDescription(characterDescription);
			insertRecord.setScore(characterTotalScore);
			model.addAttribute("characterDescription",characterDescription);
			model.addAttribute("characterTotalScore", characterTotalScore);
			
		}
		//职业测试分析
		if(professionalFlag==true)
		{
			if(resultIndex==0)
				professionalDescription="现实型  如：技术性职业（计算机硬件人员、摄影师、制图员、机械装配工），技能性职业（木匠、厨师、技工、修理工、农民、一般劳动）";
			if(resultIndex==1)
				professionalDescription="研究型  如：科学研究人员、教师、工程师、电脑编程人员、医生、系统分析员。";
			if(resultIndex==2)
				professionalDescription="艺术型 如：艺术方面（演员、导演、艺术设计师、雕刻家、建筑师、摄影家、广告制作人） 音乐方面（歌唱家、作曲家、乐队指挥）文学方面（小说家、诗人、剧作家）";
			if(resultIndex==3)
				professionalDescription="社会型 如: 教育工作者（教师、教育行政人员）， 社会工作者（咨询人员、公关人员）";
			if(resultIndex==4)
				professionalDescription="企业型  如：项目经理、销售人员，营销管理人员、政府官员、企业领导、法官、律师。";
			insertRecord.setDescription(professionalDescription);
			insertRecord.setScore(0);
			model.addAttribute("professionalDescription",professionalDescription);
		}
		
		if(loginUser.getUserId()!=null)
		//更新测试记录
		{
			loginUser.setTestTime(loginUser.getTestTime()+1);
		    userService.updateByPrimaryKeySelective(loginUser);
		    //将测试记录插入数据库
		    insertRecord.setUserid(loginUser.getUserId());
		    recordService.insert(insertRecord);
		}
		model.addAttribute("loginUser",loginUser);
		return "testResult";
	}
	/*管理员查看题库*/
	@RequestMapping("/user/checkLibrary")
	public String checkLibrary(Model model,HttpServletRequest request)
	{
		ArrayList<Library>  librarieList=libraryService.getLibraryList();
		
		for(int i=0;i<librarieList.size();i++)
		{
			if(librarieList.get(i).getType()==null ||librarieList.get(i).getQuestions()!=10)
			{
				librarieList.remove(i);
				continue;
			}
			if(librarieList.get(i).getType().equals("intelligence"))
				librarieList.get(i).setType("智力测试");
			if(librarieList.get(i).getType().equals("character"))
				librarieList.get(i).setType("性格测试");
			if(librarieList.get(i).getType().equals("professional"))
				librarieList.get(i).setType("职业性格测试");
		}
		model.addAttribute("librarieList",librarieList);
		return "libraryList";
	}
	/*删除题目*/
	@RequestMapping("/user/delectLibrary")
	public String DelectLibrary(Model model,HttpServletRequest request,int delectVersions)
	{
		Library index=new Library();
		index.setUserid(0);
		index.setVersions((delectVersions-1));
		libraryService.deleteByPrimaryKey(delectVersions-1);
		questionService.deleteByPrimaryKey(index);	
		
		return "rootLoginAfter";
	}
	/*会员升级*/
	@RequestMapping("/user/Upgrade")
	public String Upgrade(Model model,HttpServletRequest request)
	{
		loginUser.setUserRank("platinumUser");
		userService.updateByPrimaryKeySelective(loginUser);
		return "upgrade";
	}
	/*查看历史记录*/
	@RequestMapping("/user/checkRecord")
	public String checkRecord(Model model,HttpServletRequest request)
	{
		ArrayList<UserRecord> recordList =recordService.getRecordListByPrimaryKey(loginUser.getUserId());
		model.addAttribute("recordList",recordList);
		return "record";
	}
}
