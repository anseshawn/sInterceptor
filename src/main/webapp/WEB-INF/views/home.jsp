<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/> 
<%-- <%@ page session="false" %> --%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<pre>
	<b>## 인터셉트(인증)</b>
	회원관리 인터셉터 설계
	모든 사용자가 사용할 수 있는 파일?
	- login / loginOk / logout / idCheck / nickCheck / join / joinOk
	
	memberInterceptor를 통해서 제한적인 처리를 하는 파일?
	- memberMain / memberUpdate / memberUpdateOk / memberDelete / memberList / memberSearch
	
	만들어야 할 jsp 파일?
	login / idCheck / nickCheck / join / memberMain / memberUpdate
	memberDelete / memberList / memberSearch
	
	메세지 처리파일 경로? logout / joinOk / memberUpdateOk
	<br/>
	<b>## 인가</b>
	- 회원가입/아이디중복체크,닉네임중복체크,로그인창, 방명록 은 모든이들이 접속가능처리
	- 게시판(board)은 로그인한 회원만 접속가능, 모든 회원들이 사용할수 있다. 단, 준회원은 읽기만 가능
	- 자료실(pds)은 정회원 이상만 사용가능, 단, 정회원은 업로드할 수 없다.
	- 방명록(guest)의 글은 모두 볼수 있으며, 방명록 글쓰기는 로그인 회원만 글올릴수 있다.
	
	회원등급 : 
 		0 : 관리자, 1:우수회원, 2:정회원, 3:준회원, 99:비회원
 		
</pre>
<P>  The time on the server is ${serverTime}. </P>
<hr/>
	<p>
		<a href="${ctp}/board/boardList">게시판리스트</a> │
		<a href="${ctp}/board/boardInput">게시판글쓰기</a> │
		<a href="${ctp}/board/boardUpdate">게시판글수정</a> │
	</p>
	<p>
		<a href="${ctp}/member/login">로그인</a> │
		<a href="${ctp}/member/logout">로그아웃</a> │
		<a href="${ctp}/member/join">회원가입</a> │
		<a href="${ctp}/member/memberMain">회원메인</a> │
	</p>
<hr/>
</body>
</html>
