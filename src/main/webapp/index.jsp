<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

<%
    String basePath = request.getScheme() + "://" + request.getServerName()
            +":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
</head>
<body>
<div align="center">
    <p>SSM整合开发--实现student表的操作</p>
    <img src="images/1.jpg">
    <table cellspacing="0" cellpadding="0">
        <tr>
            <td><a href="addStudent.jsp" >注册学生</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><a href="listStudent.jsp" >查询学生</a></td>
        </tr>
    </table>
</div>
</body>
</html>
