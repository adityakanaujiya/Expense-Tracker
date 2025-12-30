<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Monthly Report</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">Expense Tracker</a>
  </div>
</nav>

<div class="container">

<h3 class="mb-3">Monthly Expense Report</h3>

<form action="/monthlyReport" method="get" class="mb-3">
    <input type="month" name="month" class="form-control w-25 d-inline">
    <button class="btn btn-primary ms-2">View</button>
</form>

<c:if test="${empty expenses}">
    <p class="text-danger">No data to display.</p>
</c:if>

<c:if test="${not empty expenses}">
<table class="table table-bordered table-striped">
<tr>
<th>Title</th>
<th>Amount</th>
<th>Category</th>
<th>Date</th>
</tr>

<c:forEach var="e" items="${expenses}">
<tr>
<td>${e.title}</td>
<td>₹ ${e.amount}</td>
<td>${e.category}</td>
<td>${e.date}</td>
</tr>
</c:forEach>
</table>
</c:if>

</div>
</body>
</html>
