-- Drop existing database if it exist
DROP DATABASE IF EXISTS OfficeSpaceRental;
CREATE DATABASE OfficeSpaceRental;
USE OfficeSpaceRental;

-- Drop existing tables if they exist (in reverse order to avoid foreign key issues)
DROP TABLE IF EXISTS Favorite;
DROP TABLE IF EXISTS LessorPayment;
DROP TABLE IF EXISTS TypeOffice;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Contract;
DROP TABLE IF EXISTS Reservation;
DROP TABLE IF EXISTS DetailStatus;
DROP TABLE IF EXISTS Status;
DROP TABLE IF EXISTS DetailRentType;
DROP TABLE IF EXISTS RentType;
DROP TABLE IF EXISTS DetailAmenity;
DROP TABLE IF EXISTS Amenity;
DROP TABLE IF EXISTS DetailTag;
DROP TABLE IF EXISTS Tag;
DROP TABLE IF EXISTS Image;
DROP TABLE IF EXISTS OfficeSpace;
DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS DetailRole;
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
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL, -- Hashed passwords (e.g., bcrypt)
  email VARCHAR(100) NOT NULL UNIQUE,
  lastName NVARCHAR(50),
  firstName NVARCHAR(50),
  gender ENUM('Male', 'Female') NOT NULL,
  dOB DATE,
  address TEXT,
  phoneNumber VARCHAR(20) NOT NULL,
  isActive BOOLEAN DEFAULT TRUE
)ENGINE=InnoDB;

-- Table: DetailRole
CREATE TABLE DetailRole (
  detailRoleID INT PRIMARY KEY AUTO_INCREMENT,
  userID INT NOT NULL,
  roleID INT NOT NULL,
  FOREIGN KEY (userID) REFERENCES User(userID) ON DELETE RESTRICT, -- ON DELETE CASCADE Khi bản ghi ở bảng cha bị xóa, thì tự động xóa luôn các bản ghi liên quan ở bảng con.
  FOREIGN KEY (roleID) REFERENCES Role(roleID) ON DELETE RESTRICT, -- ON DELETE RESTRICT Không cho phép xóa bản ghi ở bảng cha nếu đang được tham chiếu bởi bảng con.
  UNIQUE (userID, roleID)
)ENGINE=InnoDB;

-- Table: Building
CREATE TABLE Building (
  buildingID INT PRIMARY KEY AUTO_INCREMENT,
  buildingName NVARCHAR(100) NOT NULL,
  street NVARCHAR(100),
  ward_commune NVARCHAR(50),
  district NVARCHAR(50),
  city_province NVARCHAR(50) NOT NULL
)ENGINE=InnoDB;

-- Table: TypeOffice
CREATE TABLE TypeOffice (
    typeOfficeID INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50),
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

-- Table: DetailTag
CREATE TABLE DetailTag (
  detailTagID INT PRIMARY KEY AUTO_INCREMENT,
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

-- Table: DetailAmenity
CREATE TABLE DetailAmenity (
  detailAmenityID INT PRIMARY KEY AUTO_INCREMENT,
  officeSpaceID INT NOT NULL,
  amenityID INT NOT NULL,
  quantity INT NOT NULL DEFAULT 1,
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

-- Table: DetailRentType
CREATE TABLE DetailRentType (
  detailRentTypeID INT PRIMARY KEY AUTO_INCREMENT,
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

-- Table: Status
CREATE TABLE Status (
  statusID INT PRIMARY KEY AUTO_INCREMENT,
  statusName ENUM('Available', 'Unavailable', 'Occupied', 'Pending_Approval') NOT NULL DEFAULT 'Available'
)ENGINE=InnoDB;

-- Table: DetailStatus
CREATE TABLE DetailStatus (
  detailStatusID INT PRIMARY KEY AUTO_INCREMENT,
  officeSpaceID INT NOT NULL,
  statusID INT NOT NULL,
  startDate DATE NOT NULL,
  endDate DATE,
  reason TEXT,
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

-- Table: Contract
CREATE TABLE Contract (
  contractID INT PRIMARY KEY AUTO_INCREMENT,
  contractDate DATETIME NOT NULL,
  startDate DATETIME NOT NULL,
  endDate DATETIME NOT NULL,
  numberPeople INT NOT NULL,
  status ENUM('Pending', 'In_progress', 'Completed', 'Canceled') NOT NULL DEFAULT 'Pending',
  totalPrice DECIMAL(15,2) NOT NULL,
  deposit DECIMAL(15,2) NOT NULL,
  paidAmount DECIMAL(15,2) NOT NULL DEFAULT 0,
  lesseeID INT NOT NULL,
  officeSpaceID INT NOT NULL,
  rentTypeID INT NOT NULL,
  note TEXT,
  FOREIGN KEY (lesseeID) REFERENCES User(userID) ON DELETE RESTRICT,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  FOREIGN KEY (rentTypeID) REFERENCES RentType(rentTypeID) ON DELETE RESTRICT,
  CHECK (totalPrice >= 0),
  CHECK (deposit >= 0),
  CHECK (paidAmount >= 0)
)ENGINE=InnoDB;

-- Table: Payment
CREATE TABLE Payment (
  paymentID INT PRIMARY KEY AUTO_INCREMENT,
  transactionID TEXT,	-- Lấy transactionID
  paymentDate DATE NOT NULL,
  paymentMethod ENUM('Cash', 'Bank_transfer') NOT NULL,
  note TEXT,
  paymentAmount DECIMAL(15,2) NOT NULL,
  status ENUM('Success', 'Failed', 'Refunded') NOT NULL,
  contractID INT NOT NULL,
  FOREIGN KEY (contractID) REFERENCES Contract(contractID) ON DELETE RESTRICT,
  CHECK (paymentAmount >= 0)
)ENGINE=InnoDB;

-- Table: LessorPayment
CREATE TABLE LessorPayment (
  lessorPaymentID INT PRIMARY KEY AUTO_INCREMENT,
  transactionID TEXT,	-- Lấy transactionID
  paymentDate DATE NOT NULL,
  paymentMethod ENUM('Cash', 'Bank_transfer') NOT NULL,
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
  dateMarked DATETIME NOT NULL,
  FOREIGN KEY (lesseeID) REFERENCES User(userID) ON DELETE RESTRICT,
  FOREIGN KEY (officeSpaceID) REFERENCES OfficeSpace(officeSpaceID) ON DELETE RESTRICT,
  UNIQUE (lesseeID, officeSpaceID)
)ENGINE=InnoDB;