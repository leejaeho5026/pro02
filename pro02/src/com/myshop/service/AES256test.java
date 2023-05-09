package com.myshop.service;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class AES256test {

	public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeyException, InvalidKeySpecException, NoSuchPaddingException, InvalidParameterSpecException, UnsupportedEncodingException, BadPaddingException, IllegalBlockSizeException, InvalidAlgorithmParameterException {
	
		
		String plainText = "1234";
		String key = "%03x";
		
		System.out.println("MD5 : "+ plainText + ", 암호화 : " +AES256.md5(plainText));
		System.out.println("sha256 :"+ plainText + ", 암호화 : "+AES256.sha256(plainText));

		
		
		String encText = AES256.encryptAES256(plainText, key);
		System.out.println("AES256 : " +plainText + ", 암호화 :"+encText);
		String desText = AES256.decryptAES256(encText, key);
		System.out.println("AES256 : "+encText + ", 복호화  :"+desText);
	}

}
