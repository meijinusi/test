<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>お問い合わせ - 完了</title>
</head>
<body>
    <h2>送信が完了しました</h2>
    <p>以下の内容でお問い合わせを受け付けました。</p>
    <hr>
    <p>お名前: ${onamae}</p>
    <p>メールアドレス: ${mail_address}</p>
    <p>性別: ${sex}</p>
    <p>お問い合わせ種別:
        <%
            String[] cates = (String[]) request.getAttribute("cates");
            if (cates != null) {
                out.print(String.join(", ", cates));
            }
        %>
    </p>
    <p>住まいエリア: ${pref}</p>
    <p>メッセージ:</p>
    <p style="white-space: pre-wrap;">${message}</p>
    <hr>
    <p><a href="${pageContext.request.contextPath}/contact/input">入力画面へ戻る</a></p>
</body>
</html>