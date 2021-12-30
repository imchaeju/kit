package kr.kit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.kit.domain.AuthVO;
import kr.kit.mapper.MemberAuthMapper;
import lombok.Setter;
@Service
public class MemberAuthServiceImp implements MemberAuthService {
	 @Setter(onMethod_ = @Autowired) 
	 MemberAuthMapper authmapper;
	@Override
	public int add(AuthVO vo) {
		// TODO Auto-generated method stub
		return authmapper.add(vo);
	}

	@Override
	public int delete(AuthVO vo) {
		// TODO Auto-generated method stub
		return authmapper.delete(vo);
	}

}
