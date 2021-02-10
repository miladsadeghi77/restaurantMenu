package com.contollorer;

import com.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import  com.model.Food;

import java.util.List;
import java.util.Map;

@Controller

public class FoodController{
    private FoodService foodService;
    @Autowired
    public FoodController(FoodService foodService) {
        this.foodService = foodService;
    }

    @RequestMapping("/")
    public ModelAndView homePage(){
        List<Food> foodList = foodService.foodList();
        ModelAndView mav=new ModelAndView("index");
        mav.addObject("foodlist",foodList);
        return mav;
    }

    @RequestMapping("/new")
    public String newFood(Map<String,Object> model){
        Food food=new Food();
        model.put("food",food);
        return "new-food";
    }
    @RequestMapping(value = "/save" ,method = RequestMethod.POST)
    public  String SaveFood(@ModelAttribute("food") Food food){
        foodService.save(food);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit")
    public ModelAndView editMenu(@RequestParam Long id){
        ModelAndView mav=new ModelAndView("editFood");
        Food food=foodService.findById(id);
        mav.addObject("food",food);
        return mav;
    }

    @RequestMapping(value = "/delete")
    public String deleteFood(@RequestParam long id){
      foodService.deleteFood(id);
      return "redirect:/";
    }

}
