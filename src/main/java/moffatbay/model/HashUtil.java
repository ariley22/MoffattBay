package moffatbay.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashUtil {
    public static String hashPassword(String password) {
        try {
            // Create MD5 instance
            MessageDigest md = MessageDigest.getInstance("MD5");
            // Digest the password into bytes
            byte[] hashedBytes = md.digest(password.getBytes());
            // Convert bytes to hex string
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("MD5 algorithm not found!", e);
        }
    }
}
