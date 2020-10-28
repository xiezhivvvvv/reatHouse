<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
   
   <style>
   

.error {
  
  font-size:13px;
  color: red;
  
}

   </style>
    <script type="text/javascript">
    $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#myform").validate({
        	
            rules : {
            	name : {
                    required : true,
                },
               
                idcard : {
                    required : true,
                    
                  
                },
                phone : {
                    required : true,
                   	number: true
                  
                }
                
            },
            messages : {
            	name : {
                    required : "姓名不能为空！",
                },
               
                idcard : {
                    required : "身份证号码不能为空！",
                   
                },
                phone : {
                    required : "手机号码不能为空！",
                    number: "请输入正确的手机号码"
                  
                }
                
            }
        });
    })
	</script>
	
</head>
<body>

<div class="result-title">
<h1>我要租房</h1>
<table>
<h3>用户信息和租房信息</h3>
<tr>
<h3>用户信息</h3>
<td>${user.username}</td>
<td>${user.phone}</td>
<td>${user.email}</td>
<tr></tr>
<td><h3>租房信息</h3></td>
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
</tr>
</table>

<div><a href="showhetong">看看合同</a></div>
<div><a href="yes?houseid=${houseid}&userid=${userid}">确认租房</a><a href="LoginUser?userid=${userid}">取消租房</a></div>
</div>

    
</body>
</html>