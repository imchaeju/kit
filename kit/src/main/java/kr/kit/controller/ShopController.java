package kr.kit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/shop/*")
@AllArgsConstructor

public class ShopController {

	@GetMapping("/shop")
	public void shop() {
	}
	
	@GetMapping("/wishlist")
	public void wishlist() {
	}
	
	@GetMapping("/cart")
	public void cart() {
	}
	
	@GetMapping("/checkout")
	public void checkout() {
	}

}