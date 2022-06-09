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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>


<div>
	<h1>회원등록</h1>
	<hr />
</div>

<div>
	<form action="memberinsert.action" method="post" id="memberForm">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" id="id" name="id" placeholder="아이디" />
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" id="pw" name="pw" placeholder="비밀번호" />
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>
					<input type="text" id="name" name="name" placeholder="이름" />
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
					<input type="tel" id="tel" name="tel" placeholder="전화번호" />
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" id="email" name="email" placeholder="이메일" />
				</td>
			</tr>
		</table>
		<button type="submit" class="btn" id="submitBtn">직원 추가</button>
		
	</form>
</div>

</body>
</html>