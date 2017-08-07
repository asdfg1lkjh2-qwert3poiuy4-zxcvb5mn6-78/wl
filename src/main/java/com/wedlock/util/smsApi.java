package com.wedlock.util;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class smsApi {
	public static String sendSms(String mssg, String phoneNumber){
		String username ="wedlock";
		String password = "wedlock.1234";
		String sender ="WEDLCK";
		String api = "";
		try {
			api="http://root.msgtrunk.com/api/pushsms.php?username="+URLEncoder.encode(username, "UTF-8")+"&password="+URLEncoder.encode(password, "UTF-8")+"&sender="+URLEncoder.encode(sender, "UTF-8")+"&message="+URLEncoder.encode(mssg,"UTF-8")+"&numbers="+phoneNumber+"&unicode=false&flash=false";
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return api;
	}
}
