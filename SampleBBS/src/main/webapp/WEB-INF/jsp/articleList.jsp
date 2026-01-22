<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page import ="beans.Article" %>
<%@page import="java.sql.Timestamp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Article list page</title>
</head>
<body>
	<label>記事一覧</label><br><br>
	<a href = ./UpdateUserPageServletAns>ユーザ情報更新</a><br><br>
	<a href = ./EntryArticlePageServlet>新規記事登録</a><br><br>

	<%List<Article> aList = (List<Article>)( request.getAttribute("articleList") );%>
	
	<%for(Article a : aList){%>
		<label>タイトル：<br><%=a.getTitle()%></label> <br>
		<label>本文：<br><%=a.getBody()%></label> <br>
		<label>登録者：<br><%=a.getEditorId()%></label> <br>
		<%SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");%>
		<label>登録日時：<br><%=sdf.format( a.getEntryDatetime() )%></label>
		<br>
		
		<div class="like-section">
		    <a href="LikeServlet?articleId=<%=a.getId()%>" style="text-decoration: none;">
		        <span>♥ いいね！ (<%=a.getLikeCount()%>)</span>
		    </a>
		</div>
		<br>
		<br>
	<%} %>
</body>
</html>