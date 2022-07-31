package com.walab.service;

import java.util.HashMap;

import com.walab.bean.UserVO;

public interface UserService {
	public UserVO getUser(UserVO vo);
	public String getAccessToken(String authorized_code);
	public HashMap<String, Object> getUserInfo(String access_Token);
	public int readUserByEmail(String email);

}
