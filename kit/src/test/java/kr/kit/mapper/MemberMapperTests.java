package kr.kit.mapper;



import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.kit.domain.MemberVO;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper membermapper;
	
	//회원가입 쿼리 테스트
	@Test
	public void signup() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setUserId("spring_test"); //id
		member.setPassword("string_test"); //비밀번호
		member.setPhone("spring_test"); // 휴대폰번호
		member.setEmail("spring_test"); // 이메일
		member.setAddr1("spring_test"); // 우편번호
		member.setAddr2("spring_test"); // 주소
		member.setAddr3("spring_test"); //상세주소
		
		membermapper.signup(member); //쿼리 메소드 실행하기
	}


}
