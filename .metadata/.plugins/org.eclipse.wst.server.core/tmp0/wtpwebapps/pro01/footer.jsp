<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="fpath" value="<%=request.getContextPath() %>" />
<hr>    
<footer>
	<div class="ft_wrap">
		<nav id="fnb">
			<ul>
				<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
			</ul>
		</nav>
		<div id="loc">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">해당 관광서</option>
				<option value="https://www.sd.go.kr/wangsimni2/index.do">왕십리주민센터</option>
				<option value="https://www.smpa.go.kr/user/nd92462.do">성동 경찰서</option>
				<option value="http://www.koreapost.go.kr/se/143/">우체국 안내</option>
			</select>
		</div>
		<script>
		function locate(){
			var sel = document.getElementById("sel");
			if(sel.value!=""){
				window.open(sel.value);
			}
		}
		</script>
		<br><br>
		<div id="copyright">
			<p class="addr">(우)08611 서울특별시 서울 성동구 왕십리, 대표전화 : 02-2286-5114(성동구청 전화)</p>
			<p class="copy">COPYRIGHT(C) SEOUL WANGSIMNI INTRO. ALL RIGHTS RESERVED.</p>
		</div>
	</div> 
</footer>