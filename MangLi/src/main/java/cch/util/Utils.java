package cch.util;


import org.springframework.util.DigestUtils;

public class Utils {
	
	private static final String salt = "你吃了吗?";
	
	public static String crypt(String pwd){
		return DigestUtils.md5DigestAsHex((pwd+salt).getBytes());
	}

}
