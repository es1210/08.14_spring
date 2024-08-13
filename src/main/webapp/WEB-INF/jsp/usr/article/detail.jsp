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
        color: #333;
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
    .btn {
        display: inline-block;
        padding: 6px 12px;
        margin: 2px;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
        font-size: 14px;
        text-decoration: none;
        text-align: center;
    }
    .btn-edit {
        background-color: #17a2b8;
    }
    .btn-edit:hover {
        background-color: #138496;
    }
    .btn-delete {
        background-color: #dc3545;
    }
    .btn-delete:hover {
        background-color: #c82333;
    }
    .btn-container {
        display: flex;
        justify-content: center;
        gap: 8px;
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
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="article" items="${articles}">
                <tr>
                    <td>${article.id}</td>
                    <td>${article.regDate.substring(0,10)}</td>
                    <td><a href="getArticle?id=${article.id}">${article.title}</a></td>
                    <td>${article.memberId}</td>
                    <td>
                        <div class="btn-container">
                            <a href="edit?id=${article.id}" class="btn btn-edit">Edit</a>
                            <a href="delete?id=${article.id}" class="btn btn-delete" onclick="return confirm('삭제하시겠습니까?');">Delete</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
