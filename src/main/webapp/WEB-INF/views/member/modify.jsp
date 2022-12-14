<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="UTF-8">
<title>회원정보수정</title>

<style>
	#fw1 { 
	font-weight: bold;
	width : 150px;
	}
	#btn1 {
  color: white;
  line-height: 35px;
  text-align: center;
  background: #1287ed;
  border: solid 2px #1287ed;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
}

	#btn2 {
  color: white;
  line-height: 35px;
  text-align: center;
  background: #fa4f4f;
  border: solid 2px #fa4f4f;
  border-top-left-radius: 5px;
  border-top-right-radius: 5px;
  border-bottom-left-radius: 5px;
  border-bottom-right-radius: 5px;
}
	
table {
border-collapse: separate;
border-spacing: 0 20px;
}


</style>


</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<br><br>
	<h1 align="center">회원정보 수정</h1>
	<br><br>
		<form  action="/member/modify.tripkase" method="GET">
		<table align="center">
			
			<c:if test="${sessionScope.loginMember.memberPwd eq loginMember.memberPwd }">
			
			<tr>
				<td id="fw1"> * 아이디</td>
				<td>
					<input type="text" name="memberId" value="${loginMember.memberId }" readonly >
				</td>
			</tr> 
			<tr>
				<td id="fw1"> * 변경할 비밀번호</td>
				<td>
					<input type="text" name="memberPwd" value="${loginMember.memberPwd }" >
				</td>
			</tr> 
			<tr>
				<td id="fw1"> * 닉네임</td> 
				<td>
					<input type="text" name="memberNick" value="${loginMember.memberNick }" >
				</td>
			</tr>
			<tr>
				<td id="fw1"> * 이름</td>
				<td>
					<input type="text" name="memberName" value="${loginMember.memberName }" >
				</td>
			</tr>
			<tr>
				<td id="fw1"> * 생년월일</td>
				<td>
					<input type="text" name="memberBd" value="${loginMember.memberBd }" >
				</td>
			</tr>
			<tr>
				<td id="fw1"> * 성별</td>
				<td>
					<input type="text" name="memberGender" value="${loginMember.memberGender }" >
				</td>
			</tr>
			<tr>
				<td id="fw1"> * 핸드폰번호</td>
				<td>
					<input type="text" name="memberPhone" value="${loginMember.memberPhone }" >
				</td>
			</tr>
			<tr>
				<td id="fw1"> * 이메일</td>
				<td>
					<input type="text" name="memberEmail" value="${loginMember.memberEmail }" >
				</td>
			</tr>
		
			</c:if>
			<tr>
				<td colspan="2" align="center">
				<br><br>
					<button type="submit" class="btn btn-outline-primary">수정하기</button>
					<button type="button" class="btn btn-outline-primary" onclick="removeMember();">탈퇴하기</button>
				</td>
			</tr>
		</table>
	</form>
	<br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="../common/footer.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>









