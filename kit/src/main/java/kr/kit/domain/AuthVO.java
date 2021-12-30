package kr.kit.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AuthVO {
	private String userId; //사용자 아이디
	private String auth; // 사용자 권한
	// 사용자별 권한 등록

}
