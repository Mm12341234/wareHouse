package com.wisdomteam.warehouse.bean;

import java.util.Date;

public class FoodTemperature {

    private Integer id;
    private Integer foodId;
    private Double foodTemperature;
    private Date temperatureTime;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getFoodId() {
        return foodId;
    }
    public void setFoodId(Integer foodId) {
        this.foodId = foodId;
    }
    public Double getFoodTemperature() {
        return foodTemperature;
    }
    public void setFoodTemperature(Double foodTemperature) {
        this.foodTemperature = foodTemperature;
    }
    public Date getTemperatureTime() {
        return temperatureTime;
    }
    public void setTemperatureTime(Date temperatureTime) {
        this.temperatureTime = temperatureTime;
    }

    @Override
    public String toString() {
        return "FoodTemperature{" +
                "id=" + id +
                ", foodId=" + foodId +
                ", foodTemperature=" + foodTemperature +
                ", temperatureTime=" + temperatureTime +
                '}';
    }
}