package org.gs.util;

public class CommonUtil {
	public static String parseTime(Integer time){
		int hour=time/3600;//除法,取整
		StringBuffer buffer =new StringBuffer();
		if (hour==0) {
			buffer.append("00:");
		}else{
			buffer.append("0");
			buffer.append(hour);
			buffer.append(":");
		}
		//00 : 00 : 00
		int minute = (time%3600)/60;
		if (minute>9) {
			buffer.append(minute);
		}else{
			buffer.append("0");
			buffer.append(minute);
		}
		buffer.append(":");
		int second = (time%3600)%60;
		if (second>9) {
			buffer.append(second);
		}else{
			buffer.append("0");
			buffer.append(second);
		}
		//直接输出StringBuffer对象的
		return buffer.toString();
	}
	
	public static void main(String[] args) {
		String parseTime = parseTime(3671);
		System.out.println(parseTime);
	}
	
	
	
	
	
	
	
}
