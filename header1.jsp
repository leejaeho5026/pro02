<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset = "UTF-8" >
<title>Insert title here</title>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="content">
	<div class="container-fluid">
		<h2>공지사항</h2>
		<table class="table">
			<thead>
				<tr><th>연번</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
			</thead>
			<tbody>
				<c:forEach var="noti" items="${notiList }" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td><a href="/GetNotice.do?idx=${noti.idx }">${noti.title }</a></td>
					<td>${noti.author }</td>
					<td>${noti.resdate }</td>
					</tr>
					</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>