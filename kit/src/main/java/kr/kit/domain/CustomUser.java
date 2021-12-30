package kr.kit.domain;
import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;
import lombok.extern.log4j.Log4j;
@Getter
@Log4j
public class CustomUser extends User {
	
	 private static final long serialVersionUID = 1L;
	   private MemberVO member;
	public CustomUser(String userName, String password, Collection<? extends GrantedAuthority> authorities) {
		super(userName, password, authorities);
		// TODO Auto-generated constructor stub
	}
	
	public CustomUser(MemberVO member) {
	      super(member.getUserId(), member.getPassword(), member.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth())).collect(Collectors.toList()));
	      this.member = member;
	      log.info(member);
	      log.info(member);
	      //사용자 아이디, 패스워드, 권한 목록으로 초기화
	   }

}
