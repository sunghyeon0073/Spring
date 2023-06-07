<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사원조회</h2>
	<a href="empInsert">등록</a>
	<form action="empList">
		부서<input name="departmentId" value="${emp.departmentId }">
		fname<input name="firstName" value="${emp.firstName }">
		<button>검색</button>
		<button type="reset">초기화</button>
	</form>
	<div>
		<table border="1">
			<thead>
				<tr>
					<th>사원번호</th>
					<th>부서번호</th>
					<th>이름</th>
					<th>성</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${empList}" var="emp">
					<tr>
						<td>${emp.employeeId}</td>
						<td>${emp.departmentId}</td>
						<td>${emp.firstName}</td>
						<td>${emp.lastName}</td>
						<td><a href="empUpdate?empId=${emp.employeeId}">수정</a></td>
						<td><a href="empDelete?empId=${emp.employeeId}">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>