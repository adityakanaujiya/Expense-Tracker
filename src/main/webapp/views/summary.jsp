<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Expense Summary</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">

 href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body class="container mt-4">
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


<h2>Total Expense Summary</h2>

<h4 class="text-success">Total Spent: ₹${total}</h4>

<a href="/">Back</a>
</body>
</html>
