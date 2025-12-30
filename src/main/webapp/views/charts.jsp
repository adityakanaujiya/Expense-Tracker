<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Expense Charts</title>


    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">

    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
    <div class="col-md-8">

      <!-- CARD -->
      <div class="card shadow p-4">
        <h3 class="text-center mb-4">Expense Distribution by Category</h3>

        <canvas id="expenseChart"></canvas>

      </div>

      <!-- BACK BUTTON -->
      <div class="text-center mt-3">
        <a href="/" class="btn btn-secondary">Back to Dashboard</a>
      </div>

    </div>
  </div>
</div>

<!-- CHART SCRIPT -->
<script>
let labels = [];
let data = [];

<c:forEach var="e" items="${expenses}">
    labels.push("${e.category}");
    data.push(${e.amount});
</c:forEach>

new Chart(document.getElementById("expenseChart"), {
    type: 'pie',
    data: {
        labels: labels,
        datasets: [{
            data: data,
            backgroundColor: [
                '#0d6efd',
                '#198754',
                '#ffc107',
                '#dc3545',
                '#6f42c1',
                '#20c997'
            ]
        }]
    },
    options: {
        responsive: true,
        plugins: {
            legend: {
                position: 'bottom'
            }
        }
    }
});
</script>

</body>
</html>
