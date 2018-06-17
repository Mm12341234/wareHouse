package com.wisdomteam.warehouse.bean;

public class Shelves {

    private Integer id;
    private Integer shelvesId;
    private String shelvesType;
    private Integer shelvesSize;
    private Integer shelvesHouseId;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getShelvesId() {
        return shelvesId;
    }
    public void setShelvesId(Integer shelvesId) {
        this.shelvesId = shelvesId;
    }
    public String getShelvesType() {
        return shelvesType;
    }
    public void setShelvesType(String shelvesType) {
        this.shelvesType = shelvesType;
    }
    public Integer getShelvesSize() {
        return shelvesSize;
    }
    public void setShelvesSize(Integer shelvesSize) {
        this.shelvesSize = shelvesSize;
    }
    public Integer getShelvesHouseId() {
        return shelvesHouseId;
    }
    public void setShelvesHouseId(Integer shelvesHouseId) {
        this.shelvesHouseId = shelvesHouseId;
    }
}