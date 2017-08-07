package com.wedlock.service;

import com.wedlock.model.AdminResponseClass;
import com.wedlock.model.Otp;

public interface OtpService {
AdminResponseClass saveOtpForSeller(Otp otp);
AdminResponseClass checkOtpByEmailIdAndPassword(Otp otp);
}
