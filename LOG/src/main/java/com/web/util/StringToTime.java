package com.web.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StringToTime {
	//字符串转日期
	public static Date stringtoDate(String dd){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date=null;
		try {
			date=sdf.parse(dd);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return date;
		
	}
	/**
	 * 日期转String
	 */
	public static String DatetoString(Date dd){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String string=null;
		try {
			string=sdf.format(dd);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return string;
		
	}
}
