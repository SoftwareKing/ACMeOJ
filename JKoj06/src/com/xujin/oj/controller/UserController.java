package com.xujin.oj.controller;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.basic.model.SystemContext;
import com.xujin.oj.auth.AuthClass;
import com.xujin.oj.dto.UserDto;
import com.xujin.oj.model.CmsException;
import com.xujin.oj.model.Role;
import com.xujin.oj.model.RoleType;
import com.xujin.oj.model.User;
import com.xujin.oj.model.UserCmsException;
import com.xujin.oj.ojmodel.SourceCode;
import com.xujin.oj.service.IndexService;
import com.xujin.oj.service.SolutionService;
import com.xujin.oj.service.SourceCodeService;
import com.xujin.oj.service.UserService;
import com.xujin.oj.utils.SecurityUtil;
import com.xujin.oj.web.CmsSessionContext;

@RequestMapping("/user")
@Controller("userController")
@AuthClass("login")//登录用户可能访问
public class UserController {
	
	@Resource(name="userService")
    private UserService userService;
	
	@Resource(name="indexService")
	private IndexService indexService;
	
	@Resource(name="solutionService")
	private SolutionService solutionService;
	
	@Resource(name="sourceCodeService")
	private SourceCodeService sourceCodeService;
	
	
	
	//User注册的UI
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerUI(Model model) {
		model.addAttribute("userDto",new UserDto());//user,user
		return "user/register";
	}
	
	//添加User操作
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@Valid UserDto userDto,String checkcode,BindingResult br,Model model,HttpSession session) {
		
		String cc = (String)session.getAttribute("cc");
		if(!cc.equals(checkcode)) {
			model.addAttribute("userError","验证码出错，请重新输入");
			return "user/register";
		}
		if(br.hasErrors()) {
			return "user/register";
		}
	    Integer[] roleIds={4};
	    Integer[] GroupIds={4};
		userDto.setGroupIds(GroupIds);
		userDto.setRoleIds(roleIds);
		userDto.setStatus(1);
		userService.add(userDto.getUser(), userDto.getRoleIds(), userDto.getGroupIds());
		session.removeAttribute("cc");
		indexService.generateTopR();//刷新前台topRankList
		return "redirect:/user/login";
	}
	
	
	private boolean isRole(List<Role> rs,RoleType rt) {
		for(Role r:rs) {
			if(r.getRoleType()==rt) return true;
		}
		return false;
	}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		return "user/login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,String checkcode,Model model,HttpSession session) {
		
		String cc = (String)session.getAttribute("cc");
		if(!cc.equals(checkcode)) {
			//UserCmsException userCmsException=new UserCmsException("验证码出错，请重新输入");
			UserCmsException userCmsException=new UserCmsException("验证码出错，请重新输入.");
			model.addAttribute("userError",userCmsException);
			return "user/login";
		}
		User loginUser = userService.userlogin(username, password);
		if(loginUser==null) 
		{
			UserCmsException userCmsException=new UserCmsException("用户名或者密码不正确");
			  model.addAttribute("userError",userCmsException);
			  return "/userError";
		}
		else if(loginUser!=null) {
				try {
					if(!SecurityUtil.md5(username,password).equals(loginUser.getPassword())) {
						UserCmsException userCmsException=new UserCmsException("用户名或者密码不正确");
						model.addAttribute("userError",userCmsException);
						 return "/userError";
					}
					
				} catch (NoSuchAlgorithmException e) {
					UserCmsException userCmsException=new UserCmsException("密码加密失败");
					 model.addAttribute("userError",userCmsException);
					 return "/userError";
				}
		}
		else {
			//判断用户状态，停用状态停，不可以登录，联系管理员处理
			if(loginUser.getStatus()==0) 
			{
				UserCmsException userCmsException=new UserCmsException("用户已经停用，请与管理员联系");
				model.addAttribute("userError",userCmsException);
               return "/userError";
			}
		}
		
		session.setAttribute("loginUser", loginUser);
		List<Role> rs = userService.listUserRoles(loginUser.getId());
		boolean isUser = isRole(rs,RoleType.Role_User);
		session.setAttribute("isUser", isUser);
		session.removeAttribute("cc");
		CmsSessionContext.addSessoin(session);
		indexService.generateTopR();//刷新前台topRankList
		return "redirect:/index/";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		CmsSessionContext.removeSession(session);
		session.invalidate();
		return "redirect:/index/";
	}
	@RequestMapping("/zone")
	public String UserZone(HttpSession session) {
		
		return "user/zone/UserZone";
	}
	//用户解决问题排名
	@RequestMapping(value="/ranklist",method=RequestMethod.GET)
	public String standings(Model model)
	{
		model.addAttribute("datas",this.userService.getStandings(null));
		return "user/ranklist";
		
	}
	/*-----------------------------------自己写的--------------------------------------------------*/
	//用户解决问题排名
	@RequestMapping(value="/ranklist/Solved",method=RequestMethod.GET)
	public String standingsBySolved(Model model)
	{
		model.addAttribute("datas",this.userService.getStandings("solved"));
		return "user/ranklist";
		
	}
	//用户解决问题排名
	@RequestMapping(value="/ranklist/rate",method=RequestMethod.GET)
	public String standingsByRate(Model model)
	{
		model.addAttribute("datas",this.userService.getStandings("rate"));
		return "user/ranklist";
		
	}
	//用户解决问题排名
	@RequestMapping(value="/ranklist/{pm}",method=RequestMethod.POST)
	public String standingsBypm(Model model,String pm)
	{
		model.addAttribute("datas",this.userService.getStandings(pm));
		return "user/ranklist";
		
	}
	
	
	//用户按username查询解决问题排名
	@RequestMapping(value="/ranklistquery",method=RequestMethod.POST)
	public String standingsByUsername(Model model,String username)
	{
		model.addAttribute("datas",this.userService.getStandings(username));
		return "user/ranklist";
		
	}
	
	
	
	
	/*-----------------------------------自己写的--------------------------------------------------*/
	
	/*
	 * 访问个人空间
	 */
	@RequestMapping("/selfzone")
	public String userInfo()
	{
		return "user/zone/UserZone";	
	}	
	/*
	 * 查询个人源码
	 */
	@RequestMapping(value="/selfSource/{id}",method=RequestMethod.GET)
	public String selfSource(@PathVariable int id,Model model)
	{
		SourceCode sc=sourceCodeService.load(id);
		if(sc==null){
			model.addAttribute("userError","未找到相应源码");
			return "user/zone/UserZone";
		}
		model.addAttribute("sourceCode",sc);
		return "user/zone/selfSource";	
	}	
	/*
	 * 查找自己已ACE题目
	 */
	@RequestMapping(value="/aceproblem",method=RequestMethod.GET)
	public String userAce(Model model,HttpSession session){
		SystemContext.setPageSize(20);
		User u = (User)session.getAttribute("loginUser");
		String username=u.getUsername();
		model.addAttribute("datas",solutionService.findSolutionByUserName(username));
		return "user/zone/aceproblem";
	}
	/*
	 * 用户日志
	 */
	@RequestMapping(value="/userlogs",method=RequestMethod.GET)
	public String userLogs(Model model,HttpSession session){
		SystemContext.setPageSize(20);
		User u = (User)session.getAttribute("loginUser");
		String username=u.getUsername();
		model.addAttribute("datas",solutionService.findLogByUserName(username));
		return "user/zone/userlogs";
	}
	/*---------------------------------------------------------------------------------------*/
	/*
	 * 登录用户查看其他用户信息
	 */
	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public String show(@PathVariable int id,Model model) {
		model.addAttribute(userService.load(id));
		return "user/zone/anotherVisit";
	}
	/*
	 * 访问其他用户ACE题目信息
	 */
	@RequestMapping(value="/aceproblem/{id}",method=RequestMethod.GET)
	public String visitUserAce(@PathVariable int id,Model model) {
		SystemContext.setPageSize(20);
		User u=userService.load(id);
		String username=u.getUsername();
		model.addAttribute(userService.load(id));
		model.addAttribute("datas",solutionService.findLogByUserName(username));
		return "user/zone/visitUserAce";
	}
	/*--------------------------------------------------------------------------------------*/
	
	/*
	 * 用户修改个人密码
	 */
	@RequestMapping(value="/updatePwd",method=RequestMethod.GET)
	public String updatePwd(Model model,HttpSession session) {
		User u = (User)session.getAttribute("loginUser");
		model.addAttribute(u);
		return "user/zone/updatePwd";
	}
	
	@RequestMapping(value="/updatePwd",method=RequestMethod.POST)
	public String updatePwd(int id,String oldPwd,String password) {
		userService.updatePwd(id, oldPwd, password);
		return "redirect:/user/zone";
	}
	
	/*
	 * 用户修改个人数据
	 */
	@RequestMapping(value="/updateSelf",method=RequestMethod.GET)
	public String updateSelf(Model model,HttpSession session) {
		User u = (User)session.getAttribute("loginUser");
		model.addAttribute(new UserDto(u));
		return "user/zone/updateSelf";
	}
	
	@RequestMapping(value="/updateSelf",method=RequestMethod.POST)
	public String updateSelf(@Valid UserDto userDto,BindingResult br,Model model,HttpSession session) {
		if(br.hasErrors()) {
			return "user/zone/updateSelf";
		}
		User ou = userService.load(userDto.getId());
		ou.setNickname(userDto.getNickname());
		ou.setPhone(userDto.getPhone());
		ou.setEmail(userDto.getEmail());
		ou.setSchool(userDto.getSchool());
		userService.update(ou);
		session.setAttribute("loginUser", ou);
		return "redirect:/user/zone/";
	}
	
	
}
