package com.xujin.oj.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.xujin.basic.model.SystemContext;
import com.xujin.oj.model.BaseInfo;
import com.xujin.oj.model.Channel;
import com.xujin.oj.model.ChannelType;
import com.xujin.oj.model.IndexTopic;
import com.xujin.oj.model.Topic;
import com.xujin.oj.model.User;
import com.xujin.oj.service.AttachmentService;
import com.xujin.oj.service.ChannelService;
import com.xujin.oj.service.IndexPicService;
import com.xujin.oj.service.IndexService;
import com.xujin.oj.service.KeywordService;
import com.xujin.oj.service.TopicService;
import com.xujin.oj.service.UserService;
import com.xujin.oj.utils.FreemarkerUtil;
import com.xujin.oj.utils.PropertiesUtil;
import com.xujin.oj.web.BaseInfoUtil;

@Service("indexService")
public class IndexServiceImpl implements IndexService {
	
	//private String ftlPath;
	private String outPath;
	private String outPath1;
	private FreemarkerUtil util;
	
	@Autowired(required=true)
	public IndexServiceImpl(String ftlPath, String outPath,String outPath1) {
		super();
		if(util==null) {
			//this.ftlPath=ftlPath;
			this.outPath = outPath;
			this.outPath1=outPath1;
			util = FreemarkerUtil.getInstance(ftlPath);
		}
	}
	@Resource(name="userService")
	private UserService userService;
	
    @Resource(name="channelService")
	private ChannelService channelService;
    
    @Resource(name="topicService")
	private TopicService topicService;
    
    @Resource(name="indexPicService")
	private IndexPicService indexPicService;
    
    @Resource(name="attachmentService")
	private AttachmentService attachmentService;
	
    @Resource(name="keywordService")
    private KeywordService keywordService;
    
    public UserService getUserService() {
		return userService;
	}
	@Inject
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public ChannelService getChannelService() {
		return channelService;
	}
	@Inject
	public void setChannelService(ChannelService channelService) {
		this.channelService = channelService;
	}
	
	public TopicService getTopicService() {
		return topicService;
	}
	@Inject
	public void setTopicService(TopicService topicService) {
		this.topicService = topicService;
	}
	public IndexPicService getIndexPicService() {
		return indexPicService;
	}
	@Inject
	public void setIndexPicService(IndexPicService indexPicService) {
		this.indexPicService = indexPicService;
	}
	public AttachmentService getAttachmentService() {
		return attachmentService;
	}
	@Inject
	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}
	public KeywordService getKeywordService() {
		return keywordService;
	}
	@Inject
	public void setKeywordService(KeywordService keywordService) {
		this.keywordService = keywordService;
	}
	
	@Override
	public void generateTop() {
		
		List<Channel> cs = channelService.listTopNavChannel();
	    Map<String,Object> root = new HashMap<String,Object>();
		root.put("menus", cs);
		root.put("baseInfo", BaseInfoUtil.getInstacne().read());
		String outfile = SystemContext.getRealPath()+outPath1+"/menu.jsp";
		util.fprint(root, "/top.ftl", outfile);
	}
	//3、首页宣传图片
	@Override
	public void generatebanner() {
		String outfile = SystemContext.getRealPath()+outPath+"/picnew.jsp";
		BaseInfo bi = BaseInfoUtil.getInstacne().read();
		int picnum = bi.getIndexPicNumber();
		Map<String,Object> root = new HashMap<String,Object>();
		root.put("pics", indexPicService.listIndexPicByNum(picnum));
		util.fprint(root, "/newpic.ftl", outfile);
	}
	
	@Override
	public void generateBottom() {
		
		Map<String,Object> root = new HashMap<String,Object>();
		root.put("baseInfo", BaseInfoUtil.getInstacne().read());
		String outfile = SystemContext.getRealPath()+outPath1+"/foot.jsp";
		util.fprint(root, "/foot.ftl", outfile);
	}
	//3、首页新闻图片
	@Override
	public void generateNewpic() {
		/*System.out.println("=========重新生成首页--新闻图片的信息==============");
		String outfile = SystemContext.getRealPath()+outPath+"/newpic.jsp";
		BaseInfo bi = BaseInfoUtil.getInstacne().read();
		int picnum = bi.getIndexPicNumber();
		Map<String,Object> root = new HashMap<String,Object>();
		root.put("newpics", attachmentService.listIndexNewPicByNum(picnum));
		util.fprint(root, "/newpic.ftl", outfile);*/
		
	}

	@Override
	public void generateBody() {
		
		//1、获取所有的首页栏目
		List<Channel> cs = channelService.listAllIndexChannel(ChannelType.TOPIC_LIST);
		//2、根据首页栏目创建相应的IndexTopic对象
		//加载indexChannel.properties
		Properties prop = PropertiesUtil.getInstance().load("indexChannel");
		Map<String,IndexTopic> topics = new HashMap<String, IndexTopic>();
		for(Channel c:cs) {
			int cid = c.getId();
		//	System.out.println(cid);
			String[] xs = prop.getProperty(cid+"").split("_");
			String order = xs[0];
			int num = Integer.parseInt(xs[1]);
			IndexTopic it = new IndexTopic();
			it.setCid(cid);
			it.setCname(c.getName());
			List<Topic> tops = topicService.listTopicByChannelAndNumber(cid, num);
//			System.out.println(cid+"--"+tops);
			it.setTopics(tops);
			topics.put(order, it);
		}
		String outfile = SystemContext.getRealPath()+outPath1+"/body.jsp";
		//3、更新首页图片
		Map<String,Object> root = new HashMap<String,Object>();
		//root.put("newpics", attachmentService.listIndexNewPicByNum(picnum));
		root.put("ts", topics);
		root.put("keywords", keywordService.getMaxTimesKeyword(12));
		root.put("xxgk", topicService.loadLastedTopicByColumn(7));
		util.fprint(root, "/body3.ftl", outfile);
	}
	
	
	@Override
	public void generateTopR() {
		
		List<User> users =userService.getIndexTop("solved");
		Map<String,Object> root = new HashMap<String,Object>();
		root.put("us", users);
		root.put("baseInfo", BaseInfoUtil.getInstacne().read());
		String outfile = SystemContext.getRealPath()+outPath1+"/TopRankList.jsp";
		util.fprint(root, "/TopRankList.ftl", outfile);
	}

	
	
	@Override
	public void Info() {
		Map<String,Object> root = new HashMap<String,Object>();
		root.put("baseInfo", BaseInfoUtil.getInstacne().read());
		String outfile = SystemContext.getRealPath()+outPath1+"/info.jsp";
		util.fprint(root, "/info.ftl", outfile);
	}
	
}
