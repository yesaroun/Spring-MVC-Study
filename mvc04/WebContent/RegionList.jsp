<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegionList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
</head>
<body>

<!-- 
	RegionList.jsp
	- 지역 리스트 출력하는 페이지	
-->

<div>
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<div id="content">
		<h1>[ 지역 관리(관리자 전용) ]</h1>
		<hr />
		
		<div>
	
	
	
	
			<!-- 여기 추가하기!!!! -->
			<form action="">
				<input type="button" value="지역 추가"
				onclick="" />
			</form>
		</div>
		
		<table class="table" id="region">
			<tr>
				<th>지역 번호</th>
				<th>지역명</th>
				<th>삭제가능여부</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			
			<c:forEach var="region" items="${regionList }">
			<tr>
				<td>${region.regionId }</td>
				<td>${region.regionName }</td>
				<td>${region.delCheck }</td>
				<td>
					<button type="button" class="btn updateBtn"
					value="${region.regionId }">수정</button>
				</td>
				<td>
					<button type="button" class="btn deleteBtn"
					value="${region.regionId }">삭제</button>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	<!-- 회사 소개 및 어플리케이션 소개 영역 -->
	<div id="footer">
	</div>
</div>

</body>
</html>