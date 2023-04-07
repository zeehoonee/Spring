<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h3>데이터를 입력하세요 </h3>
<hr color="red">
<form action="food_insert.multi" method="get">
    이름 : <input name="name" value="음식이름"><br>
    가격 : <input name="price" value="음식가격"><br>
    이미지 :
    <form action="food_insert" method="get">
        <input name="img" value="1.png" type="file">
        <button type="submit">서버로 전송</button>
    </form>
</form>
<hr color="red">
<h3>수정 화면입니다. </h3>
<hr color="red">
<form action="food_update.multi" method="get">
    no : <input name="no"><br>
    price : <input name="price" value="수정할 가격"><br>
    <button type="submit">서버로 전송</button>
</form>
<hr color="red">
<h3>삭제 화면입니다. </h3>
<hr color="red">
<form action="food_delete.multi" method="get">
    no : <input name="no"><br>
    <button type="submit">서버로 전송</button>
</form>
<hr color="red">
<a href="food_list.multi">북마크 전체 목록 가지고 오기 </a><br>
<form action="food_one.multi" method="get">
    no : <input name="no" value="가져올 음식 번호"><br>
    <button type="submit">서버로 전송</button>
</form>
</body>
</html>