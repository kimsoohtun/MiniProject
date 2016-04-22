<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("#login").click(function(){
			$.ajax({
				type: 'post',
				url: 'login.user',
				data: {
					id: $('#id').val(),
					pw: $('#pw').val()
				},
				dataType: 'xml',
				success: function(data){
					var result = $(data).find('result').text();
					alert(result);
					
					if(result==1) {
						window.location.href = '/';
					} else if(result==-1) {
						
					} else {
						
					}
				}
			});
		});
		
		$('#register').click(function(){
			location.href = 'register-form.jsp';
		});
	});
</script>
</head>
<body>
	<c:choose>
		<c:when test="${empty id }">
			<label>아이디</label>
			<input type="text" id="id" name="id">
			<label>비밀번호</label>
			<input type="text" id="pw" name="pw">
			<button id="register">가입</button>
			<button id="login">로그인</button>	
		</c:when>
		<c:when test="${!empty id }">
			<jsp:include page="user-menu.jsp"></jsp:include>		
		</c:when>
	</c:choose>
</body>
</html>