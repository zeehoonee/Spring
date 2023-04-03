package com.multi.www.controller;

import com.multi.www.mvc200.MovieVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class ListController {
    @RequestMapping("tour")
    public void tour(Model model) {
        ArrayList<String> tour = new ArrayList<String>();
        tour.add("미국");
        tour.add("일본");
        tour.add("프랑스");
        tour.add("스페인");
        tour.add("독일");
        model.addAttribute("tour", tour);
    }

    @RequestMapping("fruit")
    public void fruit(Model model) {
        ArrayList<String> fruit = new ArrayList<String>();
        fruit.add("사과");
        fruit.add("배");
        fruit.add("귤");
        fruit.add("수박");
        fruit.add("바나나");
        fruit.add("참외");
        model.addAttribute("fruit", fruit);
    }
}
