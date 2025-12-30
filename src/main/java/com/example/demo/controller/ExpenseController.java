package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.model.Expense;
import com.example.demo.repository.ExpenseRepository;
import com.example.demo.repository.CategoryRepository;

@Controller
public class ExpenseController {

    @Autowired
    private ExpenseRepository expenseRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    // Show add expense form with categories
    @GetMapping("/")
    public String showForm(Model model) {
        model.addAttribute("categories", categoryRepository.findAll());
        return "add-expense";
    }

    // Save expense
    @PostMapping("/addExpense")
    public String addExpense(Expense expense) {
        expenseRepository.save(expense);
        return "redirect:/expenses";
    }

    // View all expenses
    @GetMapping("/expenses")
    public String viewExpenses(Model model) {
        List<Expense> expenses = expenseRepository.findAll();
        model.addAttribute("expenses", expenses);
        return "view-expense";
    }
    // Monthly Report

    @GetMapping("/monthlyReport")
    public String monthlyReport(String month, Model model) {

        if (month == null || month.isBlank()) {
            model.addAttribute("expenses", List.of());
            return "monthly-report";
        }

        List<Expense> expenses = expenseRepository.findByDateStartsWith(month);

        model.addAttribute("expenses", expenses);
        model.addAttribute("month", month);

        return "monthly-report";
    }

    // Summary
    @GetMapping("/summary")
    public String summary(Model model) {

        List<Expense> expenses = expenseRepository.findAll();

        double total = expenses.stream()
                .mapToDouble(Expense::getAmount)
                .sum();

        model.addAttribute("total", total);
        model.addAttribute("expenses", expenses);

        return "summary";
    }
    // Data Visualization
    @GetMapping("/charts")
    public String charts(Model model) {

        List<Expense> expenses = expenseRepository.findAll();

        model.addAttribute("expenses", expenses);
        return "charts";
    }


}
