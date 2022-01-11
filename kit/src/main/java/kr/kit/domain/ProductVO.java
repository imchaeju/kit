package kr.kit.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ProductVO {
	
	private int pcode; //상품코드
	private String pname; //상품 이름
	private int price; //가격
	private int stock; //재고
	private String img; // 이미지
	private String catecode; //카테고리 코드
	private Date regDate; //등록일
	private Date updatedate; //수정일
	

}
