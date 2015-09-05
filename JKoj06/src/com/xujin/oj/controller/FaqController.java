package com.xujin.oj.controller;


import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.oj.model.Attachment;

import com.xujin.oj.model.Topic;
import com.xujin.oj.service.AttachmentService;

import com.xujin.oj.service.TopicService;

@Controller("faqController")
public class FaqController {
	@Resource(name="topicService")
	private TopicService topicService;
	
	@Resource(name="attachmentService")
	private AttachmentService attachmentService;
	
	
	@RequestMapping(value="/faq",method=RequestMethod.GET)
	public String Faq(Model model){
		int tid=9;
		Topic t = topicService.load(tid);
		String keywords = t.getKeyword();
		model.addAttribute("topic", t);
		if(keywords==null||"".equals(keywords.trim())||"\\|".equals(keywords.trim())) {
			model.addAttribute("hasKey", false);
		} else {
			String[] kws = keywords.split("\\|");
			model.addAttribute("hasKey", true);
			model.addAttribute("kws",kws);
		}
		List<Attachment> atts = attachmentService.listAttachByTopic(tid);
		if(atts.size()>0) {
			model.addAttribute("hasAtts", true);
			model.addAttribute("atts", atts);
		} else {
			model.addAttribute("hasAtts",false);
		}
		return "faq/faq";
	}
}
