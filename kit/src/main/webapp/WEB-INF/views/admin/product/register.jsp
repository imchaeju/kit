<%@ page language="java" 
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->

<%@ include file="../../includes/adminheader.jsp"%>

   <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-7 ftco-animate">
						<br><br>
							<h3 class="mb-4 billing-heading" align="center">상품 등록하기</h3>
							<br>
	          	<div class="row align-items-end">
	          		<div class="col-md-6">
	                <div class="form-group">
	                	<label for="pcode">상품코드</label>
	                  <input type="text" id="pcode" name="pcode" class="form-control" placeholder="">
	                  <br>
	                </div>
                </div>
	          		<div class="col-md-6">
	                <div class="form-group">
	                	<label for="pname">상품명</label>
	                  <input type="text" id="pname" name="pname" class="form-control" placeholder="">
	                  <br>
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="price">상품가격</label>
	                  <input type="text" id="price" name="price" class="form-control" placeholder="">
	                  <br><br>
	                </div>
                </div>
                <div class="col-md-6">
	                <div class="form-group">
	                	<label for="stock">상품재고</label>
	                  <input type="text" id="stock" name="stock" class="form-control" placeholder="">
	                  <br><br>
	                </div>
                </div>
                <div class="w-100"></div>
		            <div class="col-md-12">
		            	<div class="form-group">
		            		<label for="country">카테고리</label>
		            		<div class="select-wrap">
		                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                  <select name="catecode" id="catecode" class="form-control">
		                  	<option value="">----</option>
		                    <option value="">삼계탕</option>
		                    <option value="">밀퇴유나베</option>
		                    <option value="">A</option>
		                    <option value="">B</option>
		                    <option value="">C</option>
		                  </select><br><br>
		                </div>
		            	</div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-12">
	                <div class="form-group">
	                	<label for="img">이미지</label>
	                  <input type="file" id="img" name="img" class="form-control" placeholder="">
	                  <br><br>
	                </div>
                </div><br>
                <div class="col-md-6">
	                <div class="form-group">
	                	<label for="date">상품등록일</label>
	                  <input type="text" id="date" name="date" class="form-control" placeholder="" readonly>
	                  <br>
	                  <br>
	                </div>
                </div>
                <br>
                <br>
                <button id="rebtn" class="btn btn-primary py-3 px-4" href="/shop/shop">등록하기</button>
	            </div>
	          </form><!-- END -->
					</div>
        </div>
      </div>
    </section> <!-- .section -->
    


<%@ include file="../../includes/adminfooter.jsp"%>