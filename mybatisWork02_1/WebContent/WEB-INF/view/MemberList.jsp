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
<title>MemberList.jsp</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- jquery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function()
	{
		$(".btnDelete").click(
			function()
			{
				if(confirm("정말 삭제하시겠습니까?"))
				{
					$(location).attr("href", "memberdelete.action?mid=" + $(this).val());
				}
			});
		
		$(".btnUpdate").click(
			function()
			{
				var name = propt("이름을 입력하세요.");
				var telephone = prompt("전화번호를 입력하세요.");
				
				//alert(name);
				$(location).attr("href", "membermodify.action?mid=" + $(this).val() + "&name=" + name + "&telephone=" + telephone)
			});
	});
</script>
</head>
<body>

<div class="container">
	<div class="panel-group">
		<div class="panel panel-default">
			<div class="panel-heading" id="title">
				회원 정보 입력
			</div>
			
			<div class="panel-body">
				<form action="memberinsert.action" method="post" role="form">
					
					<div class="form-group">
						<label for="name">
							NAME : 
						</label>
						<input type="text" class="form-control" id="name" name="name" />
					</div>
					
					<div class="form-group">
						<label for="telephone">
							TELEPHONE : 
						</label>
						<input type="tel" class="form-control" id="telephone" name="telephone" />
					</div>
					
					<button type="submit" class="btn btn-default btn-sm">SUBMIT</button>
					<button type="submit" class="btn btn-default btn-sm btnCancel">CANCEL</button>
				</form>
			</div>
		</div><!-- close .panel .panel-default -->
		
		<div class="panel panel-default">
		
		<div class="panel-body">
			<table class="table">
				<thead>
					<tr>
						<th>MID</th>
						<th>NAME</th>
						<th>Telephone</th>
						<th>수정 / 삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${list }" >
					<tr>
						<td class="mid">
							${member.mid }
						</td>
						<td>${member.name }</td>
						<td>${member.telephone }</td>
						<td>
							<button type="button" class="btn btn-default btn-xs btnUpdate" value="${member.mid }">수정</button>
							<button class="btn btn-default btn-xs btnDelete" type="button" value="${member.mid }">삭제</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<button type="button" class="btn btn-default btn-sm" role="badgeFrame">
				Count <span class="badge" role="badge">${count }</span>
			</button>
		</div>
		
		</div>
	</div>
</div>

</body>
</html>