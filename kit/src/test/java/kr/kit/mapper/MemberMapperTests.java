package kr.kit.mapper;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.kit.domain.MemberVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper membermapper;
	
	@Setter(onMethod_ = @Autowired)
	private DataSource ds;  // DB접근 객체
	
	
	//회원가입 쿼리 테스트
//	@Test
//	public void signup() throws Exception{
//		MemberVO member = new MemberVO();
//		
//		member.setUserId("spring_test3"); //id
//		member.setPassword("string_test3"); //비밀번호
//		member.setPhone("spring_test3"); // 휴대폰번호
//		member.setEmail("spring_test3"); // 이메일
//		member.setAddr1("spring_test3"); // 우편번호
//		member.setAddr2("spring_test3"); // 주소
//		member.setAddr3("spring_test3"); //상세주소
//		member.setUserName("spring_test3");//이름
//		membermapper.signup(member); //쿼리 메소드 실행하기 
//	}
	
	//로그인 쿼리 테스트
//	@Test
//	public void login() throws Exception {
//		MemberVO member = new MemberVO();
//		
//		member.setUserId("test1");
//		member.setPassword("test1");
//		
//		membermapper.login(member);
//		System.out.println("결과 값 : " + membermapper.login(member));
//	}
	
	//아이디 중복 검사
//	@Test
//	public void userIdChk() throws Exception{
//		String userId = "test1";
//		String userId2 = "test111";
//		membermapper.idCheck(userId);
//		membermapper.idCheck(userId2);
//	}


}
