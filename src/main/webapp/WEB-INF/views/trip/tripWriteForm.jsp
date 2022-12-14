<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행카세 : 여행소통 게시글 작성</title>
<link href="../resources/css/trip.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<div>
		<p class="first-text">게시글 작성</p>
	</div>
	
	<form action="/trip/tripDetail.tripkase" method="post" enctype="multipart/form-data">
		<!-- 게시글 제목, 내용 작성 영역 -->
		<div id="text-area">
			<input type="text" id="textTitle" name="tripTitle" placeholder=" 제목을 입력해주세요."> <br>
			<textarea id="textContent" name="tripContents" placeholder=" 내용을 입력해주세요." spellcheck="false"></textarea> <br>
		</div>
		
		<!-- 파일 업로드 영역 -->
		<div class="mb-3">
			<input type="file" id="formFileSm" class="form-control form-control-sm" name="uploadFile">
		</div>
		<br><br>
		
		<hr style="width : 80%; margin : 0 auto;">
		
		<!-- 버튼 영역 -->
		<br>
		<div id="trip-button1">
			<input type="button" id="tbutton1" value="목록으로" onclick="location.href='/trip/tripList.tripkase';">
			<input type="submit" id="tbutton2" value="등록하기">
		</div>
		<br><br>
	</form>
	<jsp:include page="../common/footer.jsp"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</body>
</html>