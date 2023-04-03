package com.multi.www.controller;

import com.multi.www.mvc200.ComputerVO;
import com.multi.www.mvc200.MovieVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
    @RequestMapping("movie")
    public void com(MovieVO vo, Model model) {
        System.out.println(vo);
        model.addAttribute("vo", vo);
    }
}
