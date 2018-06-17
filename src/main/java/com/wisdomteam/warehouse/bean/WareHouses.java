package com.wisdomteam.warehouse.bean;

public class WareHouses {

    private Integer id;
    private Integer warehouseId;
    private String warehouseName;
    private String warehouseType;
    private String warehouseAddress;
    private Integer warehouseStatus;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getWarehouseId() {
        return warehouseId;
    }
    public void setWarehouseId(Integer warehouseId) {
        this.warehouseId = warehouseId;
    }
    public String getWarehouseName() {
        return warehouseName;
    }
    public void setWarehouseName(String warehouseName) {
        this.warehouseName = warehouseName;
    }
    public String getWarehouseType() {
        return warehouseType;
    }
    public void setWarehouseType(String warehouseType) {
        this.warehouseType = warehouseType;
    }
    public String getWarehouseAddress() {
        return warehouseAddress;
    }
    public void setWarehouseAddress(String warehouseAddress) {
        this.warehouseAddress = warehouseAddress;
    }
    public Integer getWarehouseStatus() {
        return warehouseStatus;
    }
    public void setWarehouseStatus(Integer warehouseStatus) {
        this.warehouseStatus = warehouseStatus;
    }
}