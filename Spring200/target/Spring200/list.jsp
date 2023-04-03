<%--
  Created by IntelliJ IDEA.
  User: jihun
  Date: 2023/04/03
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#b1').click(function () {
                $.ajax({
                    url: "fruit", // 필수
                    success: function (x) { // 필수
                        alert('fruit요청 성공!')
                        alert(x)
                        $('#result').append(x + "<br>")
                    },
                    error: function () {
                        alert('fruit요청 실패!')
                    }
                }) // ajax
            }) // b1
        })
        $(function () {
            $('#b2').click(function () {
                $.ajax({
                    url: "tour", // 필수
                    success: function (x) { // 필수
                        alert('tour요청 성공!')
                        alert(x)
                        $('#result').append(x + "<br>")
                    },
                    error: function () {
                        alert('tour요청 실패!')
                    }
                }) // ajax
            }) // b2
        })
    </script>
</head>
<body>
<input id="b1" type="button" value="과일목록 가지고 오기"><br>
<input id="b2" type="button" value="여행목록 가지고 오기"><br>
<hr color="red">
<div id="result"></div>
</body>
</html>