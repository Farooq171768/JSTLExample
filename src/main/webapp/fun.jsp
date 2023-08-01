<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Function tags</title>
</head>
<body>
<h1>Function Page:</h1>
<p>This page is all about Function Tags</p>

<c:set var="name" value="Center for Good Governance"></c:set>
<h1><c:out value="${name}"></c:out></h1>

<h2>Length of name is: <c:out value="${fn:length(name)}"></c:out></h2>
<hr>
<h1><c:out value="${fn:toLowerCase(name)}"></c:out></h1>

<hr>
<h1><c:out value="${fn:toUpperCase(name)}"></c:out></h1>

<hr>
<h1><c:out value="${fn:contains(name,'Good')}"></c:out></h1>


</body>
</html>