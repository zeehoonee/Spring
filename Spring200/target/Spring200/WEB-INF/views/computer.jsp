<%--
  Created by IntelliJ IDEA.
  User: jihun
  Date: 2023/04/03
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table border=1>
    <tr>
        <td>항목명</td>
        <td>가격</td>
    </tr>
    <tr>
        <td>${vo.com}</td>
        <td>${vo.price}</td>
    </tr>
    <tr>
        <td>${vo.mouse}</td>
        <td>${vo.price2}</td>
    </tr>
    <tr>
        <td>총 합계</td>
        <td>${vo.sum}</td>
    </tr>
</table>