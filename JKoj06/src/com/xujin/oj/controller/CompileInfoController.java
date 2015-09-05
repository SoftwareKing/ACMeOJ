package com.xujin.oj.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.oj.service.CompileInfoService;

@Controller("compileInfoController")
public class CompileInfoController {
	
	@Resource(name="compileInfoService")
	private CompileInfoService compileInfoService;
	
	@RequestMapping(value="/CompileError/{id}",method=RequestMethod.GET)
	public  String getCompileError(@PathVariable int id,Model model)
	{
		model.addAttribute("CompileInfo", this.compileInfoService.queryCompileInfo(id));
		
		return "problem/CompileError";
		
	}
}
