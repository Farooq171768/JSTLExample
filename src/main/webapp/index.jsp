<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Example</title>
</head>
<body>
	<h1>This is JSTL Example</h1>
	<!-- 1.Out Tag - To print-->
	<!-- 2.Set Tag - To declare variables-->

	<c:set var="i" value="14" scope="application"></c:set>
	<h1>
		<c:out value="${i}"></c:out>
	</h1>

	<!-- 3.Remove tag -->
	<c:remove var="i"></c:remove>
	<h1>
		<c:out value="${i}">This is Default value</c:out>
	</h1>
	<hr>

	<c:set var="i" value="14" scope="application"></c:set>

	<!-- 4.If Tag: test condition:true=>prints... -->
	<c:if test="${i==14}">
		<h1>Yes 'i' is 14 and condition is true</h1>
		<p>This is a paragraph, Hello how are you</p>
	</c:if>
	<hr>

	<!-- 5.choose,when otherwise: java-switch -->
	<c:choose>
		<c:when test="${i>0}">
			<h1>This is my first Case</h1>
			<h2>Number is positive</h2>
		</c:when>
		<c:when test="${i<0}">
			<h1>This is my second case</h1>
			<h2>Number is negative</h2>
		</c:when>
		<c:otherwise>
			<h1>Default Case</h1>
			<h2>Number is Zero</h2>
		</c:otherwise>
	</c:choose>
	<hr>

	<!-- 6.foreach tag...for repeating and traversing -->
	<c:forEach var="j" begin="1" end="10">
		<h1>
			Value of j is
			<c:out value="${j}"></c:out>
		</h1>
	</c:forEach>
	<hr>

	<!-- 7.redirect -->
	<!-- 8.url,param -->
	<%-- <c:redirect url="https://www.google.com"></c:redirect> --%>
	<c:url var="myurl" value="http://www.google.com/search">
		<c:param name="q" value="center for good governance"></c:param>
	</c:url>


	<h1>
		<c:out value="${myurl}"></c:out>
	</h1>
	<c:redirect url="${myurl}"></c:redirect>





</body>
</html>