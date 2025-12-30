<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>View Categories</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">Expense Tracker</a>
    <div class="d-flex gap-2">
      <a class="btn btn-outline-light" href="/">Add Expense</a>
      <a class="btn btn-outline-light" href="/expenses">Expenses</a>
      <a class="btn btn-outline-light" href="/monthlyReport">Monthly</a>
      <a class="btn btn-outline-light" href="/summary">Summary</a>
      <a class="btn btn-outline-light" href="/charts">Charts</a>
    </div>
  </div>
</nav>


<h2>Category List</h2>

<table border="1">
    <tr>
        <th>Category Name</th>
    </tr>

    <c:forEach var="c" items="${categories}">
        <tr>
            <td>${c.name}</td>
        </tr>
    </c:forEach>
</table>

<br>
<a href="addCategory">Add New Category</a>
<br>
<a href="/">Back to Expense</a>

</body>
</html>
