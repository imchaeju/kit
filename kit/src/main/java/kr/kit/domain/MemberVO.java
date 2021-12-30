package kr.kit.domain;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberVO {
	
	private String userId;
	private String password;
	private String phone;
	private String email;
	private String addr1;
	private String addr2;
	private String addr3;
	private String userName;
	private Date regDate;
	private int verify;
	private Long cnt; // 데이터 총건수 
	private List<AuthVO> authList;
	//하나의 아이디는 여러개의 권한 소유 가능
	
	


}