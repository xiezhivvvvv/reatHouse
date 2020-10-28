<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>登录</h1>


<form action="LoginUser" method="post" >
  
 <div>
    <label for="username" >用户名</label>
    <div >
      <input type="text"  name="username" placeholder="请输入用户名">
    </div>
  </div>
   <div >
    <label for="inputPassword3" >密码</label>
    <div >
      <input type="text"  name="password" placeholder="请输入密码">
    </div>
  </div>
  <div >
    <div >
    <input type="submit"  width="100" value="登录" name="submit" border="0"
   
    height:35px;width:100px;color:white;">
    </div>
  </div>
</form>
<a href="register">注册</a>


</body>
</html>