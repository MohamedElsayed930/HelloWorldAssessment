<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<table>
		<tr>
			<td><spring:message code="user.firstName" /></td>
			<td><spring:message code="user.lastName" /></td>
			<td><spring:message code="user.address1" /></td>
			<td><spring:message code="user.address2" /></td>
			<td><spring:message code="user.city" /></td>
			<td><spring:message code="user.state" /></td>
			<td><spring:message code="user.zip" /></td>
			<!-- <td></td><td></td> -->
		</tr>
		<c:forEach var="user" items="${message}">
			<tr>
				<td>${user.firstName}</td>
				<td>${user.lastName}</td>
				<td>${user.address1}</td>
				<td>${user.address2}</td>
				<td>${user.city}</td>
				<td>${user.state}</td>
				<td>${user.zip}</td>
				<%-- <td><a href="editEmployee?id=${user.id}">Edit</a></td>
				<td><a href="deleteEmployee?id=${user.id}">Delete</a></td> --%>
			</tr>
		</c:forEach>
	</table>
</body>
</html>