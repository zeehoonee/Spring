<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판</title>
</head>
<body>
<h3>게시판 글 작성</h3>
<hr color="red">
<form action="insert2.multi" method="get">
    title : <label><input name="title"></label><br>
    content : <label><input name="content"></label><br>
    writer : <label><input name="writer"></label><br>
    <button type="submit">글쓰기</button>
</form>
<hr color="red">


<h3>게시판 글 수정</h3>
<hr color="#000000">
<form action="update2.multi" method="get">
    no : <label><input name="no"></label><br>
    title : <label><input name="title"></label><br>
    <button type="submit">제목 수정</button>
</form>
<hr color="red">

<h3>게시판 글 삭제</h3>
<hr color="red">
<form action="delete2.multi" method="get">
    no : <label><input name="no"></label><br>
    <button type="submit">글 삭제</button>
</form>
<hr color="red">

<h3>게시판 글 검색</h3>
<hr color="red">
<form action="one2.multi" method="get">
    no : <label><input name="no"></label><br>
    <button type="submit">글 검색</button>
</form>
<hr color="red">

<button type="button">먹통버튼(아무 기능이 없음)</button>
</body>
</html>