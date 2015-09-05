package com.xujin.oj.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.oj.auth.AuthMethod;
import com.xujin.oj.model.User;
import com.xujin.oj.ojmodel.ContestProblem;
import com.xujin.oj.service.ContestProblemService;
import com.xujin.oj.service.ContestService;
import com.xujin.oj.service.IndexService;

@Controller("contestProblemController")
public class ContestProblemController {
	
	@Resource(name="contestProblemService")
	private ContestProblemService contestProblemService;

	@Resource(name="contestservice")
	private ContestService contestservice;
	
	@Resource(name="indexService")
	private IndexService indexService;
	
	@RequestMapping(value="/admin/contest/problem/{id}",method=RequestMethod.GET)
	@AuthMethod//表示只能管理员访问
	public String problem(@PathVariable int id,Model model) {
		model.addAttribute("datas",this.contestProblemService.queryProblems(id));
		return "contest/problemlist";
	}
	/*前台能访问的比赛内容+题目**/
	@RequestMapping(value="/contests/{id}",method=RequestMethod.GET)
	public String contestproblem(@PathVariable int id,Model model) {
		model.addAttribute("contest", this.contestservice.load(id));
		model.addAttribute("datas",this.contestProblemService.queryProblems(id));
		return "contest/ContestContent";
	}

	/*增加prolemUI页面**/
	@RequestMapping(value="/admin/contestproblem/add",method=RequestMethod.GET)
	@AuthMethod//表示只能管理员访问
	public String problemaddUI(Model model) {
		model.addAttribute("ContestProblemDto",new ContestProblem());
		return "contest/addproblem";
	}
	/*增加prolem*/
	@RequestMapping(value="/admin/contestproblem/add",method=RequestMethod.POST)
	@AuthMethod//表示只能管理员访问
	public String problemadd(@Valid ContestProblem ContestProblemDto,BindingResult br,HttpSession session){
        
		if(br.hasErrors()) {
			
			return "problem/add";
		}
		
			String username = new String();
			User loginUser = (User)session.getAttribute("loginUser");
			username=loginUser.getUsername();
			if(username==null){
				return "/login";
			}
			Integer id=ContestProblemDto.getContest_id();
			this.contestProblemService.save(ContestProblemDto);
			indexService.generateTopR();//刷新前台topRankList
			return "redirect:/admin/contest/problem/"+id;
	}
	
	@RequestMapping(value="/admin/contest/problem/update/{pid}/{cid}",method=RequestMethod.GET)
	public String update(@PathVariable int pid,@PathVariable int cid,Model model) {
		model.addAttribute("ContestProblemDto",this.contestProblemService.queryProblemByPid(pid,cid));//user,user
		return "contest/updateproblem";
	}
	
	@RequestMapping(value="/admin/contest/problem/update/{pid}/{cid}",method=RequestMethod.POST)
	public String update(@PathVariable int pid,@PathVariable int cid,@Valid ContestProblem ContestProblemDto,HttpSession session,BindingResult br,Model model) {
		 if(br.hasErrors()) {
			
			return "contest/updateproblem";
		}
		 ContestProblem cp=this.contestProblemService.queryProblemByPid(pid, cid);
		 cp.setProblem_id(ContestProblemDto.getProblem_id());
		 cp.setTitle(ContestProblemDto.getTitle());
		 cp.setNum(ContestProblemDto.getNum());
		 cp.setContest_id(ContestProblemDto.getContest_id());
		 this.contestProblemService.update(cp);
		 indexService.generateTopR();//刷新前台topRankList
		return "redirect:/admin/contest/problem/"+cid;
	}
	
	//按pid,cid删除比赛中的题目
	@RequestMapping(value="/admin/contest/problem/delete/{pid}/{cid}",method=RequestMethod.GET)
	public String delete(@PathVariable int pid,@PathVariable int cid) {
		this.contestProblemService.delete(pid, cid);
		return "redirect:/admin/contest/problem/"+cid;
	}
}
