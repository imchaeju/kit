package kr.kit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/common/*")
@AllArgsConstructor

public class CommonController {

	@GetMapping("/main")
	public void main() {
	}
	
	@GetMapping("/contact")
	public void contact() {
		
	}

}
