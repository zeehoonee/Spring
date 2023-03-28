package com.multi.www.controller;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;

@Controller
@ComponentScan(basePackages={"com.multi.www.mvc01"}) // Autowired 오류 뜰 때

public class ControllerConfig {
}

