<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />    
<header>
	<div class="logo_wrap">
		<a href="/pro01"><img src="${hpath }/images/logo.png" alt="왕십리 로고" /></a>
	</div>
	<nav id="gnb">
		<ul>
			<li class="item">
				<a href="" class="dp1">지역소개</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/intro/origin.jsp">지명유래 및 연혁</a></li>
					<li><a href="${hpath }/intro/map.jsp">위치 안내</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">이용안내</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/tour/subway.jsp">교통 안내</a></li>
					<li><a href="${hpath }/tour/building.jsp">시설 안내</a></li>
					<li><a href="${hpath }/tour/rest.jsp">맛집 안내</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">커뮤니티</a>
				<ul class="sub_menu">
					<li><a href="${hpath }/NotiList.do">공지사항</a></li>
					<li><a href="${hpath }/GetQnaList.do">묻고답하기</a></li>
				</ul>
			</li>
			<li class="item">
				<a href="" class="dp1">마이페이지</a>
				<ul class="sub_menu">
					<c:if test="${empty sid }">
					<li><a href="${hpath }/member/login.jsp">로그인</a></li>
					<li><a href="${hpath }/member/term.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${not empty sid }">
					<li><a href="${hpath }/LogOut.do">로그아웃</a></li>
					<li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
					</c:if>
					<c:if test="${sid.equals('admin') }">
					<li><a href="${hpath }/AdminMain.do">관리자로</a></li>
					</c:if>
					<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
					<li><a href="${hpath }/member/policy.jsp">개인정보</a></li>
				</ul>
			</li>
		</ul>
	</nav>
</header>