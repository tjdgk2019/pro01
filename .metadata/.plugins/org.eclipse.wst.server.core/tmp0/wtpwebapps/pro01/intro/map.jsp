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
.page { clear:both; min-height:100vh; margin:0; padding:0; }
.page_title { font-size:36px; padding-top:2em; text-align:center; }
.img { width:600px; display:block; margin:0 auto;}
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
			    <li class="breadcrumb-item"><a href="${hpath }/intro/origin.jsp">지역소개</a></li>
			    <li class="breadcrumb-item active" aria-current="page">위치안내</li>
			  </ol>
			</nav>
			<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">왕십리 위치 안내</h3>
			<div style="padding-bottom:3rem; float:center;">
				<p>
					<img class="img" src="${path0 }/images/map.webp" alt="왕십리지도" />
				</p>
			</div>
			<div class="">
			</div>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>