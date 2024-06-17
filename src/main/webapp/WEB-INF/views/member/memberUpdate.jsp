<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>memberUpdate.jsp</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
	<h2>회원 정보 수정</h2>
	<div><font color="blue">${data}</font></div>
	<hr/>
	<div><img src="${ctp}/resources/images/4.jpg" width="350px"/></div>
	<hr/>
	<form method="post">
		<input type="submit" value="수정하기" class="btn btn-success"/>
	</form>
	<hr/>
	<p>
		<a href="${ctp}/member/memberMain" class="btn btn-warning">돌아가기</a>
	</p>
</div>
<p><br/></p>
</body>
</html>