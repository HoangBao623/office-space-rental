package com.javaweb.osr.util;

public class StringUtil {

	public static boolean checkString(String db) {
		if(db != null && !db.equals(""))
			return true;
		return false;
	}
}