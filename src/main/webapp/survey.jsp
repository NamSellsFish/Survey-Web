<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thanks</title>
<link rel="stylesheet" href="./main.css" type="text/css" />
</head>
<body>
		<!-- Breadcrumb -->
		<c:import url="breadcrumb.html" />

	<h1>Thanks for joining our survey</h1>
	<p>Here is the information that you entered</p>
	<label>Email: </label>
	<span>${user.email}</span>
	<br>
	<label>First Name: </label>
	<span>${user.firstName}</span>
	<br>
	<label>Last Name: </label>
	<span>${user.lastName}</span>
	<br>
	<label>Birthday: </label>
	<span>${user.getBirthDay()}</span>
	<br>
	<label>Hearing us from: </label>
	<span>${user.getHearingFrom()}</span>
	<br>
	<label>You wanna contact? </label>
	<span>${user.getWannaContact()}</span>
	<br>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:if test="${user.getWannaContact() == 'Yes'}">
			<label>Contact Via:</label>
			<span>${user.contact}</span>
		</c:if>
	<form action="/surveyWeb" method="">
		<p>To enter another email address, click on the Back button in your
				browser or the Return button shown below.</p>
		<input type="hidden" name="action" value="join" />
		<!-- <button> <a href="http://localhost:8080/surveyWeb-0.0.1-SNAPSHOT/">Return</a></button> -->
	</form>
</body>
</html>