package kr.kit.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.kit.domain.CustomUser;
import kr.kit.domain.MemberVO;
import kr.kit.mapper.MemberMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService {
   @Setter(onMethod_ = @Autowired)
   private MemberMapper mapper;

   @Override
   public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
      log.warn("Load User By UserName : " + userName);

      // userName means userid

      MemberVO member = mapper.read(userName);
      log.warn("queried by mapper : "+ member);
      
      return member==null? null:new CustomUser(member);
   }

}
