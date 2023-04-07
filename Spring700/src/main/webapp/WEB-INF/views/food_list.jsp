<%@page import="com.multi.mvc.food.FoodVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		body {
			background: yellow;
		}

		td {
			width: 100px;
			text-align: center;
		}

		.top {
			background: black;
			color: white;
		}

		.down {
			background: lime;
		}
	</style>
</head>
<body>
<table>
	<tr>
		<td class="top">no</td>
		<td class="top">name</td>
		<td class="top">price</td>
		<td class="top">img</td>
	</tr>

	<c:forEach items="${list}" var="bag">

		<tr>
			<td class="down">${bag.no}</td>
			<td class="down"><a href="food_list?id=${bag.no}">${bag.name}</a>
			</td>
			<td class="down">${bag.price}</td>
			<td class="down">
				<img src="${bag.img}">
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>