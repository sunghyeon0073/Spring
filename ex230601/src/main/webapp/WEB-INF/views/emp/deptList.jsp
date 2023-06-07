<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>부서조회</h2>
<a href="deptInsert">등록</a>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>부서번호</th><th>부서이름</th><th>관리자번호</th><th>지역번호</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${deptList}" var="dept">
				<tr>
					<td>${dept.departmentId}</td><td>${dept.departmentName}</td><td>${dept.managerId}</td><td>${dept.locationId}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>