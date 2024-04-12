<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
	.page_title{text-align: center; font-size:20px; padding-top:2em; padding-bottom:1.5em;}
	.title {text-align: center; font-size:34px; padding-top:2em; padding-bottom:2em;}
	.page1 {clear:both; height:100vh;}
	.page2 {clear:both; height:100vh; text-align: center;}
	.page3 {clear:both; height:100vh;}
	.page4 {clear:both; height:100vh;}
	#footer{clear:both; height:25vh; padding-top:2em; background-color:#000000;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page1">
		<br>
		<h2 class="title">콘텐츠 영역 01</h2>
	</section>
	
	<section class="page2" style="background-color:#f8f8f8">
		<div style="width:1400px; margin:0 auto;">
		    <h2 class="title">콘텐츠 영역 02</h2>
		</div>
	</section>
	<section class="page3" style="background-color:#dddddd">
		<div style="width:1400px; margin:0 auto;">
			<h2 class="title">콘텐츠 영역 03</h2>
		</div>
	</section>
	<section class="page4" style="background-color:#b8b8b8">
		<div style="width:1400px; margin:0 auto;">
			<h2 class="title">콘텐츠 영역 04</h2>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>