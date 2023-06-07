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
<h3>사원수정</h3>
 <form action="empUpdate" method="post" name="frm">
	employeeId <input name="employeeId" readonly="readonly" value="${emp.employeeId}"><br>
	fname <input name="firstName" value="${emp.firstName}"><br>
	lname * <input name="lastName" value="${emp.lastName}"><br>
	hiredate * <input name="hireDate" readonly="readonly" value="${emp.hireDate}"><br>
	email * <input name="email" value="${emp.email}"><br>
	departmentId <br>
		<c:forEach items="${depts}" var="dept">
			<input type="radio" name="departmentId" value="${dept.departmentId}" 
			<c:if test="${dept.departmentId==emp.departmentId }">checked</c:if>>
			${dept.departmentName}
		</c:forEach>
		<br>
	jobId * 
	<select name="jobId">
		<option value="">--선택--</option>
		<c:forEach items="${jobs}" var="job">
			<option value="${job.jobId}" 
			<c:if test="${job.jobId==emp.jobId }">selected</c:if>>
			${job.jobTitle }</option>
		</c:forEach>
		</select><br>
	<button>저장</button>
 </form>
 <script>
 //frm.departmentId.value = "${emp.departmentId}"
 //frm.jobId.value = "${emp.jobId}"
 </script>
</body>
</html>