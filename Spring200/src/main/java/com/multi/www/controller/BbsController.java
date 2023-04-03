package com.multi.www.controller;

import com.multi.www.mvc200.BbsDAO;
import com.multi.www.mvc200.BbsVO;
import com.multi.www.mvc200.ReplyDAO;
import com.multi.www.mvc200.ReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller // 스프링에서 제어하는 역할로 등록!
public class BbsController {

    @Autowired
    BbsDAO dao; // 전역변수

    @Autowired
    ReplyDAO dao2;

    // 컨트롤 하는 기능(CRUD)
    // 회원가입, 수정, 탈퇴, 정보검색

    // 클래스 내에서 기능처리 담당
    // 멤버변수, 멤버메서드
    // 하나의 요청당 하나의 메서드
    // 하나의 버튼호출 당 하나의 함수 연결!
    // 요청된 주소가 어떻게 될 때
    // 바로 아래에 있는 메서드가 호출이 될 지 써주어야 한다.
    @RequestMapping("insert2.multi")
    public void insert(BbsVO bag) {
        // 메서드의 입력변수(파라메터)로 변수를 선언해두면,
        // 컨트롤러 내의 메서드에서 1) bag을 만듬. 2) 클라이언트부터 전달된 데이터도 받아줌. 3) bag에 데이터 다 넣어줌.
        System.out.println("insert 요청됨.");
        System.out.println(bag);
        dao.insert(bag);
    }

    @RequestMapping("update2.multi")
    public void update(BbsVO bag) {
        System.out.println("update 요청됨.");
        System.out.println(bag);
        dao.update(bag);
    }

    @RequestMapping("delete2.multi")
    public void delete(int id) {
        System.out.println("delete 요청됨.");
        System.out.println(id);
        dao.delete(id);
    }

    @RequestMapping("one2.multi")
    public void one(int no, Model model) {
        BbsVO dto = dao.one(no);
        // bag에 검색결과 다 들어있음.
        // views 아래 book_one.jsp로 쓸 수 있도록
        model.addAttribute("dto", dto);
        // views까지 전달할 속성으로 추가
        ArrayList<ReplyVO> list = dao2.list(no);
        model.addAttribute("list", list);
    }

    @RequestMapping("list2.multi")
    public void list(Model model) {
        ArrayList<BbsVO> list = dao.list();
        System.out.println(list.size()); //사이즈를 찍어보세요.
        model.addAttribute("list", list);
    }
/*
    @RequestMapping("insert2.multi")
    public void insert(ReplyVO bag) {
        // 메서드의 입력변수(파라메터)로 변수를 선언해두면,
        // 컨트롤러 내의 메서드에서 1) bag을 만듬. 2) 클라이언트부터 전달된 데이터도 받아줌. 3) bag에 데이터 다 넣어줌.
        System.out.println("insert 요청됨.");
        System.out.println(bag);
        dao2.insert(bag);
    }*/
}
