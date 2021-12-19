package kr.kit.domain;

public class MemberVO {
	
	private String userId;
	private String password;
	private String phone;
	private String email;
	private String addr1;
	private String addr2;
	private String addr3;
	
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAddr1() {
		return addr1;
	}
	
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	
	public String getAddr2() {
		return addr2;
	}
	
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	
	public String getAddr3() {
		return addr3;
	}
	
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	@Override
	public String toString() {
		return "MemberVO [userId=" + userId + ", password=" + password + ", phone = " + phone
				+ ", email=" + email + ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + "]" ;
	}
	
	


}
