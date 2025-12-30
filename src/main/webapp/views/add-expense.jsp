<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Expense</title>

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
  <div class="row justify-content-center">
    <div class="col-md-6">

      <!-- CARD -->
      <div class="card shadow p-4">
        <h3 class="text-center mb-4">Add Expense</h3>

        <form action="addExpense" method="post">

          <!-- TITLE -->
          <div class="mb-3">
            <label class="form-label">Title</label>
            <input type="text" name="title" class="form-control" placeholder="Enter expense title" required>
          </div>

          <!-- AMOUNT -->
          <div class="mb-3">
            <label class="form-label">Amount</label>
            <input type="number" name="amount" class="form-control" placeholder="Enter amount" required>
          </div>

          <!-- CATEGORY -->
          <div class="mb-3">
            <label class="form-label">Category</label>
            <select name="category" class="form-select" required>
              <option value="">-- Select Category --</option>
              <c:forEach var="c" items="${categories}">
                <option value="${c.name}">${c.name}</option>
              </c:forEach>
            </select>
          </div>

          <!-- DATE -->
          <div class="mb-3">
            <label class="form-label">Date</label>
            <input type="date" name="date" class="form-control" required>
          </div>

          <!-- BUTTON -->
          <div class="d-grid">
            <button type="submit" class="btn btn-primary">
              Add Expense
            </button>
          </div>

        </form>
      </div>

      <!-- LINKS -->
      <div class="text-center mt-3">
        <a href="/expenses" class="btn btn-link">View All Expenses</a>
        <a href="/addCategory" class="btn btn-link">Add Category</a>
      </div>

    </div>
  </div>
</div>

</body>
</html>
