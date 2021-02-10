package com.repository;

import com.model.Food;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface  FoodRepository extends CrudRepository<Food, Long> {
    @Override
    <S extends Food> S save(S s);

    @Override
    Optional<Food> findById(Long aLong);

    @Override
    Iterable<Food> findAll();

    @Override
    void deleteById(Long aLong);
}
