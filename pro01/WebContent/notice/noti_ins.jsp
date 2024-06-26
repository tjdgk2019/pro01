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
	.page1{clear:both; height:100vh;}
	.page2{clear:both; height:100vh; text-align: center;}
	.title {text-align: center; font-size:40px; padding-top:2em;}
	.page_title{text-align: center; font-size:34px; padding-top:2em; padding-bottom:1.5em;}
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
		<h3 class="page_title">공지사항 글 등록</h3>
		<form action="${path0 }/NotiIns.do"  method="post">
			<table class="table">
				<tbody>
					<tr>
						<th><label for="title">제목</label></th>
						<td>
							<input type="text" name="title" id="title" class="form-control" maxlength="100" required>
						</td>
					</tr>
					<tr>
						<th><label >내용</label></th>
						<td>
							<textarea rows="14" cols="80" name="content" id="content" class="form-control" placeholder="내용을 입력해 주세요."></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<div class="btn-group">
				  <button type="submit" class="btn btn-outline-primary">글 등록</button>
				  <a href="${path0 }/NotiList.do" class="btn btn-outline-secondary">글 목록</a>
				</div>
		</form>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>