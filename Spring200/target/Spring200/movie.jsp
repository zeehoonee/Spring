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
            $('#b2').click(function () {
                $.ajax({
                    url: "movie", // 필수
                    data: {
                        title: $('#title').val(),
                        price: $('#price').val()
                    },
                    success: function (x) { // 필수
                        alert('movie요청 성공!')
                        alert(x)
                        $('#result').append(x + "<br>")
                    },
                    error: function () {
                        alert('movie요청 실패!')
                    }
                }) // ajax
            }) // b2
        })
    </script>
</head>
<body>
영화 제목 : <input id="title"><br>
영화 가격 : <input id="price"><br>
<input id="b2" type="button" value="영화 예매 항목 확인"><br>
<hr color="red">
<div id="result"></div>
</body>
</html>