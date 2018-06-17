package com.wisdomteam.warehouse.bean;
/*
 *  管理员
 */
public class Admin {

    private Integer adminId;
    private String adminUsername;
    private String adminPassword;
    private String amdinGender;
    private String adminPhone;
    private String adminEmail;
    private Integer adminDept;

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAmdinGender() {
        return amdinGender;
    }

    public void setAmdinGender(String amdinGender) {
        this.amdinGender = amdinGender;
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public Integer getAdminDept() {
        return adminDept;
    }

    public void setAdminDept(Integer adminDept) {
        this.adminDept = adminDept;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminUsername='" + adminUsername + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", amdinGender='" + amdinGender + '\'' +
                ", adminPhone='" + adminPhone + '\'' +
                ", adminEmail='" + adminEmail + '\'' +
                ", adminDept=" + adminDept +
                '}';
    }
}
