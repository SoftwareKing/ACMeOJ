package com.xujin.oj.web;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

import com.xujin.oj.model.BaseInfo;



public class BaseInfoUtil {
	private static BaseInfoUtil biu;
	private static Properties prop;
	
	private BaseInfoUtil() throws IOException {
		if(prop==null) {
			prop = new Properties();
			prop.load(new InputStreamReader(BaseInfoUtil.class.getClassLoader().getResourceAsStream("baseinfo.properties"),"utf-8"));
		}
	}
	
	public static BaseInfoUtil getInstacne() {
		try {
			if(biu==null) {
				biu = new BaseInfoUtil();
			}
			return biu;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public BaseInfo read() {
		BaseInfo bi = new BaseInfo();
		bi.setAddress(prop.getProperty("address"));
		bi.setEmail(prop.getProperty("email"));
		bi.setName(prop.getProperty("name"));
		bi.setWelcomeInfo(prop.getProperty("welcomeInfo"));
		bi.setPhone(prop.getProperty("phone"));
		bi.setRecordCode(prop.getProperty("recordCode"));
		bi.setZipCode(prop.getProperty("zipCode"));
		bi.setDomainName(prop.getProperty("domainName"));
		bi.setIndexPicNumber(Integer.parseInt(prop.getProperty("indexPicNumber")));
		String w = prop.getProperty("indexPicSize");
		
		String[] ws = w.split("\\*");
		bi.setIndexPicWidth(Integer.parseInt(ws[0]));
		bi.setIndexPicHeight(Integer.parseInt(ws[1]));
		return bi;
	}
	
	public BaseInfo write(BaseInfo bi){
		FileOutputStream fos = null;
		try {
			prop.setProperty("address", bi.getAddress());
			prop.setProperty("email", bi.getEmail());
			prop.setProperty("name", bi.getName());
			prop.setProperty("welcomeInfo", bi.getWelcomeInfo());
			prop.setProperty("phone",bi.getPhone());
			prop.setProperty("recordCode",bi.getRecordCode());
			prop.setProperty("zipCode",bi.getZipCode());
			prop.setProperty("indexPicNum", String.valueOf(bi.getIndexPicNumber()));
			prop.setProperty("domainName",bi.getDomainName());
			prop.setProperty("indexPicSize", bi.getIndexPicWidth()+"*"+bi.getIndexPicHeight());
			//用toURI().getPath()处理获取不到真实路径，这点相当要注意
			String path = BaseInfoUtil.class.getClassLoader().getResource("baseinfo.properties").toURI().getPath();
//        	System.out.println(path);
			fos = new FileOutputStream(path);
			prop.store(fos,null);
			return bi;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(fos!=null) fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
