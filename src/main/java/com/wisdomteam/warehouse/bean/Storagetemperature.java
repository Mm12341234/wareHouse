package com.wisdomteam.warehouse.bean;

public class Storagetemperature {

    private int id;
    private String foodName;
    private int foodTypeId;
    private String temperature;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFoodName() {
        return foodName;
    }

    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    public int getFoodTypeId() {
        return foodTypeId;
    }

    public void setFoodTypeId(int foodTypeId) {
        this.foodTypeId = foodTypeId;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    @Override
    public String toString() {
        return "Storagetemperature{" +
                "id=" + id +
                ", foodName='" + foodName + '\'' +
                ", foodTypeId=" + foodTypeId +
                ", temperature='" + temperature + '\'' +
                '}';
    }
}
