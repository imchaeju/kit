package kr.kit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.kit.domain.ProductVO;
import kr.kit.service.AdminService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/admin/product*")
public class AdminProductController {
	
	private AdminService adminService;
	
	@GetMapping("register")
	public void register() {
	}
	
	@PostMapping("register")
	   public String registerPOST(ProductVO vo, RedirectAttributes rttr) {
		   
		   log.info("registerPOST..." + vo);
		   
		   adminService.register(vo);
		   
		   rttr.addFlashAttribute("product_result", vo.getPname());
		   
		   return "redirect:/shop/shop";
	   }

}
