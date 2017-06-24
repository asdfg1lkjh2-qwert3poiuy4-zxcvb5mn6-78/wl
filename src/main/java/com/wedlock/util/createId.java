package com.wedlock.util;

public class createId {
	
	public static String IdGeneration(String lastId){
		String sellerId = "SELLER-0003000";
		String result ="";
		if(lastId.equals("SELLER0")){
			result = sellerId;
		}else{
			String Id[] = lastId.split("-");
			int a = Integer.parseInt(Id[1]) + 1;
			int c = String.valueOf(Id[1]).length();
			if(c == 4 || c== 7){
				result = Id[0]+"-000"+a;
			}else if(c == 5){
				result = Id[0]+"-00"+a;
			}else if(c == 6){
				result = Id[0]+"-0"+a;
			}else{
				result = Id[0]+"-"+a;
			}
		}
		return result;
	}
}
