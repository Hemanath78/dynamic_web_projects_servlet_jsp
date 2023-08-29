<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Date Format Demo</title>
</head>
<body>
	<h1>JSTL Formatting tag library</h1>
	<h4>Formatting time from Date Object</h4>
	<c:set var="now" value="<%=new java.util.Date()%>" />
	<fmt:formatDate type="time" value="${now}" />

	<br />
	<h4>Converting String into Date to a specific dd-MM-yyyy format</h4>
	<c:set var="today" value="28-03-2018" />
	<!-- We are assigning the output of a Parsing into a variable so it needs to explicitly printed using c:out -->
	<fmt:parseDate value="${today}" var="parsedDate" pattern="dd-MM-yyyy" />
	<c:out value="${parsedDate}" />

	<br />
	<h4>Formatting Number to currency</h4>
	<c:set var="fee" value="35050.1067" />
	<fmt:formatNumber value="${fee}" type="currency" />

	<br />
	<h4>Parsing String into number</h4>
	<fmt:parseNumber type="number" value="${fee}" />

</body>
</html>