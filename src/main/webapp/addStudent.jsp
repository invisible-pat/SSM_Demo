<%--
  Created by IntelliJ IDEA.
  User: fengzhixuan
  Date: 2022/4/10
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=utf-8" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName()
            +":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <title>添加</title>
    <base href="<%=basePath%>" />
</head>
<body>
<div align="center">
    <p>学生注册页面</p>
    <form action="addStudent.do" method="post">
        <table cellspacing="0" cellpadding="0">
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td>&nbsp</td>
                <td><input type="submit" value="注册"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
