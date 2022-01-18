package kr.kit.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.kit.domain.ProductVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminMapperTests {
	
	@Autowired
	private AdminMapper mapper;

	@Test
	public void register() {
		
		ProductVO vo = new ProductVO();
		
		vo.setPname("테스트1");
		vo.setCatecode("삼계탕");
		vo.setImg("밀키트1");
		
		mapper.register(vo);
		
	}
}
