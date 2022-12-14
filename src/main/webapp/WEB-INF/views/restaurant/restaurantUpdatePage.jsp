<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행카세 : 맛집 등록 페이지</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="/resources/js/jquery-3.6.1.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
</head>
<style>
    body {
        font-family : 'Noto Sans KR',sans-serif;
    }
</style>
<!-- 테스트용 jsp -->
<body>
 <jsp:include page="../common/header.jsp"></jsp:include>
 <jsp:include page="../admin/menuBar.jsp"></jsp:include>
	<form action="/restaurant/updateRestaurantData.tripkase" method="post" enctype="multipart/form-data">
		<input type="hidden" name="resNo" value="${restaurant.resNo}">
		
		<br><br>종류 선택
		<input type="radio" id="resType" name="resType" value="korean"> 한식
		<input type="radio" id="resType" name="resType" value="chinese"> 중식
		<input type="radio" id="resType" name="resType" value="japanese"> 일식
		<input type="radio" id="resType" name="resType" value="american"> 양식
		<input type="radio" id="resType" name="resType" value="etc"> 기타
		
		<br><br> 지역
		<input type="radio" id="resArea1" name="resArea" value="seoul"> 서울
		<input type="radio" id="resArea2" name="resArea" value="gyeonggi"> 경기
		<input type="radio" id="resArea3" name="resArea" value="incheon"> 인천
		<input type="radio" id="resArea4" name="resArea" value="kangwon"> 강원
		<input type="radio" id="resArea5" name="resArea" value="chungbuk"> 충청북도
		<input type="radio" id="resArea6" name="resArea" value="chungnam"> 충청남도
		<input type="radio" id="resArea7" name="resArea" value="gyeongbuk"> 경상북도
		<input type="radio" id="resArea8" name="resArea" value="gyeongnam"> 경상남도
		<input type="radio" id="resArea9" name="resArea" value="jeonbuk"> 전라북도
		<input type="radio" id="resArea10" name="resArea" value="jeonnam"> 전라남도
		<input type="radio" id="resArea11" name="resArea" value="jeju"> 제주
		<br><br>
		
		<br><br>이름
		<input type="text" name="resName" value="${restaurant.resName}">
		
		<br><br>
		<table>
			<tr class="fileTr">
				<td>첨부파일</td>
				<td>
					<c:forEach items="${resImgList}" var="img">
						<input type="hidden" value="${img.resImgNo}" name="resImgNo">
						<input type="hidden" value="${img.resFileRename}" name="resFileRename">
					</c:forEach>
						<button class="btn btn-default" type="button" onclick="addFile();">추가</button>
						<button class="btn btn-default" type="button" onclick="removeFile();">삭제</button>
						<input type="file" name="reloadFile">
					
				</td>
			</tr>		
		</table>
		
		<br><br>상세정보
		<textarea name="resDetail">${restaurant.resDetail}</textarea>
		
		<br><br>문의
		<input type="text" name="resTel" value="${restaurant.resTel}">
		
		<br><br>주소
		<input type="text" name="resAddress" value="${restaurant.resAddress}">
		
		<br><br>휴일
		<input type="text" name="resDayoff" value="${restaurant.resDayoff}">
		
		<br><br>대표메뉴
		<input type="text" name="resMainmenu" value="${restaurant.resMainmenu}">
		
		<br><br>
		<input type="submit" value="등록">
	</form>
<jsp:include page="../common/footer.jsp"/>
<script>
	function addFile(){
		var number = 2;
		var trTag = $(".fileTr");
		$(trTag).children('td').eq(1).append("<br><input multiple='multiple' type='file' name='uploadFile' />");
		number = number + 1;
	}
	function removeFile(){
		var trTag = $(".fileTr");
	 	if($(trTag).children('td').eq(1).children('input').length > 1) {
		 	$(trTag).children('td').eq(1).children('input:last').remove();
		 	$(trTag).children('td').eq(1).children('br:last').remove();
		} 
	}
</script>
</body>
</html>