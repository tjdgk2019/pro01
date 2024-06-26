<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
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
th.item1 { width:6%; }
th.item2 { width:11%; }
th.item4 { width:8%; }
#tab1 { padding-bottom:3em; }
.img { display:block; margin:0 auto;}
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page">
			<nav aria-label="breadcrumb" style="text-align:right">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="#">Home</a></li>
			    <li class="breadcrumb-item"><a href="#">이용안내</a></li>
			    <li class="breadcrumb-item active" aria-current="page">교통 안내</li>
			  </ol>
			</nav>
			<div style="width:1000px; margin:0 auto;">
			<h3 class="page_title"><strong>지하철 안내</strong></h3>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="${hpath }/tour/subway.jsp">지하철</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${hpath }/tour/bus.jsp">버스</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/intro/history.jsp">도로</a>
			  </li>
			</ul>
			</div>
			<p>
				<img class="img" src="${path0 }/images/subway.png" alt="지하철노선도" />
			</p>
			<textarea class="form-control" rows="6" disabled>
			
			서울 지하철 2호선이 왕십리로를 따라 지나가며, 상왕십리역이 하왕십리동 관내에 있고,
			신당역, 왕십리역, 한양대역은 행정구역상 왕십리에 속하지는 않지만, 통상적으로 부르는 왕십리의 범위에 속한다.
			또한, 왕십리는 2호선을 비롯하여 5호선, 경의중앙선, 수인분당선이 환승하는 왕십리역은 국내 최초 4개 노선 환승역이다.
			앞으로 서울 경전철 동북선과 GTX-C가 왕십리역을 거치게 될 예정이다.
			</textarea>
			<br>
			<div>
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th class="item1">번호</th>
							<th class="item2">호선</th>
							<th class="item3">경로</th>
							<th class="item4">색상</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2호선</td>
							<td>을지로순환선(본선) : 시청 - 시청 | 성수지선: 성수 - 신설동  | 신정지선 : 신도림 - 까치산</td>
							<td>초록색</td>
						</tr>
						<tr>
							<td>2</td>
							<td>5호선</td>
							<td>방화 - 상일동 ↔ 강동 - 마천  | 하남선 : 상일동 - 하남검단산</td>
							<td>보라색</td>
						</tr>
						<tr>
							<td>3</td>
							<td>수인·분당선</td>
							<td>수인선 : 인천 - 수원 | 분당선 : 수원 - 왕십리 | 경원선 : 왕십리 - 청량리</td>
							<td>노란색</td>
						</tr>
						<tr>
							<td>4</td>
							<td>경의·중앙선</td>
							<td>경의선 : 도라산역 - 서울역 | 용산선 : 가좌역- 용산역 | 경원선 : 용산역 - 청량리역 | 중앙선 : 청량리역 - 지평역</td>
							<td>옥색</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<br>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>