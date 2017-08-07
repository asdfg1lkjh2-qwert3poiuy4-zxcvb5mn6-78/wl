package com.wedlock.util;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;

public  class OtpGenerator {
	
	public static int otpGenerateNumber(int seeds) throws NoSuchProviderException{
		int random = 0;
		try {

			SecureRandom secureRandom1 = SecureRandom.getInstance("SHA1PRNG","SUN");
			int seedByteCount = seeds;
			byte[] seed = secureRandom1.generateSeed(seedByteCount);
			secureRandom1.setSeed(seed);
			random = secureRandom1.nextInt(9000);
			System.out.println("////Random Number is"+random);
		    } catch (NoSuchAlgorithmException e) {

		    }
		return  random;
		
	}
}
