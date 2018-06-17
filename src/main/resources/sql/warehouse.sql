/******************     创建数据库    ******************/
CREATE DATABASE warehouse;
USE warehouse;
/******************        Admin        *****************/
DROP TABLE IF EXISTS Admin;
CREATE TABLE Admin(
adminId int(10) NOT NULL AUTO_INCREMENT,
adminUsername varchar(20) DEFAULT NULL,
adminPassword varchar(20) NOT NULL,
adminGender char DEFAULT NULL,
adminPhone varchar(15) DEFAULT NULL,
adminEmail varchar(20) DEFAULT NULL,
adminDeptId int(10) NOT NULL,
PRIMARY KEY (adminId)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   AdminDepartment    *****************/
DROP TABLE IF EXISTS AdminDepartment;
CREATE TABLE AdminDepartment(
deptId int(10) NOT NULL AUTO_INCREMENT,
deptName varchar(20) DEFAULT NULL,
PRIMARY KEY (deptId)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   FoodsType    *****************/
DROP TABLE IF EXISTS FoodsType;
CREATE TABLE FoodsType(
typeId int(10) NOT NULL AUTO_INCREMENT,
typeName varchar(20) DEFAULT NULL,
PRIMARY KEY (typeId)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   Foods    *****************/
DROP TABLE IF EXISTS Foods;
CREATE TABLE Foods(
foodId int(10) NOT NULL AUTO_INCREMENT,
foodName varchar(20) DEFAULT NULL,
foodTypeId int(10) DEFAULT NULL,
foodPrice DOUBLE,
foodNums int(10) DEFAULT NULL,
foodShelflife char,
foodProducer varchar(20),
foodShelvesId int(20) DEFAULT NULL,
foodHouseId int(20),
foodStorageTime varchar(20),
PRIMARY KEY (foodId)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   FoodTemperature    *****************/
DROP TABLE IF EXISTS FoodTemperature;
CREATE TABLE FoodTemperature(
id int(10) NOT NULL AUTO_INCREMENT,
foodId int(10) DEFAULT NULL,
foodTemperature double DEFAULT NULL,
temperatureTime Date,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   GetOutStorage    *****************/
DROP TABLE IF EXISTS GetOutStorage;
CREATE TABLE GetOutStorage(
id int(10) NOT NULL AUTO_INCREMENT,
getoutstorageFoodId int(10) DEFAULT NULL,
getoutstorageAdminId int(10) DEFAULT NULL,
getoutstorageFoodNums int(10) DEFAULT NULL,
getoutstorageFoodTotalPrice DOUBLE DEFAULT NULL,
getoutstorageType char DEFAULT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   House    *****************/
DROP TABLE IF EXISTS House;
CREATE TABLE House(
id int(10) NOT NULL AUTO_INCREMENT,
houseId int(10) DEFAULT NULL,
houseShelvesNums int(10) DEFAULT NULL,
houseWareHouseId int(10) DEFAULT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   Shelves    *****************/
DROP TABLE IF EXISTS Shelves;
CREATE TABLE Shelves(
id int(10) NOT NULL AUTO_INCREMENT,
shelvesId int(10) DEFAULT NULL,
shelvesType varchar(20) DEFAULT NULL,
shelvesSize int(10) DEFAULT NULL,
shelvesHouseId int(10) DEFAULT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   WareHouses    *****************/
DROP TABLE IF EXISTS WareHouses;
CREATE TABLE WareHouses(
id int(10) NOT NULL AUTO_INCREMENT,
warehouseId int(10) DEFAULT NULL,
warehouseName varchar(20) DEFAULT NULL,
warehouseType varchar(20) DEFAULT NULL,
warehouseAddress varchar(20) DEFAULT NULL,
warehouseStatus int DEFAULT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************   PutInStorage    *****************/
DROP TABLE IF EXISTS PutInStorage;
CREATE TABLE PutInStorage(
id int(10) NOT NULL AUTO_INCREMENT,
putinstorageFoodId int(10) DEFAULT NULL,
putinstorageAdminId int(10) DEFAULT NULL,
putinstorageFoodNums int(10) DEFAULT NULL,
putinstorageDate Date DEFAULT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

private Integer id;
    private Integer putinstorageFoodId;
    private Integer putinstorageAdminId;
    private Integer putinstorageFoodNums;
    private Date putinstorageDate;

/******************   StorageTemperature    *****************/
DROP TABLE IF EXISTS StorageTemperature;
CREATE TABLE StorageTemperature(
id int(10) NOT NULL AUTO_INCREMENT,
foodName varchar(20) NOT NULL,
foodTypeId int(10) DEFAULT NULL,
temperature varchar(20) NOT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/******************        PreFoods        *****************/
DROP TABLE IF EXISTS PreFoods;
CREATE TABLE PreFoods(
foodId int(10) NOT NULL AUTO_INCREMENT,
foodName varchar(20) DEFAULT NULL,
foodTypeId int(10) DEFAULT NULL,
foodPrice DOUBLE,
foodNums int(10) DEFAULT NULL,
foodShelflife char,
foodProducer varchar(20),
foodShelvesId int(20) DEFAULT NULL,
foodHouseId int(20),
foodStorageTime varchar(20),
putinstorageAdminId int(10) DEFAULT NULL,
putinstorageDate Date DEFAULT NULL,
PRIMARY KEY (foodId)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;