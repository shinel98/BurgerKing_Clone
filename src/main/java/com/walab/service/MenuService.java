package com.walab.service;

import java.util.List;

import com.walab.bean.MenuVO;

public interface MenuService {
	public int insertMenu(MenuVO menu);
	public int deleteMenu(int id);
	public int updateMenu(MenuVO menu);
	public MenuVO getMenuById(int id);
	public List<MenuVO> getMenus();
}
