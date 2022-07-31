package com.walab.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.walab.dao.MenuDAO;
import com.walab.bean.MenuVO;


@Service
public class MenuServiceImpl implements MenuService{

	@Autowired
	MenuDAO dao;
	
	@Override
	public int insertMenu(MenuVO menu) {
		// TODO Auto-generated method stub
		
		return dao.insert(menu);
	}

	@Override
	public int deleteMenu(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public int updateMenu(MenuVO menu) {
		// TODO Auto-generated method stub
		return dao.update(menu);
	}

	@Override
	public MenuVO getMenuById(int id) {
		// TODO Auto-generated method stub
		return dao.getMenuById(id);
	}

	@Override
	public List<MenuVO> getMenus() {
		// TODO Auto-generated method stub
		return dao.getMenus();
	}

}
