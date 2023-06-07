<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<style>
#container {
	width: 1000px;
	margin: 0 auto;
}

.ulcss {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

.ulcss>li {
	display: inline-block;
	margin: 0 0 10px 50px;
}

header {
	text-align: center;
}

nav {
	text-align: center;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<div id="container">
		<header>
			<h3>연습용 게시판입니다.</h3>
			<nav>
				<ul class="ulcss">
					<li><a href="home">메인페이지</a></li>
					<li><a href="boardList">게시판</a></li>
					<c:choose>
						<c:when test="${user == null }">
							<li id="login" ><a href="login">로그인</a></li>
						</c:when>
						<c:otherwise>
    						<li id="logout" ><a href="logout">로그아웃</a></li>
    					</c:otherwise>
    				</c:choose>
					<li><a href="member">회원가입</a></li>
				</ul>
			</nav>
		</header>
		<body>
			<form action="board" method="post">
				<table class="table">
					<thead>
						<tr>
							<th style="width: 100px">글제목</th>
							<td colspan="3" style="text-align: left"><input type="text"
								name="boardTitle" value="" /></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input type="text" name="boardWriter" value="${user.name}" readonly /></td>
							<td><input type="text" style="display:none"/></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>글내용</th>
							<td><input type="text" name="boardContent"  value="" /></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" value="등록" />
			</form>
		</body>
	</div>
</body>
</html>
