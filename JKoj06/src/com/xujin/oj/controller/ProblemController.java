package com.xujin.oj.controller;

import java.util.Date;
//import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.xujin.basic.model.Pager;
import com.xujin.basic.model.SystemContext;
import com.xujin.oj.auth.AuthClass;
import com.xujin.oj.auth.AuthMethod;
import com.xujin.oj.model.User;
//import com.xujin.oj.ojmodel.Contest;
import com.xujin.oj.ojmodel.Problem;
import com.xujin.oj.service.IndexService;
import com.xujin.oj.service.ProblemService;


@Controller("problemController")
@AuthClass("login")
public class ProblemController {

	@Resource(name="problemService")
	private ProblemService problemService;
	
	private IndexService indexService;
	
	@RequestMapping(value="/admin/problem/problems",method=RequestMethod.GET)
	@AuthMethod//表示只能管理员访问
	public String problem(Model model) {
		model.addAttribute("datas",problemService.findProblems());
		return "problem/list";
	}
	
	/*
	 * 前台显示所有问题列表
	 */
	@RequestMapping(value="/problems",method=RequestMethod.GET)
	public String problemList(Model model) {
		SystemContext.setPageSize(100);
		model.addAttribute("datas",problemService.findProblemsBystatus());
		return "problem/problem_list";
	}
	
	@RequestMapping(value="/problemById",method=RequestMethod.POST)
	public String problemById(int ProblemID,Model model) {
		SystemContext.setPageSize(100);
		model.addAttribute("datas",problemService.findProblemsByID(ProblemID));
		return "problem/problem_list";
	}
	
	@RequestMapping(value="/problemByTitle",method=RequestMethod.POST)
	public String problemByTitlet(String ProblemTitle,Model model) {
		SystemContext.setPageSize(100);
		model.addAttribute("datas",problemService.findProblemsBytitle(ProblemTitle));
		return "problem/problem_list";
	}
	/*@RequestMapping(value="/problems/{title}")
	public String problemListbytitle(Model model,String title) {
		model.addAttribute("datas",problemService.findProblemsBytitle(title));
		return "problem/problem_list";
	}
	@RequestMapping(value="/problems/{id}")
	public String problemListbyid(Model model,int id) {
		model.addAttribute("datas",problemService.findProblemsByID(id));
		return "problem/problem_list";
	}*/
	
	/*显示问题内容*/
	@RequestMapping(value="/problems/{id}",method=RequestMethod.GET)
	public String show(@PathVariable int id,Model model) {
		model.addAttribute("problem", this.problemService.load(id));
		return "problem/problemContent";
	}
	/*显示比赛问题内容*/
	@RequestMapping(value="/contest/problems/{id}",method=RequestMethod.GET)
	public String showcontestproblem(@PathVariable int id,Model model) {
		model.addAttribute("problem", this.problemService.load(id));
		return "contest/problemContent";
	}
	/*显示问题内容*/
	@RequestMapping(value="/admin/problems/{id}",method=RequestMethod.GET)
	public String problemshow(@PathVariable int id,Model model) {
		model.addAttribute("problem", this.problemService.load(id));
		return "problem/show";
	}
	
	
	
	/*增加prolemUI页面**/
	@RequestMapping(value="/admin/problem/add",method=RequestMethod.GET)
	@AuthMethod//表示只能管理员访问
	public String problemaddUI(Model model) {
		model.addAttribute("problemDto",new Problem());
		return "problem/add";
	}
	/*增加prolem*/
	@RequestMapping(value="/admin/problem/add",method=RequestMethod.POST)
	@AuthMethod//表示只能管理员访问
	public String problemadd(@Valid Problem problemDto,BindingResult br,HttpSession session){
        
		if(br.hasErrors()) {
			
			return "problem/add";
		}
		
			String username = new String();
			User loginUser = (User)session.getAttribute("loginUser");
			username=loginUser.getUsername();
			if(username==null){
				return "/login";
			}
			problemDto.setInDate(new Date());
			
			//setCreate_date(new Date());
			problemService.save(problemDto);
			indexService.generateTopR();//刷新前台topRankList
			return "redirect:/jsp/common/addSuc.jsp";
	}
	@RequestMapping(value="/admin/problem/update/{id}",method=RequestMethod.GET)
	public String update(@PathVariable int id,Model model) {
		model.addAttribute("problemDto",this.problemService.load(id));//user,user
		return "problem/update";
	}
	
	@RequestMapping(value="/admin/problem/update/{id}",method=RequestMethod.POST)
	public String update(@PathVariable int id,@Valid Problem problemDto,HttpSession session,BindingResult br,Model model) {
		 if(br.hasErrors()) {
			
			return "admin/problem/update";
		}
		 String username = new String();
			User loginUser = (User)session.getAttribute("loginUser");
			username=loginUser.getUsername();
			if(username==null){
				return "/login";
			}
			Problem pro=this.problemService.load(id);
			pro.setTimeLimit(problemDto.getTimeLimit());
			pro.setMemoryLimit(problemDto.getMemoryLimit());
			pro.setSpj(problemDto.getSpj());
			pro.setType(problemDto.getType());
			pro.setstatus(problemDto.getstatus());
			pro.setContest_id(problemDto.getContest_id());
			pro.setTitle(problemDto.getTitle());
			pro.setDescription(problemDto.getDescription());
			pro.setSampleInput(problemDto.getSampleInput());
			pro.setSampleOutput(problemDto.getSampleOutput());
			pro.setInput(problemDto.getInput());
			pro.setOutput(problemDto.getOutput());
			pro.setHint(problemDto.getHint());
			pro.setSource(problemDto.getSource());
		    this.problemService.update(pro);
		    indexService.generateTopR();//刷新前台topRankList
		return "redirect:/jsp/common/updateSuc.jsp";
	}
	//按ID删除
	@RequestMapping(value="/admin/problem/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		this.problemService.delete(id);
		return "redirect:/admin/problem/problems";
	}
	@RequestMapping(value="/admin/problems/changeStatus/{id}",method=RequestMethod.GET)
	public String updateStatus(@PathVariable int id) {
		this.problemService.updateStatus(id);
		indexService.generateTopR();//刷新前台topRankList
		return "redirect:/admin/problem/problems";
	}
	
	
	
}


	
