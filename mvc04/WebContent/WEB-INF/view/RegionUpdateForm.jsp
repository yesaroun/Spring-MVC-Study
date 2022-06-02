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
<title>RegionUpdateForm.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/jquery-ui.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/jquery-ui.js"></script>

<script type="text/javascript">
	$(function()
	{
		// 지역 추가 버튼 클릭 시
		$("#submitBtn").click(function()
		{
			if($("#regionName").val()=="")
			{
				$("#err").html("필수 입력 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				return;
			}
			
			$("#regionForm").submit();
		});
	});
</script>
</head>
<body>

<!--
	RegionUpdateForm.jsp
	- 지역 데이터 수정 페이지
-->

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<form action="regionupdate.action" method="post" id="regionForm">
		<table>
			<tr>
				<th>지역 번호</th>
				<td>
					<input type="text" id="regionId" name="regionId"
					value="${region.regionId }" placeholder="지역 번호" />
				</td>
			</tr>
			<tr>
				<th>부서 이름</th>
				<td>
					<input type="text" id="regionName" name="regionName" placeholder="부서 이름"
					value="${region.regionName }"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<br /><br />
				
				<button class="btn" id="submitBtn" type="button" style="width: 40%; height: 50px">지역 변경</button>
				<button class="btn" id="listBtn" type="button" style="width: 40%; height: 50px"
				onclick="location.href='regionlist.action'">지역 리스트</button>
				<br /><br />
				
				<span id="err" style="color: red; font-weight: bold; display: none;"></span>
				
				</td>
			</tr>
		</table>
	</form>
	
</div>

<div id="footer">
</div>

</body>
</html>