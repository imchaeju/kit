package kr.kit.service;

import kr.kit.domain.AuthVO;

public interface MemberAuthService {
	public int add(AuthVO vo);

	public int delete(AuthVO vo);
}
