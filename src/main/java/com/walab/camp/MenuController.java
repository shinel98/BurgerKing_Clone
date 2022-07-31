package com.walab.camp;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.walab.service.MenuService;
import com.walab.dao.MenuDAO;
import com.walab.bean.MenuVO;

@Controller
public class MenuController {
	
	@Autowired
	MenuService menuService;
	
	@RequestMapping(value = "/")
	public String home(Model model) {
		
		return "index";
	}
	@RequestMapping(value = "/index")
	public String tmphome(Model model) {
		
		return "index";
	}
	@RequestMapping(value = "/addHome")
	public String movehome(Model model) {
		List<MenuVO> list = menuService.getMenus();
		model.addAttribute("list", list);
		
		return "addHome";
		
	}
	@RequestMapping(value = "/menuForm")
	public String menuForm(Model model) {
		model.addAttribute("command" ,new MenuVO());
			
		return "menuForm";
	}
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(@ModelAttribute MenuVO menu, @RequestParam("photo") MultipartFile photo, HttpServletRequest request) {
//	public String save() {
		
		String fileRealName = photo.getOriginalFilename();
		System.out.println(fileRealName);
		long size = photo.getSize();
		System.out.println(size);
		
//		System.out.println("파일명: " + fileRealName );
//		System.out.println("용량크기: " + size);
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
//		System.out.println("확장명: " + fileExtension);
		
					
		String  storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + fileExtension;
		String uploadFolder = request.getSession().getServletContext().getRealPath("/").concat("resources/img/")+ storedFileName;
//		String uploadFolder = "/Users/inhyeok/Documents/workspace-spring-tool-suite-4-4.12.1.RELEASE/Burger_Clone/src/main/webapp/resources/img/" + storedFileName;
//		String uploadFolder = storedFileName;
//		System.out.println("확장자명" + fileExtension);
		System.out.println(": " + uploadFolder);
		File saveFile = new File(uploadFolder);
		try {
			photo.transferTo(saveFile); 
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		menu.setChgFileName(storedFileName);
		menu.setFileSize(size);
		menu.setOriFileName(fileRealName);
		menu.setFilePath(uploadFolder);
		System.out.println(menu.getType());
//		System.out.println(menu.getPhoto());
		System.out.println(menu.getName());
		System.out.println(menu.getDes());
		menuService.insertMenu(menu);
		return "redirect:/viewMenu";    
	}
	@RequestMapping(value="/viewMenu")
	public String viewMenu(Model model) {
		List<MenuVO> list = menuService.getMenus();
		model.addAttribute("list", list);
		return "addHome";
	}
	@RequestMapping(value="/editMenu/{id}")
	public String editMenu(@PathVariable int id, Model model) {
		
		MenuVO menu = menuService.getMenuById(id);
		//System.out.println(menu.getId());
		model.addAttribute("id", menu.getId());
		return "menuEditForm";
	}
	@RequestMapping(value="/editSave", method=RequestMethod.POST)
	public String editSave(@ModelAttribute("menu") MenuVO menu) {
		//menu.setPhoto("temp");
		System.out.println(menu.getId());
		System.out.println(menu.getType());
//		System.out.println(menu.getPhoto());
		System.out.println(menu.getName());
		System.out.println(menu.getDes());
		menuService.updateMenu(menu);
		return "redirect:/viewMenu";
	}
	@RequestMapping(value="/deleteMenu/{id}", method=RequestMethod.GET)
	public String deleteMenu(@PathVariable int id) {
		menuService.deleteMenu(id);
		return "redirect:/viewMenu";
	}
}

