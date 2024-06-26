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
	.table{margin:0 auto; text-align: left;}
	.page_title{text-align: center; font-size:34px; padding-top:2em; padding-bottom:1.5em;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
<section class="page" id="page1">
<c:if test="$not empty msg">
<div style="width:1400px; margin:0 auto;">${msg }</div>
</c:if>
<div style="width:1400px; margin:0 auto; text-align: center;">
	<h3 class="page_title"><i class="fas fa-walking fa-fw"></i><strong>Login</strong></h3>
	<form action="${path0 }/loginPro.do" method="post">
		<table class="table">
			<tbody>
				<tr>
				<th><label for="id">ID</label></th>
				<td>
					<input type="text" name="id" id="id" class="form-control" required>
				</td>
				</tr>
				<tr>
				<th><label for="pw">Password</label></th>
				<td>
					<input type="password" name="pw" id="pw" class="form-control" required>
				</td>
				</tr>
			</tbody>
		</table>
		<div class="col-auto">
    	<span id="passwordHelpInline" class="form-text">
     	 Must be 8-20 characters long.
    	</span>
    	</div>
		<hr>
		<div class="btn-group">
			<button type="submit" class="btn btn-outline-primary">로그인</button>
			<a href="/pro01" class="btn btn-outline-dark">취소</a>
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