package com.wisdomteam.warehouse.bean;

import java.util.Date;

public class GetOutStorage {

    private Integer id;
    private Integer getoutstorageFoodId;
    private Integer getoutstorageAdminId;
    private Integer getoutstorageFoodNums;
    private Double getoutstorageFoodTotalprice;
    private String getoutstorageType;
    private Date getoutstorageTime;

    private Foods foods;

    private FoodsType foodsType;

    public Foods getFoods() {
        return foods;
    }

    public void setFoods(Foods foods) {
        this.foods = foods;
    }

    public FoodsType getFoodsType() {
        return foodsType;
    }

    public void setFoodsType(FoodsType foodsType) {
        this.foodsType = foodsType;
    }

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return getoutstorage_food_id
     */
    public Integer getGetoutstorageFoodId() {
        return getoutstorageFoodId;
    }

    /**
     * @param getoutstorageFoodId
     */
    public void setGetoutstorageFoodId(Integer getoutstorageFoodId) {
        this.getoutstorageFoodId = getoutstorageFoodId;
    }

    /**
     * @return getoutstorage_admin_id
     */
    public Integer getGetoutstorageAdminId() {
        return getoutstorageAdminId;
    }

    /**
     * @param getoutstorageAdminId
     */
    public void setGetoutstorageAdminId(Integer getoutstorageAdminId) {
        this.getoutstorageAdminId = getoutstorageAdminId;
    }

    /**
     * @return getoutstorage_food_nums
     */
    public Integer getGetoutstorageFoodNums() {
        return getoutstorageFoodNums;
    }

    /**
     * @param getoutstorageFoodNums
     */
    public void setGetoutstorageFoodNums(Integer getoutstorageFoodNums) {
        this.getoutstorageFoodNums = getoutstorageFoodNums;
    }

    /**
     * @return getoutstorage__food_totalprice
     */
    public Double getGetoutstorageFoodTotalprice() {
        return getoutstorageFoodTotalprice;
    }

    /**
     * @param getoutstorageFoodTotalprice
     */
    public void setGetoutstorageFoodTotalprice(Double getoutstorageFoodTotalprice) {
        this.getoutstorageFoodTotalprice = getoutstorageFoodTotalprice;
    }

    /**
     * @return getoutstorage_type
     */
    public String getGetoutstorageType() {
        return getoutstorageType;
    }

    /**
     * @param getoutstorageType
     */
    public void setGetoutstorageType(String getoutstorageType) {
        this.getoutstorageType = getoutstorageType;
    }

    public Date getGetoutstorageTime() {
        return getoutstorageTime;
    }

    public void setGetoutstorageTime(Date getoutstorageTime) {
        this.getoutstorageTime = getoutstorageTime;
    }
    @Override
    public String toString() {
        return "GetOutStorage{" +
                "id=" + id +
                ", getoutstorageFoodId=" + getoutstorageFoodId +
                ", getoutstorageAdminId=" + getoutstorageAdminId +
                ", getoutstorageFoodNums=" + getoutstorageFoodNums +
                ", getoutstorageFoodTotalprice=" + getoutstorageFoodTotalprice +
                ", getoutstorageType='" + getoutstorageType +
                ", getoutstorageTime='" + getoutstorageTime + '\'' +
                '}';
    }
}