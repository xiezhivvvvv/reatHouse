<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css"><!--  -->
</head>
<body>
	<div id="page">
		<!-- 页眉 -->
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
		<div id="main">
			<div id="left">
				<c:import url="/nav"></c:import>
			</div>
			<div id="content">
				<tiles:insertAttribute name="content"></tiles:insertAttribute>
			</div>
			<div class="clear"></div>
		</div>
		<!-- 页脚 -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	</div>
</body>
</html>