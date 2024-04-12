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
	.page{clear:both; height:100vh; text-align: center;}
	.table{margin:0 auto; text-align: center;}
	.title {text-align: center; font-size:40px; padding-top:2em;}
	.page_title{text-align: center; font-size:34px; padding-top:2em; padding-bottom:1.5em;}
	#page2{background-color:#f8f8f8;}
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
		<h3 class="page_title">공지사항 상세보기</h3>
		<div>
			<table class="table table-striped table-hover">
				<tbody>
						<tr>
							<th>글 번호</th>
							<td>${noti.no }</td>
						</tr>
						<tr>
							<th>글 제목</th>
							<td>${noti.title }</td>
						</tr>
						<tr>
							<th>글 내용</th>
							<td>${noti.content }</td>
						</tr>
						<tr>
							<th>작성일시</th>		
							<td>${noti.resdate }</td>
						</tr>
						<tr>
							<th>조회수</th>
							<td>${noti.visited }</td>
						</tr>
					</tbody>
			</table>
			<br>
			<div class="btn-group">
				  <a href="${path0 }/notice/noti_ins.jsp" class="btn btn-outline-primary">글 등록</a>
				  <a href="${path0 }/EditNotice.do?no=${noti.no }" class="btn btn-outline-dark">글 수정</a>
				  <a href="${path0 }/DelNotice.do?no=${noti.no }" class="btn btn-outline-danger">글 삭제</a>
				  <a href="${path0 }/NotiList.do" class="btn btn-outline-secondary">글 목록</a>
				</div>
			</div>
		</div>
</section>
<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">
			<h2 class="title">Content</h2>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>