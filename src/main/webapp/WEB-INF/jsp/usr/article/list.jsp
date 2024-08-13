<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTICLE LIST</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5dc;
        margin: 0;
        padding: 20px;
    }
    h1 {
        text-align: center;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        font-size: 16px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }
    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #fbceb1;
        color: #fff;
    }
    tr:nth-of-type(even) {
        background-color: #f9f9f9;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    a {
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
    hr {
        margin: 20px 0;
        border: 0;
        border-top: 1px solid #ddd;
    }
</style>
</head>
<body>
    <h1>LIST</h1>

    <hr />

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Registration Date</th>
                <th>Title</th>
                <th>Member ID</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="article" items="${articles}">
                <tr>
                    <td>${article.id}</td>
                    <td>${article.regDate.substring(0,10)}</td>
                    <td><a href="detail?id=${article.id}">${article.title}</a></td>
                    <td>${article.memberId}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
