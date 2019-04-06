<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<font color="red">${requestScope.message}</font>
<form action="http://localhost:8080/Test/LoginServlet" method="post">
    用户名:<input type="text" name="username" value=""><font color="red">${requestScope.error}</font>
    <br>
    密码:<input type="password" name="password">
    <br>
    验证码:<input type="text" name="image">
    <img src="http://localhost:8080/Test/VerifyCodeServlet">
    <input type="button" value="看不清? 换一张." id="btn"><font color="red">${requestScope.imageMess}</font>
    <br>
    <input type="submit" value="登录">
</form>
<script type="text/javascript">

    document.getElementById("btn").onclick = function () {
        // 获取img元素
        // 为了让浏览器发送请求到servlet, 所以一定要改变src
        document.getElementsByTagName("img")[0].src =
            "http://localhost:8080/Test/VerifyCodeServlet?time=" + new Date().getTime();
    };
</script>
</body>
</html>