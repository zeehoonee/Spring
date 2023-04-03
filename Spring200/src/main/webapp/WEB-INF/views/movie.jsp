
<%--
  Created by IntelliJ IDEA.
  User: jihun
  Date: 2023/04/03
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table border=1>
    <tr bgcolor="#fa8072">
        <td>영화제목</td>
        <td>영화가격</td>
    </tr>
    <tr bgcolor="#5f9ea0">
        <td>${vo.title}</td>
        <td>${vo.price}</td>
    </tr>
    <tr>
        <td colspan="2"><a href="문자">문자인증받기</a></td>
    </tr>
</table>