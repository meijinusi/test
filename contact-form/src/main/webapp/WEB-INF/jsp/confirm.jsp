<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>お問い合わせ - 確認</title>
</head>
<body>
    <h1>お問い合わせ内容の確認</h1>
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

    <form action="${pageContext.request.contextPath}/contact/thanks" method="post">
        <input type="hidden" name="onamae" value="${onamae}">
        <input type="hidden" name="mail_address" value="${mail_address}">
        <input type="hidden" name="sex" value="${sex}">
        <%
            if (cates != null) {
                for (String cate : cates) {
        %>
            <input type="hidden" name="cates" value="<%= cate %>">
        <%
                }
            }
        %>
        <input type="hidden" name="pref" value="${pref}">
        <input type="hidden" name="message" value="${message}">

        <button type="button" onclick="history.back()">修正する</button>
        <button type="submit">送信する</button>
    </form>
</body>
</html>