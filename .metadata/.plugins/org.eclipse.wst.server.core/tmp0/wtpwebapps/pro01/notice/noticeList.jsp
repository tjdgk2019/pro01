<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
	.container{width:1400px}
	.page{clear:both; height:100vh;}
	.title {text-align: center; font-size:40px; padding-top:2em;}
	.page_title{text-align: center; font-size:34px; padding-top:2em; padding-bottom:1.5em;}
	.page1{clear:both; height:100vh;}
	.page2{clear:both; height:100vh; text-align: center;}
	th.item1 {width:25%;}
	th.item2 {width:50%;}
	th.item3 {width:25%;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<nav aria-label="breadcrumb">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
		    <li class="breadcrumb-item"><a href="${hpath }/NotiList.do">커뮤니티</a></li>
		    <li class="breadcrumb-item active" aria-current="page">공지사항</li>
		  </ol>
		</nav>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"><strong>Notice</strong></h3>
			<div>
				<table class="table table-hover">
					<thead style="background-color:#dddddd";>
						<tr>
							<th class="item1">번호</th>
							<th class="item2">제목</th>
							<th class="item4">작성일</th>
							<th class="item5">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty notiList }">
							<c:forEach var="dto" items="${notiList }">
							<tr>
								<td>${dto.no }</td><td><a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a></td>
								<td>${dto.resdate }</td><td>${dto.visited }</td>
							</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty notiList }">
							<tr>
								<td colspan="5"><strong>공지사항이 존재하지 않습니다.</strong></td>
							</tr>
						</c:if>
					</tbody>
				</table>
				<br>
				<div>
					<a href="${path0 }/notice/noti_ins.jsp" class="btn btn-outline-dark">등록하기</a>
				</div>
			</div>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>