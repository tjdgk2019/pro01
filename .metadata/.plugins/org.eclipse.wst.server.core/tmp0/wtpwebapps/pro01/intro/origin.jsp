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
	.container { width:1400px}
	.page { clear:both; height:184vh;}
	.page_title { text-align: center; font-size:34px; padding-top:2em; padding-bottom:0.5em;}

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
		    <li class="breadcrumb-item active" aria-current="page">지명유래</li>
		  </ol>
		</nav>
		<c:if test="${not empty msg}">
		<div style="width:1400px; margin:0 auto;">${msg }</div>
		</c:if>
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title">동유래</h3>
			<textarea class="form-control" rows="20" disabled>
			
			왕십리(往十理)라는 이름은 조선 초에 무학대사(無學大師)가 도읍을 정하려고 이곳까지 왔다가
			한 노인으로부터 십리를 더 가라는 가르침을 받았다고 해서 유래되었다고 한다.
			
			이 지역은 조선 초부터 한성부에 속했지만, 도성안의 경우처럼 거리가 번성한 것은 아니어서 이 일대를 왕십리평(往十理坪)
			또는 왕심평(往尋坪)이라고 불렀는데 이것은 들판이라는 말이다. 6. 25동란 전까지만 해도 왕십리 일대의 주민은 반농반상(半農半商)을 하는 사람들이었다.
			따라서 이곳 일대를 일명 진퍼리(진펄)라고 부른 것도 질펀한 들에 있는 마을이라고 하여 붙인 이름이다.
			
			왕십리제1동은 상왕십리동(上往十理洞)과 하왕십리동(下往十理洞)의 일부인 ‘왕십리길’ 북쪽지역에 위치하고 있으며, 이곳에 동사무소가 설치되기 시작한 것은
			1916년 9월 28일(경성부고시 제19호)이었다. 광복 직후에 서울시가 발간한 ‘시세일람(市勢一覽)’을 보면 상왕십리동내에 상왕십리 동부동회(東部洞會)와
			서부동회(西部洞會)를 두었다가 동부동회는 상왕십리 제1동으로, 서부동회는 상왕십리 제2동으로 개칭되었다.
			
			그 뒤 1959년 10월 30일(시조례 제165호) 상왕십리 제1동을 조선시대의 인창방 이름을 따서 인창동(仁昌洞), 상왕십리 제2동을 현인동(賢仁洞)으로 명칭을 변경하였다.
			그리고 1975년 10월 1일 (시조례 제981호) 인창동 지역의 일부와 현인동 지역을 중구 황학동으로 편입하여 인창동 일부를 하왕십리제1동 관할에 두었는데,
			1985년 9월 1일(시조례 제2015호)에 하왕십리제1동을 왕십리제1동으로 개칭하였고, 2008년 8월 11일 도선동과 합쳐졌다.
			
			고산자로와 왕십리길을 끼고 있는 도선동의 명칭에 대한 유래는 두 가지가 전해진다. 그 하나는 통일신라 때 비기도참설(秘記圖讖說)을 주장한 도선대사가
			무학봉에서 수도했다는 전설에 따라 붙여졌다고도 하며, 또 조선개국 때 무학대사가 태조의 명으로 도읍지를 물색하던 중 왕십리에 가서 지세를 살피고 있을 때
			소를 타고 지나던 노인이 무학대사에게 서북쪽으로 십리를 더 가라고 지시를 하였는데 바로 이 노인이 신라말 도선대사의 현령이었다는 것이다.
			
			도선동은 법정동인 도선동, 홍익동의 행정을 담당하는 동 관할구역 명칭이다.
			마장로 좌우편에 위치한 홍익동은 한민족의 시조 단군의 건국이념이 홍익인간이었기 때문에 이를 따서 제정되었다고 한다.
			
			광복직후에 도선동 지역은 하왕십리 동부동회, 홍익동 지역은 하왕십리 중앙동회에서 행정을 담당하다가 1955년 4월 18일 동제 실시로 하왕십리 동부동회는 하왕십리제1동,
			하왕십리중앙동회는 하왕십리제2동으로 바뀌게 되고, 이어서 1959년 10월 31일(서울특별시조례 제165호)에 하왕십리제1동이 도선동, 하왕십리제2동이 홍익동으로 개칭되었다.
			이후 1970년 5월 18일(서울특별시조례 제613호) 홍익동을 폐지하고 도선동에서 도선동과 홍익동의 행정을 담당하였으나 2008년 8월 11일 왕십리제1동과 합쳐져 왕십리도선동으로
			명칭이 변경되었다.
			
			그 뒤 1936년 조선총독부령 제 8호에 의해 경성부 구역확장에 따라 경성부에 편입되어 하왕십리정으로 되었으며 1943년 총독부령 제 163호에 의해 성동구에 속하였다.
			
			1946년 서울시 헌장 제 1조에 의해 일제식 동명을 모두 버리고 하왕십리동으로 하여 오늘에 이르고 있다.
		</textarea>
			<h3 class="page_title">일반 현황</h3>
			<table class="table table-striped table-hove">
			  <tbody>
			  	<tr>
			      <th>면적</th>
			      <td>0.72㎢ (우리구의 4.2%)</td>
			    </tr>
			    <tr>
			      <th>인구</th>
			      <td>26,402명(남 12,442명, 여 13,960명)</td>

			    </tr>
			    <tr>
			      <th>세대수</th>
			      <td>12,134세대</td>
			    </tr>
			    <tr>
			      <th>통반조직</th>
			      <td>36통 266반</td>
			    </tr>
			    <tr>
			      <th>주택별 인구수</th>
			      <td>총 인구수 : 26,402명(단독: 4,674, 연립,다세대: 2,851, 아파트 18,877)</td>
			    </tr>
			    <tr>
			      <th>법정동명</th>
			      <td>상왕십리동, 하왕십리동, 홍익동, 도선동</td>
			    </tr>
			  </tbody>
		</table>
		<h3 class="page_title">동연혁</h3>
		<ul class="bu dl">
		<li class="block"><span class="title">1945년 광복직후</span>
			<ul class="bu">
				<li>도선동지역 : 하왕십리 동부동회</li>
				<li>홍익동지역 : 하왕십리 중앙동회</li>
			</ul>
		</li>
		<br>
		<li class="block"><span class="title">1955. 4.18</span>
			<ul class="bu">
				<li>도선동지역 : 하왕십리1동사무소</li>
				<li>홍익동지역 : 하왕십리2동사무소</li>
			</ul>
		</li>
		<br>
		<li class="block"><span class="title">1959.10.31</span>
			<ul class="bu">
				<li>하왕십리제1동사무소 : 도선동사무소</li>
				<li>하왕십리제2동사무소 : 홍익동사무소</li>
			</ul>
		</li>
		<br>
		<li><span class="title">1970. 5.18</span><span class="text">홍익동사무소를 폐지하고 도선동?홍익동 지역을 합하여 도선동사무소로 현재에 이르고 있음.</span></li>
		<li><span class="title">2008. 8.11</span><span class="text">왕십리제1동사무소를 폐지하고 왕십리제1동?도선동?홍익 동을 합하여 왕십리도선동 주민센터로 변경되었음. </span></li>
		</ul>
		</div>
	</section>	
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>