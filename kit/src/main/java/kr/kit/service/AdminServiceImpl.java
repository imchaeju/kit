package kr.kit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kit.domain.ProductVO;
import kr.kit.mapper.AdminMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	//상품등록
	@Override
	public void register(ProductVO vo) {
		
		log.info("(service) AdminMapper...");
		
		adminMapper.register(vo);
	}

}
