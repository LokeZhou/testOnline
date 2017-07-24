package com.ttc.ssm.controller;

import java.util.ArrayList;
import java.util.List;

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
import com.ttc.ssm.po.User;
import com.ttc.ssm.service.UserService;

@Controller
//为了对url进行分类管理 ，可以在这里定义根路径，最终访问url是根路径+子路径
//比如：用户登陆：/user/login.action
@RequestMapping("/user")
public class IndexController {
	
	@Autowired
	UserService userService;
	
	User insertUser=new User();
	User loginUser;
	@RequestMapping("/login")
	public ModelAndView login(){
		       //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		
				//指定视图
				modelAndView.setViewName("user/login");
				
				return modelAndView;
		
	}
	
	@RequestMapping("/loginSubmit")
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
					return  "user/infomationCenter";
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
		return "user/login";
		
	}
	@RequestMapping("/register")
	public ModelAndView register(){
		       
		        insertUser.setUserId(userService.checkMaxId()+1);
		        //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		
				//指定视图
				modelAndView.setViewName("user/register");
				
				return modelAndView;
		
	}
	
	@RequestMapping("/registerSubmit")
	public String submit(Model model,HttpServletRequest request,@Validated(value={ValidGroup1.class}) User  user, BindingResult bindingResult){
		if(bindingResult.hasErrors()){
			List<ObjectError> allErrors = bindingResult.getAllErrors();
			
			// 将错误信息传到页面
			model.addAttribute("allErrors", allErrors);
			
			
			// 出错重新到注册页面
			return "user/register";
		}
		       insertUser.setUserName(user.getUserName());
		       insertUser.setUserPassword(user.getUserPassword());
		       insertUser.setUserTelephone(user.getUserTelephone());
		       insertUser.setUserEmail(user.getUserEmail());
		       insertUser.setUserSex(user.getUserSex());
		       userService.insert(insertUser);
		       
		      
		       String message1="你的账号ID号为：";
		       String message2="你的账号密码为：";
		       model.addAttribute("insertUser",insertUser);
		       model.addAttribute("message1",message1);
		       model.addAttribute("message2",message2);
		    		   
		      return "user/registerAfter";
	}
	
	@RequestMapping("/upload")
	public ModelAndView upload(){
		       
		        //返回ModelAndView
				ModelAndView modelAndView =  new ModelAndView();
		
				//指定视图
				modelAndView.setViewName("user/upload");
				
				return modelAndView;
		
	}
	
	@RequestMapping("/uploadSubmit")
	public String uploadSubmit(){
		       
				
				return "success";
		
	}
	
	
	
}
