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
.container { width:1400px; }
.page { clear:both; height:100vh; text-align: center;}
.page_title { text-align: center; font-size:34px; padding-top:2em; padding-bottom:1.5em;}
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${path0 }/GetQnaList.do">질문 및 답변</a></li>
			    <li class="breadcrumb-item active" aria-current="page">질문 및 답변 상세보기</li>
			  </ol>
			</nav>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">질문 및 답변 상세보기</h3>
			<div>
				<table class="table">
					<tbody>
						<tr>
							<th>글 번호</th>
							<td>${qna.no }</td>
						</tr>
						<tr>
							<th>글 제목</th>
							<td>${qna.title }</td>
						</tr>
						<tr>
							<th>글 내용</th>
							<td>${qna.content }</td>
						</tr>
						<tr>
							<th>작성일시</th>		
							<td>${qna.resdate }</td>
						</tr>
						<tr>
							<th>조회수</th>
							<td>${qna.visited }</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="btn-group">
				  	<a href="${path0 }/qna/aIns.jsp?parno=${qna.no }" class="btn btn-outline-primary">답변 등록</a>
					<a href="${path0 }/EditQna.do?no=${qna.no }" class="btn btn-outline-dark">질문 수정</a>
					<a href="${path0 }/DelQuestion.do?parno=${qna.no }" class="btn btn-outline-danger">질문 삭제</a>
					<a href="${path0 }/EditQna.do?no=${qna.no }" class="btn btn-outline-dark">답변 수정</a>
					<a href="${path0 }/DelAnswer.do?no=${qna.no }" class="btn btn-outline-danger">답변 삭제</a>
				  	<a href="${path0 }/GetQnaList.do" class="btn btn-outline-secondary">질문 및 답변 목록</a>
				</div>
			</div>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title"></h3>

		</div>	
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>