package com.wisdomteam.warehouse.bean;

import java.util.Date;

public class PreFoods {

    private Integer foodId;
    private String foodName;
    private Double foodPrice;
    private Integer foodNums;
    private Integer foodShelflife;
    private String foodProducer;
    private Integer foodShelvesId;
    private Integer foodHouseId;
    private Integer foodStoragetime;
    private Integer putinstorageAdminId;
    private Date putinstorageDate;
    private FoodsType foodsType;
    private String putInType;

    public FoodsType getFoodsType() {
        return foodsType;
    }

    public void setFoodsType(FoodsType foodsType) {
        this.foodsType = foodsType;
    }

    public String getPutInType() {
        return putInType;
    }

    public void setPutInType(String putInType) {
        this.putInType = putInType;
    }

    public Integer getPutinstorageAdminId() {
        return putinstorageAdminId;
    }

    public void setPutinstorageAdminId(Integer putinstorageAdminId) {
        this.putinstorageAdminId = putinstorageAdminId;
    }

    public Date getPutinstorageDate() {
        return putinstorageDate;
    }

    public void setPutinstorageDate(Date putinstorageDate) {
        this.putinstorageDate = putinstorageDate;
    }

    public Integer getFoodId() {
        return foodId;
    }
    public void setFoodId(Integer foodId) {
        this.foodId = foodId;
    }
    public String getFoodName() {
        return foodName;
    }
    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }
    public Double getFoodPrice() {
        return foodPrice;
    }
    public void setFoodPrice(Double foodPrice) {
        this.foodPrice = foodPrice;
    }
    public Integer getFoodNums() {
        return foodNums;
    }
    public void setFoodNums(Integer foodNums) {
        this.foodNums = foodNums;
    }
    public Integer getFoodShelflife() {
        return foodShelflife;
    }
    public void setFoodShelflife(Integer foodShelflife) {
        this.foodShelflife = foodShelflife;
    }
    public String getFoodProducer() {
        return foodProducer;
    }
    public void setFoodProducer(String foodProducer) {
        this.foodProducer = foodProducer;
    }
    public Integer getFoodShelvesId() {
        return foodShelvesId;
    }
    public void setFoodShelvesId(Integer foodShelvesId) {
        this.foodShelvesId = foodShelvesId;
    }
    public Integer getFoodHouseId() {
        return foodHouseId;
    }
    public void setFoodHouseId(Integer foodHouseId) {
        this.foodHouseId = foodHouseId;
    }
    public Integer getFoodStoragetime() {
        return foodStoragetime;
    }
    public void setFoodStoragetime(Integer foodStoragetime) {
        this.foodStoragetime = foodStoragetime;
    }
}