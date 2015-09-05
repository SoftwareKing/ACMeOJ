package com.xujin.oj.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.jboss.logging.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xujin.oj.auth.AuthClass;
import com.xujin.oj.auth.AuthMethod;
import com.xujin.oj.dto.UserDto;
import com.xujin.oj.model.ChannelTree;
import com.xujin.oj.model.Role;
import com.xujin.oj.model.RoleType;
import com.xujin.oj.model.User;
import com.xujin.oj.service.ChannelService;
import com.xujin.oj.service.GroupService;
import com.xujin.oj.service.IndexService;
import com.xujin.oj.service.RoleService;
import com.xujin.oj.service.UserService;

@RequestMapping("/admin/user")
@Controller("useradminController")
@AuthClass("login")//登录用户可能访问
public class UserAdminController {
	
	@Resource(name="indexService")
    private IndexService indexService;
	
	@Resource(name="userService")
    private UserService userService;
	
	@Resource(name="groupService")
	private GroupService groupService;
	
	@Resource(name="roleService")
	private RoleService roleService;
	
	
	@Resource(name="channelService")
	private ChannelService channelService;
	
	
	@RequestMapping("/users")
	public String list(Model model)
	{
		
		model.addAttribute("datas",userService.findUser());
		return "user/list";
		
		
	}
	//查询出，用户组或角色
	private void initAddUser(Model model) {
		model.addAttribute("roles",roleService.listRole());
		model.addAttribute("groups", groupService.listGroup());
	}
	
	//添加User的UI
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("userDto",new UserDto());//user,user
		initAddUser(model);
		return "user/add";
	}
	
	//添加User操作
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String add(@Valid UserDto userDto,BindingResult br,Model model) {
		if(br.hasErrors()) {
			initAddUser(model);
			return "user/add";
		}
		userService.add(userDto.getUser(), userDto.getRoleIds(), userDto.getGroupIds());
		indexService.generateTopR();//刷新前台topRankList
		return "redirect:/admin/user/users";
	}
	
	@RequestMapping(value="/update/{id}",method=RequestMethod.GET)
	public String update(@PathVariable int id,Model model) {
		User u = userService.load(id);
		model.addAttribute("userDto",new UserDto(u,
				userService.listUserRoleIds(id),
				userService.listUserGroupIds(id)));//user,user
		initAddUser(model);
		
		return "user/update";
	}
	
	@RequestMapping(value="/update/{id}",method=RequestMethod.POST)
	public String update(@PathVariable int id,@Valid UserDto userDto,BindingResult br,Model model) {
		if(br.hasErrors()) {
			initAddUser(model);
			return "user/update";
		}
		User ou = userService.load(id);//获取原来用户的对象
		//设置需要改的属性
		ou.setNickname(userDto.getNickname());
		ou.setPhone(userDto.getPhone());
		ou.setEmail(userDto.getEmail());
		ou.setStatus(userDto.getStatus());
		//设置完毕，然后更新数据库
		userService.update(ou, userDto.getRoleIds(), userDto.getGroupIds());
		indexService.generateTopR();//刷新前台topRankList
		return "redirect:/admin/user/users";
	}
	
	//按ID删除
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		userService.delete(id);
		return "redirect:/admin/user/users";
	}
	
	@RequestMapping(value="/updateStatus/{id}",method=RequestMethod.GET)
	public String updateStatus(@PathVariable int id) {
		userService.updateStatus(id);
		return "redirect:/admin/user/users";
	}
	
	@RequestMapping(value="/{id}",method=RequestMethod.GET)
	public String show(@PathVariable int id,Model model) {
		model.addAttribute(userService.load(id));
		model.addAttribute("gs",userService.listUserGroups(id));
		model.addAttribute("rs",userService.listUserRoles(id));
		return "user/show";
	}
	
	//显示个人信息
	@RequestMapping("/showSelf")
	@AuthMethod
	public String showSelf(Model model,HttpSession session) {
		User user = (User)session.getAttribute("loginUser");
		model.addAttribute(user);
		model.addAttribute("gs",userService.listUserGroups(user.getId()));
		model.addAttribute("rs",userService.listUserRoles(user.getId()));
		return "user/show";
	}
	
	@RequestMapping(value="/updatePwd",method=RequestMethod.GET)
	@AuthMethod
	public String updatePwd(Model model,HttpSession session) {
		User u = (User)session.getAttribute("loginUser");
		model.addAttribute(u);
		return "user/updatePwd";
	}
	
	@RequestMapping(value="/updatePwd",method=RequestMethod.POST)
	@AuthMethod
	public String updatePwd(int id,String oldPwd,String password) {
		userService.updatePwd(id, oldPwd, password);
		return "redirect:/admin/user/showSelf";
	}
	
	
	@RequestMapping(value="/updateSelf",method=RequestMethod.GET)
	@AuthMethod
	public String updateSelf(Model model,HttpSession session) {
		User u = (User)session.getAttribute("loginUser");
		model.addAttribute(new UserDto(u));
		return "user/updateSelf";
	}
	
	@RequestMapping(value="/updateSelf",method=RequestMethod.POST)
	@AuthMethod
	public String updateSelf(@Valid UserDto userDto,BindingResult br,Model model,HttpSession session) {
		if(br.hasErrors()) {
			return "user/updateSelf";
		}
		User ou = userService.load(userDto.getId());
		ou.setNickname(userDto.getNickname());
		ou.setPhone(userDto.getPhone());
		ou.setEmail(userDto.getEmail());
		userService.update(ou);
		session.setAttribute("loginUser", ou);
		return "redirect:/admin/user/showSelf";
	}
	
	
	/************************用户所管理的栏目**************************************/
	//一般用户管理的栏目树列表
	@RequestMapping("/listChannels/{uid}")
	public String listChannels(@PathVariable int uid,Model model) {
		model.addAttribute(userService.load(uid));
		List<Role> rs = userService.listUserRoles(uid);
		for(Role r:rs) {
			if(r.getRoleType()==RoleType.ROLE_ADMIN) {
				model.addAttribute("uAdmin",1);
			}
		}
		return "/user/listChannel";
	}
	
	//管理员用户管理的栏目树列表
	@RequestMapping("/userTree/{uid}")
	public @ResponseBody List<ChannelTree> groupTree(@PathVariable Integer uid,@Param Integer isAdmin) {
		if(isAdmin!=null&&isAdmin==1) {
			return channelService.generateTree();
		}
		return groupService.generateUserChannelTree(uid);
	}
	/**************************************************************/
	
}
