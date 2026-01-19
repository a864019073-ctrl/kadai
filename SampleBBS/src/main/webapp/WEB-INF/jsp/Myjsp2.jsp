<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>データ入力</title>
</head>
<body>
<!--  LoginServletにデータを送信するformを宣言する. 登録処理なので，methodはpostを指定．
	後はentryArticle.jspと同様なので，そちらのコメントを参考にするとよい．-->
	<div id="form">
	<p class="form-title" >データ入力サンプル</p>
	
	<form action="./MyinputServlet" method="post">
		<p ><label>テキストの入力：<input type="text" name="data" size="30" maxlength="20"></label></p>
		<p ><input type="submit" value="送信"></p>
	</form>

	</div>
		

</body>
</html>