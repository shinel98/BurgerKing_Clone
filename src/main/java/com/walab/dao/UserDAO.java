package com.walab.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.walab.bean.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
	public int insertUser(HashMap<String, Object> userInfo) {
		return sqlSession.insert("User.insertUser" , userInfo);
	}
	public int readUserByEmail(String email) {
		int userId = 0;
		try {
			userId = sqlSession.selectOne("User.readUserByEmail", email);
		}catch (NullPointerException e){
			System.out.println(e);
			userId = 0;
		}
		return userId;
	}
}
