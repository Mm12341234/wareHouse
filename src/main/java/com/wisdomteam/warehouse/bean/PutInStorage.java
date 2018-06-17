package com.wisdomteam.warehouse.bean;

import java.util.Date;

public class PutInStorage {

    private Integer id;
    private Integer putinstorageFoodId;
    private Integer putinstorageAdminId;
    private Integer putinstorageFoodNums;
    private Date putinstorageDate;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getPutinstorageFoodId() {
        return putinstorageFoodId;
    }
    public void setPutinstorageFoodId(Integer putinstorageFoodId) {
        this.putinstorageFoodId = putinstorageFoodId;
    }
    public Integer getPutinstorageAdminId() {
        return putinstorageAdminId;
    }
    public void setPutinstorageAdminId(Integer putinstorageAdminId) {
        this.putinstorageAdminId = putinstorageAdminId;
    }
    public Integer getPutinstorageFoodNums() {
        return putinstorageFoodNums;
    }
    public void setPutinstorageFoodNums(Integer putinstorageFoodNums) {
        this.putinstorageFoodNums = putinstorageFoodNums;
    }
    public Date getPutinstorageDate() {
        return putinstorageDate;
    }
    public void setPutinstorageDate(Date putinstorageDate) {
        this.putinstorageDate = putinstorageDate;
    }
}