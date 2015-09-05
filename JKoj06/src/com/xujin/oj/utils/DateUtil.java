package com.xujin.oj.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;





public class DateUtil {
	//日期格式，年份，例如：2004，2008
    public static final String DATE_FORMAT_YYYY = "yyyy";
    
    //日期格式，年份和月份，例如：200707，200808
    public static final String DATE_FORMAT_YYYYMM = "yyyyMM";
    
    //日期格式，年月日，例如：20050630，20080808
    public static final String DATE_FORMAT_YYYYMMDD = "yyyyMMdd";
    
    //日期格式，年月日，用横杠分开，例如：2006-12-25，2008-08-08
    public static final String DATE_FORMAT_YYYY_MM_DD = "yyyy-MM-dd";
    
    //日期格式，年月日时分秒，例如：20001230120000，20080808200808
    public static final String DATE_TIME_FORMAT_YYYYMMDDHHMISS = "yyyyMMddHHmmss";
    
    //日期格式，年月日时分秒，年月日用横杠分开，时分秒用冒号分开，
    //例如：2005-05-10 23：20：00，2008-08-08 20:08:08
    public static final String DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS = "yyyy-MM-dd HH:mm:ss";
    
    /**
    * 字符串转换为日期
    * @author dingyongli
    * @param String strDate：日期的字符串形式
    * @param String format：转换格式
    * @return String
    * @throws 
    */
    public static Date strToDate(String strDate, String format){
        SimpleDateFormat dateFormat = new SimpleDateFormat(format);
        Date date = null;
        try{
            date = dateFormat.parse(strDate);
        }catch(ParseException e){
            e.printStackTrace();
            //System.out.println(e.getMessage());
        }
        return date;
    }

    /**
    * 字符串转换为日期时间
    * @author dingyongli
    * @param String strDateTime：日期时间的字符串形式
    * @param String format：转换格式
    * @return String
    * @throws 
    */
    public static Date strToDateTime(String strDateTime, String fromat){
        SimpleDateFormat dateTimeFormat = new SimpleDateFormat(fromat);
        Date dateTime = null;
        try{
          dateTime = dateTimeFormat.parse(strDateTime);
        }catch(ParseException e){
            e.printStackTrace();
            //System.out.println(e.getMessage());
        }
        return dateTime;
    }

    /**
    * 日期转换为字符串
    * @author dingyongli
    * @param Date date：需要转换的日期
    * @param String format：转换格式
    * @return String
    * @throws 
    */
    public static String dateToStr(Date date, String format){
        SimpleDateFormat dateFormat = new SimpleDateFormat(format); 
        return dateFormat.format(date);
    }

    /**
    * 日期时间转换为字符串
    * @author dingyongli
    * @param Date date：需要转换的日期
    * @param String format：转换格式
    * @return String
    * @throws 
    */    
    public static String dateTimeToStr(Date date, String format){
        SimpleDateFormat dateTimeFormat = new SimpleDateFormat(format); 
        return dateTimeFormat.format(date);
    }
    
    /**
    * 得到当天的最后时间,today是字符串类型"yyyy-mm-dd",
    * 返回是日期类型"yyyy-mm-dd 23:59:59"
    * @author dingyongli
    * @param String today
    * @return Date
    * @throws 
    */    
    public static Date getTodayLastTime(String today){
        String todayLastTime = today + " 23:59:59";
        return strToDateTime(todayLastTime,DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS);        
    }    
    
public static String secondToString(long second) {
		
		long sec=second%60;
			second=second/60;
		long min=second%60;	
		long hour=second=second/60;
		
		String nowTime=new String();
		
		if(hour<10) {
			if(hour==0) nowTime="00";
			nowTime="0"+hour;
		}else {nowTime=Long.toString(hour);}
	
		if(min<10) {
			nowTime=nowTime+":0"+min;
		}else {nowTime=nowTime+":"+min;}
		
		if(sec<10) {
			nowTime=nowTime+":0"+sec;
		}else {nowTime=nowTime+":"+sec;}
		
		return nowTime;
	}

 
 public static String penaltyString(int second) {
		
		int sec=second%60;
			second=second/60;
		int min=second%60;	
		int hour=second=second/60;
		
		String nowTime=new String();
		
		if(hour<10) {
			if(hour==0) nowTime="00";
			nowTime="0"+hour;
		}else {nowTime=Integer.toString(hour);}
	
		if(min<10) {
			nowTime=nowTime+":0"+min;
		}else {nowTime=nowTime+":"+min;}
		
		if(sec<10) {
			nowTime=nowTime+":0"+sec;
		}else {nowTime=nowTime+":"+sec;}
		
		return nowTime;
	}
}