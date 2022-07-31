package com.walab.camp;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import com.walab.bean.MenuVO;
import com.walab.bean.UserVO;
import com.walab.service.UserService;
import com.walab.service.UserServiceImpl;


@Controller
@RequestMapping(value = "/login")
public class LoginController {
	@Autowired
	UserService service;
	
	@RequestMapping(value = "/login")
	public String home(Model model) {	
		return "login";
	}
	
	@RequestMapping(value="/oauth/login", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {
		
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		String returnURL="";
		System.out.println("#########" + code);
		
		String access_Token = service.getAccessToken(code);
		HashMap<String, Object> userInfo = service.getUserInfo(access_Token);
		
		int have_mail = service.readUserByEmail(userInfo.get("email").toString());
		
		if(have_mail==0) {
			System.out.println("로그인 정보가 없음");
			returnURL = "redirect:/login";
		} else {
			System.out.println("로그인 성공!");
			session.setAttribute("login", userInfo);
			returnURL = "redirect:/addHome";
		}
			
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		
		
		if(userInfo.get("email") != null) {
			System.out.println("###email#### : " + userInfo.get("email"));
		}
		return returnURL;
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutGET(HttpSession session) throws Exception{
		session.invalidate();
		System.out.println("logout");
		return "redirect:/";
	}

}

