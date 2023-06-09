<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />  
<%
	String sid = "";
	if(session!=null) sid = (String) session.getAttribute("sid");  
%>
<header id="hd" class="container">
	<div class="container-fluid">
		<nav id="tnb" class="navbar navbar-default">
			<ul class="nav navbar-nav navbar-right" style="padding-right:40px">
				<c:if test="${empty sid }">
					<li><a href="${path }/UserLogin.do">로그인</a></li>
					<li><a href="${path }/UserTerms.do">회원가입</a></li>
				</c:if>
				<c:if test="${!empty sid }">
					<li><a href="${path }/MyPage.do">마이페이지</a></li>
					<li><a href="${path }/MyBasket.do?id=${sid }">장바구니</a></li>
					<li><a href="${path }/MySalesList.do?id=${sid }">구매내역</a></li>
					<li><a href="${path }/UserLogout.do">로그아웃</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<div class="container-fluid">	
		<nav class="navbar navbar-default" style="padding-right:30px;">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="${path1 }">MYSHOP</a>
		    </div>
		
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav" data-toggle="tab-hover" role="tablist">
		        <li class="active"><a href="${path1 }/ShopIntro.do">재호 쇼핑몰<span class="sr-only">(current)</span></a></li>
		        <li class="dropdown">
		          <a href="${path1 }/ProductList.do?cate=01" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">운동화<span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/ProductList.do?cate=0101">남자운동화</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0102">여자운동화</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0103">공용운동화</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0104">아동운동화</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0105">기타 교과서</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0111">대학 참고서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0112">고등 참고서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0113">중등 참고서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0114">초등 참고서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0115">기타 참고서</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/ProductList.do?cate=02" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">슬리퍼 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/ProductList.do?cate=0201">남자슬리퍼</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0202">여자슬리퍼</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0203">공용슬리퍼</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0204">아동슬리퍼</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0205">기타 자격증 관련서적</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/ProductList.do?cate=03" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">구두 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/ProductList.do?cate=0301">남자구두</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0302">여자구두</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0303">공용구두</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0304">아동구두</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0305">데이터베이스</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0306">사무자동화</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0307">멀티미디어/그래픽</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0311">건축/인테리어</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0312">토목/건설</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0313">환경/소방/도시/조경</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0314">자동차/운전</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0321">금속/재료</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0322">기계/역학/항공</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0323">전기/전자</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0324">농수산/축산</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0331">생활과학</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0332">의학</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0333">기타</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/ProductList.do?cate=04" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">국내 일반 도서 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/ProductList.do?cate=0401">소설</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0402">시/에세이</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0403">작품집</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0404">인문</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0411">가정/육아</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0412">요리</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0413">건강</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0414">자기계발</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0415">취미/실용/스포츠</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0421">경제/경영</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0422">정치/사회</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0423">역사/문화</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0424">종교</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0425">예술/대중문학</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="${path1 }/ProductList.do?cate=05" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">기타 서적 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/ProductList.do?cate=0501">잡지</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0502">만화</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/ProductList.do?cate=0511">서양 도서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0512">일본 도서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0513">중국 도서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0514">동남아 도서</a></li>
		            <li><a href="${path1 }/ProductList.do?cate=0515">기타 해외 도서</a></li>
		          </ul>
		        </li>
     		    <li class="dropdown">
     		    	<a href="${path }/NoticeList.do"class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
			        <ul class="dropdown-menu" role="menu">
			            <li><a href="${path1 }/NoticeList.do">공지사항</a></li>
			            <li><a href="${path1 }/FaqList.do">자주하는 질문</a></li>
			            <li><a href="${path1 }/QnaList.do">묻고 답하기</a></li>
			            <li class="divider"></li>
			            <li><a href="${path1 }/ReviewList.do">이용후기</a></li>
			            <li><a href="${path1 }/DataList.do">자료실</a></li>
			        </ul>
     		    </li>
		      </ul>
		      
		      <c:if test="${sid=='admin' }">
		      <ul class="nav navbar-nav navbar-right">
		        <li><a href="${path1 }/MemberList.do">회원 관리</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">상품/판매 관리 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/AdminCategoryList.do">카테고리 관리</a></li>
		            <li><a href="${path1 }/AdminProductList.do">상품 관리</a></li>
		            <li><a href="${path1 }/AdminSalesList.do">판매 관리</a></li>
		            <li><a href="${path1 }/AdminInventoryList.do">재고 관리</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/AdminBasketList.do">장바구니 관리</a></li>
		           	<li><a href="${path1 }/Survey.do">배송 관리</a></li>
		            <li><a href="${path1 }/AdminPayList.do">결제 관리</a></li>
		          </ul>
		        </li>
		        <li class="dropdown" style="padding-right:30px; margin-right:30px;">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">글 관리 <span class="caret"></span></a>
		          <ul class="dropdown-menu" role="menu">
		            <li><a href="${path1 }/AdminNoticeList.do">공지사항 관리</a></li>
		            <li><a href="${path1 }/AdminReviewList.do">이용후기 관리</a></li>
		            <li><a href="${path1 }/AdminQnaList.do">질문 및 답변 관리</a></li>
		            <li class="divider"></li>
		            <li><a href="${path1 }/AdminFaqList.do">자주하는 질문 관리</a></li>
		            <li><a href="${path1 }/AdminDataList.do">자료실 관리</a></li>
		          </ul>
		        </li>
		      </ul>
		      </c:if>
		    </div>
		  </div>
		</nav>
	</div>
</header>
