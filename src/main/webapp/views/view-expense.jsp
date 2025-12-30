<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>View Expenses</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="/css/style.css">

</head>

<body class="bg-light">

<!-- NAVBAR -->
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

<!-- MAIN CONTAINER -->
<div class="container">

  <div class="card shadow p-4">
    <h3 class="mb-4 text-center">Expense List</h3>

    <div class="table-responsive">
      <table class="table table-striped table-bordered align-middle">
        <thead class="table-dark">
          <tr>
            <th>Title</th>
            <th>Amount (₹)</th>
            <th>Category</th>
            <th>Date</th>
          </tr>
        </thead>

        <tbody>
          <c:forEach var="e" items="${expenses}">
            <tr>
              <td>${e.title}</td>
              <td>₹ ${e.amount}</td>
              <td>${e.category}</td>
              <td>${e.date}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

    <!-- ACTION BUTTON -->
    <div class="text-center mt-3">
      <a href="/" class="btn btn-primary">Add New Expense</a>
    </div>

  </div>

</div>

</body>
</html>
