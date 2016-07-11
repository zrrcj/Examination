package com.ks.common;

import java.text.SimpleDateFormat;

public class Time {
	java.util.Date currTime = new java.util.Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
	String yea = sdf.format(currTime);
	@SuppressWarnings("deprecation")
	int year = currTime.getYear();// 年
	@SuppressWarnings("deprecation")
	int month = currTime.getMonth() + 1;// 月
	@SuppressWarnings("deprecation")
	int week = currTime.getDay(); // 星期几
	@SuppressWarnings("deprecation")
	int day = currTime.getDate();// 日
	/**
	 * @return 返回当前学期
	 */
	public String getMonth() {
		int a = Integer.parseInt(yea);
		String mon = "";
		if (month <=8 && month >= 3) {
			mon = a-1 + "-" + yea + "-2";
		}else if ( month > 9||month== 9) {
			mon = a + "-" + (a+1) + "-1";
		} 
		else {
			mon = a-1 + "-" + yea + "-1";
		}
		return mon;
	}

	public String getTime() {
		return yea + "年 " + month + "月 " + day + "日 " + "星期" + week;
	}
}
