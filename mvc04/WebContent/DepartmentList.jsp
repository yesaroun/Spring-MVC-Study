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
<title>DepartmentList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">



</script>
</head>
<body>

<!-- 
	DepartmentList.jsp
	- 부서 리스트 출력하는 페이지
-->

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역 -->
	<div id="content">
		<h1>[ 부서 관리(관리자 전용) ]</h1>
		<hr />
		
		<div>
			<form action="">
				<input type="button" value="부서 추가"  class="btn"
				onclick="location.href=''" /> <!-- 추가하기!! -->
			</form>
		</div>
		
		<table class="table" id="department">
			<tr>
				<th>부서 번호</th>
	            <th>부서명</th>
	            <th>삭제가능여부</th>
	            <th>수정</th>
	            <th>삭제</th>
			</tr>
			
			<c:forEach var="department" items="${departmentList }">
			<tr>
				<td>${department.departmentId }</td>
				<td>${department.departmentName }</td>
				<td>${department.delCheck }</td>
				<td>
					<button type="button" class="btn updateBtn"
					value="${department.departmentId }">수정</button>
				</td>
				<td>
					<button type="button" class="btn deleteBtn"
					value="${department.departmentId }">삭제</button>
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