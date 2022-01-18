package kr.kit.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.kit.domain.AuthVO;
import kr.kit.domain.Criteria;
import kr.kit.domain.MemberVO;
import kr.kit.domain.ProductVO;
import kr.kit.mapper.MemberAuthMapper;
import kr.kit.service.AdminService;
import kr.kit.service.MemberService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
@RequestMapping("/admin/member*")
public class AdminMemberController {
	
	private MemberService service; 
	private MemberAuthMapper authservice;
	
	   @GetMapping("list")
	   public void list() {
	   }
	   
	   @PostMapping(value = "searchlist", produces = MediaType.APPLICATION_JSON_VALUE)
	   public ResponseEntity<List<MemberVO>> getList(Criteria cri) {
	      log.info("select service:"+cri.getKeyword());
	      //return null;
	      return new ResponseEntity<>(service.select(cri), HttpStatus.OK);
	   }
	   
	   @GetMapping("view")
	   public void view(@RequestParam String userid,Model model)
	   {
		   model.addAttribute("member", service.read(userid));
	   }
	   
	   
	   @PostMapping("/memberauth")
	   public ResponseEntity<String> memberauth(String userId,String auth, String checkyn ,Model model)
	   {
	      AuthVO vo= new AuthVO();
	      vo.setAuth(auth);
	      vo.setUserId(userId);
	      //;
	      //
	      if(checkyn.equals("y"))
	      {
	    	 log.info("권한부여");
	         authservice.add(vo);
	      }
	      else
	      {
	    	  log.info("권한삭제");
	    	  authservice.delete(vo);
	      }
	      return new ResponseEntity<String>("succuess", HttpStatus.OK);      
	   }
	   
//	   @GetMapping("/register")
//		public void register() {
//		}
	   
	 
	   
	   

}
