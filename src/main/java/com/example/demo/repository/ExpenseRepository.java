package com.example.demo.repository;

import java.util.List;
import org.springframework.data.mongodb.repository.MongoRepository;
import com.example.demo.model.Expense;

public interface ExpenseRepository extends MongoRepository<Expense, String> {

    List<Expense> findByDateStartsWith(String date);
}
