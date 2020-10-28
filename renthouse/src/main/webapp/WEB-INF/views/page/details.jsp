<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${user.id}</h1>
<h1>访问详细信息</h1>
<h1>租房评论</h1>
<h1>给租户留言</h1>
<!-- 	 	     `UserId` `TypeId`   `StreetId`    `FLOOR`   `Price`  `UpdateTime`  `Topic`  `Content`  `longitude``latitude` `State`	 	 
                                              房屋编号	        区域编号	     街道编号	                     楼层		    价格	         更新时间	               概述		详细描述            经度                        维度                  房租状态 -->

<div>
<h1>房屋详情</h1>
<span>${house.id }</span>
 <span>${house.typeId }</span>
 <span>${house.streetId }</span>
 <span>${house.floor }</span>
 <span>${house.price }</span>
 <span>${house.updateTime }</span>
 <span>${house.topic }</span>
 <span>${house.content }</span>
 <span>${house.longitude }</span>
 <span>${house.latitude }</span>
 <span>${house.state }</span>
 <span>图片名称:${photo.filename} </span>
 <span><img alt="${photo.title}" src="images/${photo.filename}" width="200px" height="200px"></span>
 <span>${aaa}</span>
 <span>
 			<c:if test="${user==null}">
					 <a href="Login"> 我要租房1</a>
				</c:if>
				<c:if test="${user!=null}">
					 <a href="updateuserlist?houseid=${houseid}&userid=${userid}"> 我要租房2</a>
				</c:if>

<%-- <c:if  test="${user.username!=null} " >
   <a href="updateuserlist?user=${user}"> 我要租房1</a>
</c:if>
<c:if  test="${user.username==null} " >
   <a href="Login"> 我要租房2</a>
</c:if> --%>
<%--  <a href="Login"> 我要租房1</a>
 <a href="updateuserlist?house=${house}&user=${user}"> 我要租房2</a> --%>

 </span>

<%-- 	<h2>名称：${movie.title }</h2>
	<h2>导演：${movie.director }</h2>
	<h2>上映时间：${movie.dateReleased }</h2>
	<a href="download?filename=${movie.movieCode }.jpg">
		<img alt="" src="images/${movie.movieCode}.jpg" width="200px" height="200px">
	</a> --%>
</div>




</body>
</html>