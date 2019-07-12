<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<title>Home</title>
<link type="text/css" rel="stylesheet" href="/nd/resources/css/w3.css"/>
<link type="text/css" rel="stylesheet" href="/nd/resources/css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="/nd/resources/bootstrap/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="/nd/resources/css/c3.css" />
<script type="text/javascript" src="/nd/resources/js/jquery-3.4.1.min.js"></script>
</head>
<style type="text/css">
	html, body {
		margin: 0px;
		padding: 0px;
		text-align: center;
	}
	
	.box {
		display: inline-block;
		width: 600px;
		margin: 15px auto;
		padding: 10px;
	}
	
	label {
		line-height: 300%;
	} 
</style>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#obtn').click(function(){
			$(location).attr('href','logoutProc.nd');
		});
		
		var no = 0;
	
		
		
		/* 
		document.getElementById('lbtn').onclick = function(){
			
		} */
		
	});
</script>
<body>
		<div class="w3-col w3-center">
		<h2 class="w3-padding w3-margin w3-center w3-card-4 w3-win8-crimson box">Login</h2>
	</div>
	<div class="w3-col">
		<c:if test="${empty SID}">
 		<form method="POST" action="loginProc.nd" name="frm" id="frm" class="w3-card-4 w3-round-large w3-padding box">
			<div class="w3-container w3-margin-top">
				<label class="w3-col m1" for="id">I D : </label>
				<input class="w3-col m11 w3-input w3-border" type="text" name="id" id="id" required placeholder="아이디를 입력하세요!" />
			</div>
			<div class="w3-container w3-margin-top">
				<label class="w3-col m1" for="pw">P W : </label>
				<input class="w3-input w3-col m11 w3-border" type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요!" required />
			</div>
			<input type="submit" class="w3-button w3-margin-top w3-blue" id="btn" value="Login" />
			<input type="button" class="w3-button w3-margin-top w3-orange" id="jbtn" value="Join" />
		</form>
		</c:if>
		<!--  로그인된 경우 노출 -->
		<c:if test="${not empty SID}" >
		<div>
 	 		<div id="frm1" class="w3-card-4 w3-round-large w3-padding box">
				<div class="w3-container w3-margin-top w3-center">
					<h2 class="w3-center">${SID} 님은 이미 로그인 되었습니다.</h2>
				</div>
				
				<input type="button" class="w3-button w3-margin-top w3-blue" id="obtn" value="Logout" />
				<input type="button" class="w3-button w3-margin-top w3-orange" id="lbtn" value="link" />
			</div> 
		</div>		
		</c:if>
	</div>
</body>
</html>
