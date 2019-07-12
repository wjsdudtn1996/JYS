<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
<title>Home</title>
<link type="text/css" rel="stylesheet" href="/nd/resources/css/w3.css"/>
<link type="text/css" rel="stylesheet" href="/nd/resources/css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="/nd/resources/css/c3.css" />
<script type="text/javascript" src="/nd/resources/js/jquery-3.4.1.min.js"></script>
</head>
<script>
	$(function(){
		var sid = '${SID}';
		if(sid){
			$('#login').html('Logout');
			$('#login').attr('id','logout');
			
		}
		
		$('.btn').click(function(){
			
			var ttl = $(this).attr('id');
			var target = '';
			switch(ttl){
			case 'login':	
				target = 'member/loginForm.nd';
				break;
			case 'logout':
				target = 'member/logoutProc.nd';
				break;
			}
			$(location).attr('href',target);
			
		});
		
		
	});
</script>
<style type="text/css">
	html, body{
		margin: 0px;
		padding:0px;
		text-align: center;
	}
	.t1{
		display : inline-block;
		width: 500px;
		margin : 20px auto 10px;	
		
	}
	.w3-button{
		width: 130px;
		height:50px;
		text-align: center;
		
	}
</style>
<body>
	<div class="w3-col m3"><p></p></div>
		<div class="w3-col m6">
		<h1 class="w3- container w3-win8-cobalt w3-center">환 영 합 니 다 !!!!!</h1>
			<div class="w3-row w3-center"> 
			<div class="w3-col m4 w3-button w3-win8-crimson btn" id="login">Login</div>
			<div class="w3-col m4 w3-button w3-win8-amber btn" id="join">Join</div>
		</div>
	</div>
</body>
</html>
