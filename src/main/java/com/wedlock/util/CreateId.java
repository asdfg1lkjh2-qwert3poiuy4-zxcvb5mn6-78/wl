package com.wedlock.util;

public class CreateId {
	
	public String IdGeneration(String lastId){
		String sellerId = "SELLER-0003000";
		String photographerId = "PHOTO-0090000";
		String flowerId = "FLR-0080000";
		String catererId = "CTR-0070000";
		String hallId = "HALL-0060000";
		
		String result ="";
		String caseValue = "";
		String Id[]  = lastId.split("-");
		if(lastId.indexOf("-") >=0){
			caseValue = Id[0];
		}else{
			caseValue = lastId;
		}
		switch (caseValue) {
		case "SELLER0":
			result = sellerId;
			break;
		case "SELLER":
			int sellerA = Integer.parseInt(Id[1]) + 1;
			int sellerC = String.valueOf(Id[1]).length();
			if (sellerC == 4 || sellerC == 7) {
				result = Id[0] + "-000" + sellerA;
			} else if (sellerC == 5) {
				result = Id[0] + "-00" + sellerA;
			} else if (sellerC == 6) {
				result = Id[0] + "-0" + sellerA;
			} else {
				result = Id[0] + "-" + sellerA;
			}
			break;
		case "PHOTO0":
			result = photographerId;
			break;
		case "PHOTO":
			int photoA = Integer.parseInt(Id[1]) + 1;
			int phototC = String.valueOf(Id[1]).length();
			if (phototC == 5 || phototC == 7) {
				result = Id[0] + "-00" + photoA;
			} else if (phototC == 6) {
				result = Id[0] + "-0" + photoA;
			} else {
				result = Id[0] + "-" + photoA;
			}
			break;
		case "FLR0":
			result = flowerId;
			break;
		case "FLR":
			int flrA = Integer.parseInt(Id[1]) + 1;
			int flrC = String.valueOf(Id[1]).length();
			if (flrC == 5 || flrC == 7) {
				result = Id[0] + "-00" + flrA;
			} else if (flrC == 6) {
				result = Id[0] + "-0" + flrA;
			} else {
				result = Id[0] + "-" + flrA;
			}
			break;
		case "CTR0":
			result = catererId;
			break;
		case "CTR":
			int ctrA = Integer.parseInt(Id[1]) + 1;
			int ctrC = String.valueOf(Id[1]).length();
			if (ctrC == 5 || ctrC == 7) {
				result = Id[0] + "-00" + ctrA;
			} else if (ctrC == 6) {
				result = Id[0] + "-0" + ctrA;
			} else {
				result = Id[0] + "-" + ctrA;
			}
			break;
		case "HALL0":
			result = hallId;
			break;
		case "HALL":
			int hallA = Integer.parseInt(Id[1]) + 1;
			int hallC = String.valueOf(Id[1]).length();
			if (hallC == 5 || hallC == 7) {
				result = Id[0] + "-00" + hallA;
			} else if (hallC == 6) {
				result = Id[0] + "-0" + hallA;
			} else {
				result = Id[0] + "-" + hallA;
			}
			break;
		default:
			result = "No Id Found";
			break;
		}
		return result;
	}
}
