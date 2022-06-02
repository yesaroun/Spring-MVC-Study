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
<title>RegionInsertForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>css/main.css">
</head>
<body>

<!-- 
	RegionInsertForm.jsp
	- 지역 데이터 입력 페이지
-->

<div>
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<div id="content">
		<h1> [ 지역 추가 ] </h1>
		<hr />
		
		<form action="regioninsert.action" method="post" id="regionForm">
			<table>
				<tr>
					<th>지역</th>
					<td>
						<input type="text" id="name" name="name" placeholder="지역"/>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					
					<button type="button" class="btn" id="submitBtn"
					 style="width: 40%;">지역 추가</button>
					<button type="button" class="btn" id="listBtn"
					style="width: 50%;"
					
					
					
					onclick="">지역리스트</button>
					<!-- 추가하기!! -->
					<br /><br />
					
					<span id="err"
					style="color: red; font-weight: bold; display: none;"></span>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<!-- 회사 소개 및 어플리케이션 소개 영역 -->	
	<div id="footer">
	</div>
	
</div>

</body>
</html>