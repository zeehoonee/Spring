package com.multi.mvc.food;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller //스프링에서 제어하는 역할로 등록! 
public class FoodController {
	
	@Autowired
	FoodDAO dao;
	//컨트롤 하는 기능(CRUD)
	//회원가입, 수정, 탈퇴, 정보검색
	
	//클래스 내에서 기능처리 담당
	//멤버변수 + 멤버메서드(기능처리 담당)
	//하나의 요청당 하나의 메서드
	//하나의 버튼호출당 하나의 함수 연결!
	//요청된 주소가 어떻게 될 때
	//바로 아래에 있는 메서드가 호출이 될지를
	//써주어야 한다.
	
	@RequestMapping("food_insert.multi")
	public void insert(FoodVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		dao.insert(bag);
	}
	
	@RequestMapping("food_update.multi")
	public void update(FoodVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		dao.update(bag);
	}
	
	@RequestMapping("food_delete.multi")
	public void delete(int no) {
		System.out.println("delete요청됨.");
		System.out.println(no);
		dao.delete(no);
	}
	
	@RequestMapping("food_one.multi")
	public void one(int no, Model model) {
		System.out.println("one요청됨.");
		System.out.println(no);
		FoodVO bag = dao.one(no);
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("food_list.multi")
	public void list(Model model) {
		List<FoodVO> list = dao.list();
		model.addAttribute("list", list);
	}
}

