package com.wedlock.serviceImpl;


import java.security.SecureRandom;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.wedlock.model.SellerDetails;
import com.wedlock.service.MailService;

@Service
public class MailServiceImpl implements MailService{
	@Autowired
    JavaMailSender mailSender;
	@Override
	public void sendEmailToSeller(SellerDetails sellerDetails,String check) {
		MimeMessagePreparator preparator = getMessagePreparator(sellerDetails,check);
		try {
            mailSender.send(preparator);
            System.out.println("Message Send...Hurrey");
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
		
	}
	private MimeMessagePreparator getMessagePreparator(final SellerDetails sellerDetails,String check) {
		 
        MimeMessagePreparator preparator = new MimeMessagePreparator() {
            public void prepare(MimeMessage mimeMessage) throws Exception {
                mimeMessage.setFrom("monalisa@wedlock.online");
                mimeMessage.setHeader("Return-Receipt-To", sellerDetails.getSellerEmailId());
                mimeMessage.setRecipient(Message.RecipientType.TO,
                        new InternetAddress(sellerDetails.getSellerEmailId()));
			    if(check.equals("notVerified")){
			    	SecureRandom random = new SecureRandom();
				    byte bytes[] = new byte[60];
				    random.nextBytes(bytes);
				    Encoder encoder = Base64.getUrlEncoder().withoutPadding();
				    String token = encoder.encodeToString(bytes);
			    	String url = "<a href=http://localhost:8080/Wedlock/?inActive="+sellerDetails.getSellerEmailId()+">"+token+"</a>";
			    	mimeMessage.setContent(url, "text/html");
			    }else{
			    	 mimeMessage.setText("Hello " + sellerDetails.getSellerFirstName()+" "+sellerDetails.getSellerLastName()
                    + ", thank you for registering with Wedlock. Your Email Id is " + sellerDetails.getSellerEmailId() + " and Password is " +sellerDetails.getSellerPassword());
			    }
               
                mimeMessage.setSubject("Wedlock Registration Details");
                
            }
        };
        return preparator;
    }
}
