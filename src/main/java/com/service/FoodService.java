package com.service;

import com.model.Food;
import com.repository.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FoodService {
    @Autowired
    FoodRepository foodRep;

    public void save(Food food){
        foodRep.save(food);
    }

    public List<Food> foodList(){
        return (List<Food>) foodRep.findAll();
    }

    public Food findById(long id){
        return foodRep.findById(id).get();
    }
    public void deleteFood(long id){
      foodRep.deleteById(id);
    }
}
