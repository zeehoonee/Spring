package com.multi.mvc.food;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

//테이블 하나당 DAO하나! ==> CUD를 완성!! 
@Component
public class FoodDAO {

    @Autowired
    SqlSessionTemplate my;


    public int insert(FoodVO bag) {
        System.out.println("-----" + my);
        int result = my.insert("food.create", bag);
        return result;
    }

    public int update(FoodVO bag) {
        System.out.println("------" + my);
        int result = my.update("food.update", bag);
        return result;
    }

    public int delete(int no) {
        System.out.println("-----" + my);
        int result = my.delete("food.delete", no);
        return result;
    }
    
    public FoodVO one(int no) {
        FoodVO bag = my.selectOne("food.one", no);
        return bag;
    }
    
    public List<FoodVO> list() {
        List<FoodVO> list = my.selectList("food.all");
        return list;
    }
}