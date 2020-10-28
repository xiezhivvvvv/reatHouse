<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>你已经成功订房</h1>
<h1>房屋信息</h1>
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
				<td><a href="details?id=${house.id }&user=${user}">${house.id }</a></td>	<%-- <td><a href="http://localhost:8080//renthouse/page/details">${house.id }</a></td>  --%>
				<td>${house.id }</td>
			
	<%-- 			<td>${movie.movieCode }</td>
				<td>${movie.title }</td>
				<td>${movie.director }</td>
				<td><fmt:formatDate value="${movie.dateReleased }"
						pattern="yyyy-MM-dd" /></td>
				<td><a href="edit?id=${movie.id }">编辑</a></td> --%>
			</tr>
		</c:forEach>
	</table>


</body>
</html>