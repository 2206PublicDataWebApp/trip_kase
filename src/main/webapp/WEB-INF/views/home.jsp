<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>여행카세: Home</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<style type="text/css">
	body{
		font-family: 'Noto Sans KR', sans-serif;
	}
	#body{
		height: 700px;
	}
	
	
</style>
</head>
<body>
	<jsp:include page="../views/common/header.jsp"/>

	<div id="body">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/5VxYrmnwQiA?autoplay=1&mute=1;" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	
	<jsp:include page="../views/common/footer.jsp"/>
</body>
</html>
