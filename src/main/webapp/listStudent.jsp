<%--
  Created by IntelliJ IDEA.
  User: fengzhixuan
  Date: 2022/4/10
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName()
            +":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <base href="<%=basePath%>>">
</head>
<body>
    <div align="center">
        <p>查询学生数据</p>
        <table>
            <thead>
                <tr>
                    <td>id</td>
                    <td>姓名</td>
                    <td>年龄</td>
                </tr>
            </thead>
            <tbody id="stubody">
            </tbody>
        </table>
    </div>

<%--    发起ajax请求--%>
<script type="text/javascript">
    $(function (){
        stuinfo()
    })
    function stuinfo(){
        $.ajax({
            url:"queryStudent.do",
            type:"post",
            dataType:"json",
            success:function (resp){
                //json array
                $("stubody").html("");
                $.each(resp,function (i,n){
                    $("#stubody").append("<tr>")
                        .append("<td>" + n.id + "</td>")
                        .append("<td>"+n.name+"</td>")
                        .append("<td>"+n.age+"</td>")
                        .append("</tr>")
                })
            }

        })
    }

</script>
</body>
</html>
