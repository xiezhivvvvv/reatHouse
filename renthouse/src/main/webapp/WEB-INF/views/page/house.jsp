<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	  		<h1>${user.username}</h1>

	   <form>
	          筛选:
			&nbsp;&nbsp;区域：<select name="cid">
			<option value="-1">全部</option>
			<c:forEach items="${district }" var="d">
				<option value="${d.id }"
					>${d.name }</option>
			</c:forEach>
				</select> 
					          筛选:
			&nbsp;&nbsp;区域：<select name="cid">
			<option value="-1">全部</option>
			<c:forEach items="${district }" var="d">
				<option value="${d.id }"
					>${d.name }</option>
			</c:forEach>
				</select> 
		</form>
<%-- 			<form action="list" method="get">
		分类：<select name="cid">
			<option value="-1">全部</option>
			<c:forEach items="${district }" var="d">
				<option value="${d.id }"
					<c:if test="${cid==d.id }">selected</c:if>>${d.name }</option>
			</c:forEach>
				</select> 
	</form>	 --%>
				
<div>

	<table border="1">
<!-- 	 	     `UserId` `TypeId`   `StreetId`    `FLOOR`   `Price`  `UpdateTime`  `Topic`  `Content`  `longitude``latitude` `State`	 	 
                                      房屋编号	        区域编号	     街道编号	                     楼层		    价格	         更新时间	               概述		详细描述            经度                        维度                  房租状态 -->
		<tr>
			<td>房屋编号</td>
			<td>区域编号</td>
			<td>区域编号</td>
			<td>楼层	</td>
			<td>价格</td>
			<td>更新时间</td>
			<td>概述</td>
			<td>详细描述</td>
			<td>经度</td>
			<td>维度 </td>
			<td>房租状态</td>
			<td>房间详情</td>
			<td>房间详情</td>
		
			
		</tr>
		<c:forEach items="${houses}" var="house">
			<tr>
				<td>${house.id }</td>
				<td>${house.typeId }</td>
				<td>${house.streetId }</td>
				<td>${house.floor }</td>
				<td>${house.price }</td>
				<td>${house.updateTime }</td>
				<td>${house.topic }</td>	        <%-- ${house.Topic } --%>
				<td>${house.content }</td>   		<%-- ${house.content } --%>
				<td>${house.longitude }</td>
				<td>${house.latitude }</td>
				<td>${house.state }</td>
				<td>
				<c:if test="${user==null}">
					<a href="details?houseid=${house.id }&userid=0">${house.id }</a>
				</c:if>
				<c:if test="${user!=null}">
					<a href="details?houseid=${house.id }&userid=${user.id}">${house.id }</a>
				</c:if>
		
				
				
				</td>	<%-- <td><a href="http://localhost:8080//renthouse/page/details">${house.id }</a></td>  --%>
				<td>${house.id } and ${user.id}</td>
			
	<%-- 			<td>${movie.movieCode }</td>
				<td>${movie.title }</td>
				<td>${movie.director }</td>
				<td><fmt:formatDate value="${movie.dateReleased }"
						pattern="yyyy-MM-dd" /></td>
				<td><a href="edit?id=${movie.id }">编辑</a></td> --%>
			</tr>
		</c:forEach>
	</table>

</div>	          	
</body>
</html>