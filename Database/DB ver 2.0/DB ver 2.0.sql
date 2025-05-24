-- Drop existing database if it exist
DROP DATABASE IF EXISTS OfficeSpaceRental;
CREATE DATABASE OfficeSpaceRental;
USE OfficeSpaceRental;       

-- Drop existing tables if they exist
DROP TABLE IF EXISTS Favorite;
DROP TABLE IF EXISTS LessorPayment;
DROP TABLE IF EXISTS TypeOffice;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS OrderService;
DROP TABLE IF EXISTS OrderRentType;
DROP TABLE IF EXISTS UserService;
DROP TABLE IF EXISTS ServiceRentType;
DROP TABLE IF EXISTS `Order`;
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS OSStatus;
DROP TABLE IF EXISTS Status;
DROP TABLE IF EXISTS OSRentType;
DROP TABLE IF EXISTS RentType;
DROP TABLE IF EXISTS Service;
DROP TABLE IF EXISTS OSAmenity;
DROP TABLE IF EXISTS Amenity;
DROP TABLE IF EXISTS OSTag;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS Image;
DROP TABLE IF EXISTS OfficeSpace;
DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Role;
DROP TABLE IF EXISTS User;

-- Create Tables

-- Table: Role
CREATE TABLE Role (
  roleID INT PRIMARY KEY AUTO_INCREMENT,
  roleName VARCHAR(50) NOT NULL UNIQUE
)ENGINE=InnoDB;

-- Table: User
CREATE TABLE User (
  userID INT PRIMARY KEY AUTO_INCREMENT,
  googleId TEXT,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(250) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  lastName NVARCHAR(50) NOT NULL,
  firstName NVARCHAR(50) NOT NULL,
  gender ENUM('Male', 'Female'),
  dOB DATE,
  address TEXT,
  phoneNumber VARCHAR(20),
  isActive BOOLEAN DEFAULT TRUE,
  roleID INT NOT NULL,
  FOREIGN KEY (roleID) REFERENCES Role(roleID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- New table: Service
CREATE TABLE Service (
  serviceID INT PRIMARY KEY AUTO_INCREMENT,
  serviceName NVARCHAR(100) NOT NULL UNIQUE,
  description TEXT,
  isActive BOOLEAN DEFAULT TRUE
)ENGINE=InnoDB;

-- New table: LessorService
CREATE TABLE LessorService (
  lessorServiceID INT PRIMARY KEY AUTO_INCREMENT,
  lessorID INT NOT NULL,
  serviceID INT NOT NULL,
  FOREIGN KEY (lessorID) REFERENCES User(userID) ON DELETE RESTRICT,
  FOREIGN KEY (serviceID) REFERENCES Service(serviceID) ON DELETE RESTRICT,
  UNIQUE (lessorID, serviceID)
)ENGINE=InnoDB;

-- Table: Building
CREATE TABLE Building (
  buildingID INT PRIMARY KEY AUTO_INCREMENT,
  buildingName NVARCHAR(100) NOT NULL UNIQUE,
  street NVARCHAR(100),
  wardcommune NVARCHAR(50),
  district NVARCHAR(50),
  cityprovince NVARCHAR(50) NOT NULL
)ENGINE=InnoDB;

-- Table: TypeOffice
CREATE TABLE TypeOffice (
    typeOfficeID INT AUTO_INCREMENT PRIMARY KEY,
    typeName VARCHAR(50),
    description TEXT
) ENGINE=InnoDB;

-- Table: OfficeSpace
CREATE TABLE OfficeSpace (
  officeSpaceID INT PRIMARY KEY AUTO_INCREMENT,
  title NVARCHAR(100) NOT NULL,
  size DECIMAL(10,2) NOT NULL,
  capacity INT NOT NULL,
  buildingID INT NOT NULL,
  lessorID INT NOT NULL,
  typeOfficeID INT NOT NULL,
  FOREIGN KEY (lessorID) REFERENCES User(userID) ON DELETE RESTRICT,
  FOREIGN KEY (buildingID) REFERENCES Building(buildingID) ON DELETE RESTRICT,
  FOREIGN KEY (typeOfficeID) REFERENCES TypeOffice(typeOfficeID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- Table: Image
CREATE TABLE Image (
  imageID INT PRIMARY KEY AUTO_INCREMENT,
  imageName NVARCHAR(50) NOT NULL UNIQUE,
  officeSpaceID INT NOT NULL,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- Table: Tag
CREATE TABLE Tag (
  tagID INT PRIMARY KEY AUTO_INCREMENT,
  tagName NVARCHAR(50) NOT NULL UNIQUE
)ENGINE=InnoDB;

-- Table: OSTag
CREATE TABLE OSTag (
  oSTagID INT PRIMARY KEY AUTO_INCREMENT,
  officeSpaceID INT NOT NULL,
  tagID INT NOT NULL,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  FOREIGN KEY (tagID) REFERENCES Tag(tagID) ON DELETE RESTRICT,
  UNIQUE (officeSpaceID, tagID)
)ENGINE=InnoDB;

-- Table: Amenity
CREATE TABLE Amenity (
  amenityID INT PRIMARY KEY AUTO_INCREMENT,
  amenityName NVARCHAR(50) NOT NULL UNIQUE
)ENGINE=InnoDB;

-- Table: OSAmenity
CREATE TABLE OSAmenity (
  oSAmenityID INT PRIMARY KEY AUTO_INCREMENT,
  officeSpaceID INT NOT NULL,
  amenityID INT NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  CHECK (quantity >= 0),
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  FOREIGN KEY (amenityID) REFERENCES Amenity(amenityID) ON DELETE RESTRICT,
  UNIQUE (officeSpaceID, amenityID)
)ENGINE=InnoDB;

-- Table: RentType
CREATE TABLE RentType (
  rentTypeID INT PRIMARY KEY AUTO_INCREMENT,
  rentTypeName NVARCHAR(50) NOT NULL UNIQUE,
  description TEXT
)ENGINE=InnoDB;

-- Table: OSRentType
CREATE TABLE OSRentType (
  oSRentTypeID INT PRIMARY KEY AUTO_INCREMENT,
  officeSpaceID INT NOT NULL,
  rentTypeID INT NOT NULL,
  price DECIMAL(15,2) NOT NULL,
  deposit DECIMAL(15,2) NOT NULL,
  CHECK (price >= 0),
  CHECK (deposit >= 0),
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  FOREIGN KEY (rentTypeID) REFERENCES RentType(rentTypeID) ON DELETE RESTRICT,
  UNIQUE (officeSpaceID, rentTypeID)
)ENGINE=InnoDB;

-- New table: ServiceRentType 
CREATE TABLE ServiceRentType (
  serviceRentTypeID INT PRIMARY KEY AUTO_INCREMENT,
  lessorServiceID INT NOT NULL,
  rentTypeID INT NOT NULL,
  price DECIMAL(15,2) NOT NULL,
  deposit DECIMAL(15,2) NOT NULL,
  CHECK (price >= 0),
  CHECK (deposit >= 0),
  FOREIGN KEY (lessorServiceID) REFERENCES LessorService(lessorServiceID) ON DELETE RESTRICT,
  FOREIGN KEY (rentTypeID) REFERENCES RentType(rentTypeID) ON DELETE RESTRICT,
  UNIQUE (lessorServiceID, rentTypeID)
)ENGINE=InnoDB;

-- Table: Status
CREATE TABLE Status (
  statusID INT PRIMARY KEY AUTO_INCREMENT,
  statusName ENUM('Available', 'Unavailable', 'Occupied', 'PendingApproval') NOT NULL
)ENGINE=InnoDB;

-- Table: OSStatus
CREATE TABLE OSStatus (
  oSStatusID INT PRIMARY KEY AUTO_INCREMENT,
  officeSpaceID INT NOT NULL,
  statusID INT NOT NULL,
  startDate DATETIME NOT NULL,
  endDate DATETIME NOT NULL,
  reason TEXT NOT NULL,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  FOREIGN KEY (statusID) REFERENCES Status(statusID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- Table: Reservation
CREATE TABLE Reservation (
  reservationID INT PRIMARY KEY AUTO_INCREMENT,
  viewDate DATETIME NOT NULL,
  note TEXT,
  status ENUM('Pending', 'Completed', 'Canceled') NOT NULL DEFAULT 'Pending',
  salesID INT,
  lesseeID INT NOT NULL,
  officeSpaceID INT NOT NULL,
  FOREIGN KEY (lesseeID) REFERENCES User(userID) ON DELETE RESTRICT,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- New table: Order
CREATE TABLE `Order` (
  orderID INT PRIMARY KEY AUTO_INCREMENT,
  orderDate DATETIME NOT NULL,
  startDate DATETIME NOT NULL,
  endDate DATETIME NOT NULL,
  totalAmount DECIMAL(15,2) NOT NULL DEFAULT 0,
  paidAmount DECIMAL(15,2) NOT NULL DEFAULT 0,
  status ENUM('Pending', 'Inprogress', 'Completed', 'Canceled') NOT NULL DEFAULT 'Pending',
  lesseeID INT NOT NULL,
  note TEXT,
  FOREIGN KEY (lesseeID) REFERENCES User(userID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- Table: Payment
CREATE TABLE Payment (
  paymentID INT PRIMARY KEY AUTO_INCREMENT,
  transactionID TEXT,	-- Lấy transactionID
  paymentDate DATE NOT NULL,
  paymentMethod ENUM('Cash', 'Banktransfer') NOT NULL,
  note TEXT,
  paymentAmount DECIMAL(15,2) NOT NULL,
  status ENUM('Success', 'Failed', 'Refunded') NOT NULL,
  orderID INT NOT NULL,
  FOREIGN KEY (orderID) REFERENCES `Order`(orderID) ON DELETE RESTRICT,
  CHECK (paymentAmount >= 0)
)ENGINE=InnoDB;

-- New table: OrderRentType
CREATE TABLE OrderRentType (
  orderRentTypeID INT PRIMARY KEY AUTO_INCREMENT,
  orderID INT NOT NULL,
  oSRentTypeID INT NOT NULL,
  price DECIMAL(15,2) NOT NULL,
  deposit DECIMAL(15,2) NOT NULL,
  CHECK (price >= 0),
  CHECK (deposit >= 0),
  FOREIGN KEY (orderID) REFERENCES `Order`(orderID) ON DELETE RESTRICT,
  FOREIGN KEY (oSRentTypeID) REFERENCES OSRentType(oSRentTypeID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- New table: OrderService
CREATE TABLE OrderService (
  orderServiceID INT PRIMARY KEY AUTO_INCREMENT,
  orderID INT NOT NULL,
  serviceRentTypeID INT NOT NULL,
  quantity INT NOT NULL DEFAULT 0,
  price DECIMAL(15,2) NOT NULL,
  deposit DECIMAL(15,2) NOT NULL,
  CHECK (quantity > 0),
  CHECK (price >= 0),
  FOREIGN KEY (orderID) REFERENCES `Order`(orderID) ON DELETE RESTRICT,
  FOREIGN KEY (serviceRentTypeID) REFERENCES ServiceRentType(serviceRentTypeID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- Table: LessorPayment
CREATE TABLE LessorPayment (
  lessorPaymentID INT PRIMARY KEY AUTO_INCREMENT,
  transactionID TEXT,	-- Lấy transactionID
  paymentDate DATE NOT NULL,
  paymentMethod ENUM('Cash', 'Banktransfer') NOT NULL,
  note TEXT,
  paymentAmount DECIMAL(15,2) NOT NULL,
  status ENUM('Success', 'Failed', 'Refunded') NOT NULL,
  lessorID INT NOT NULL,
  FOREIGN KEY (lessorID) REFERENCES User(userID) ON DELETE RESTRICT
)ENGINE=InnoDB;

-- Table: Favorite
CREATE TABLE Favorite (
  favoriteID INT PRIMARY KEY AUTO_INCREMENT,
  lesseeID INT NOT NULL,
  officeSpaceID INT NOT NULL,
  dateMarked DATE NOT NULL,
  FOREIGN KEY (lesseeID) REFERENCES User(userID) ON DELETE RESTRICT,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  UNIQUE (lesseeID, officeSpaceID)
)ENGINE=InnoDB;