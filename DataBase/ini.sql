-- MySQL Script generated by MySQL Workbench
-- 01/12/17 21:41:58
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fruit
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fruit
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fruit` DEFAULT CHARACTER SET latin1 ;
USE `fruit` ;

-- -----------------------------------------------------
-- Table `fruit`.`departement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`departement` ;

CREATE TABLE IF NOT EXISTS `fruit`.`departement` (
  `iddepartement` INT(11) NOT NULL AUTO_INCREMENT,
  `departementname` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`iddepartement`))
ENGINE = InnoDB
AUTO_INCREMENT = 123
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`posisi`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`posisi` ;

CREATE TABLE IF NOT EXISTS `fruit`.`posisi` (
  `idposisi` INT(11) NOT NULL AUTO_INCREMENT,
  `iddepartement` INT(11) NOT NULL,
  `posisiname` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idposisi`),
  INDEX `fk_posisi_departement1_idx` (`iddepartement` ASC),
  CONSTRAINT `fk_posisi_departement1`
    FOREIGN KEY (`iddepartement`)
    REFERENCES `fruit`.`departement` (`iddepartement`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`status` ;

CREATE TABLE IF NOT EXISTS `fruit`.`status` (
  `idstatus` INT(11) NOT NULL AUTO_INCREMENT,
  `statusname` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idstatus`))
ENGINE = InnoDB
AUTO_INCREMENT = 11119
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`karyawan`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`karyawan` ;

CREATE TABLE IF NOT EXISTS `fruit`.`karyawan` (
  `idkaryawan` INT(11) NOT NULL AUTO_INCREMENT,
  `idstatus` INT(11) NOT NULL,
  `idposisi` INT(11) NOT NULL,
  `namapanjang` VARCHAR(100) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(45) NULL DEFAULT NULL,
  `alamat` VARCHAR(45) NULL DEFAULT NULL,
  `kontak` VARCHAR(45) NULL DEFAULT NULL,
  `gender` VARCHAR(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idkaryawan`),
  INDEX `fk_karyawan_status1_idx` (`idstatus` ASC),
  INDEX `fk_karyawan_posisi1_idx` (`idposisi` ASC),
  CONSTRAINT `fk_karyawan_posisi1`
    FOREIGN KEY (`idposisi`)
    REFERENCES `fruit`.`posisi` (`idposisi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_karyawan_status1`
    FOREIGN KEY (`idstatus`)
    REFERENCES `fruit`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`produkkat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`produkkat` ;

CREATE TABLE IF NOT EXISTS `fruit`.`produkkat` (
  `idprodukkat` INT(11) NOT NULL AUTO_INCREMENT,
  `produkkatname` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idprodukkat`))
ENGINE = InnoDB
AUTO_INCREMENT = 1002
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`produk`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`produk` ;

CREATE TABLE IF NOT EXISTS `fruit`.`produk` (
  `idproduk` INT(11) NOT NULL AUTO_INCREMENT,
  `idprodukkat` INT(11) NOT NULL,
  `idstatus` INT(11) NOT NULL,
  `namaproduk` VARCHAR(45) NULL DEFAULT NULL,
  `stok` INT(6) NULL DEFAULT NULL,
  `harga` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`idproduk`),
  INDEX `fk_produk_produkkat1_idx` (`idprodukkat` ASC),
  INDEX `fk_produk_status1_idx` (`idstatus` ASC),
  CONSTRAINT `fk_produk_produkkat1`
    FOREIGN KEY (`idprodukkat`)
    REFERENCES `fruit`.`produkkat` (`idprodukkat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_produk_status1`
    FOREIGN KEY (`idstatus`)
    REFERENCES `fruit`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`suppliertype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`suppliertype` ;

CREATE TABLE IF NOT EXISTS `fruit`.`suppliertype` (
  `idsuppliertype` INT(11) NOT NULL AUTO_INCREMENT,
  `suppliertypename` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idsuppliertype`))
ENGINE = InnoDB
AUTO_INCREMENT = 113
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`supplier` ;

CREATE TABLE IF NOT EXISTS `fruit`.`supplier` (
  `idsupplier` INT(11) NOT NULL AUTO_INCREMENT,
  `idsuppliertype` INT(11) NOT NULL,
  `idstatus` INT(11) NOT NULL,
  `namaPT` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `kontak` VARCHAR(45) NULL DEFAULT NULL,
  `alamat` VARCHAR(45) NULL DEFAULT NULL,
  `tglgabung` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`idsupplier`),
  INDEX `fk_supplier_suppliertype1_idx` (`idsuppliertype` ASC),
  INDEX `fk_supplier_status1_idx` (`idstatus` ASC),
  CONSTRAINT `fk_supplier_status1`
    FOREIGN KEY (`idstatus`)
    REFERENCES `fruit`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_supplier_suppliertype1`
    FOREIGN KEY (`idsuppliertype`)
    REFERENCES `fruit`.`suppliertype` (`idsuppliertype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`trxtype`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`trxtype` ;

CREATE TABLE IF NOT EXISTS `fruit`.`trxtype` (
  `idtrxtype` INT(11) NOT NULL AUTO_INCREMENT,
  `trxtypename` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idtrxtype`))
ENGINE = InnoDB
AUTO_INCREMENT = 778
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`trxheader`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`trxheader` ;

CREATE TABLE IF NOT EXISTS `fruit`.`trxheader` (
  `idtrxheader` VARCHAR(50) NOT NULL,
  `idtrxtype` INT(11) NOT NULL,
  `idstatus` INT(11) NOT NULL,
  `idsupplier` INT(11) NOT NULL,
  `tgltrx` DATE NOT NULL,
  PRIMARY KEY (`idtrxheader`),
  INDEX `fk_trxheader_trxtype1_idx` (`idtrxtype` ASC),
  INDEX `fk_trxheader_status1_idx` (`idstatus` ASC),
  INDEX `fk_trxheader_supplier1_idx` (`idsupplier` ASC),
  CONSTRAINT `fk_trxheader_status1`
    FOREIGN KEY (`idstatus`)
    REFERENCES `fruit`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trxheader_supplier1`
    FOREIGN KEY (`idsupplier`)
    REFERENCES `fruit`.`supplier` (`idsupplier`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trxheader_trxtype1`
    FOREIGN KEY (`idtrxtype`)
    REFERENCES `fruit`.`trxtype` (`idtrxtype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`trxdetail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`trxdetail` ;

CREATE TABLE IF NOT EXISTS `fruit`.`trxdetail` (
  `idtrxdetail` INT(11) NOT NULL AUTO_INCREMENT,
  `idtrxheader` VARCHAR(50) NOT NULL,
  `idproduk` INT(11) NOT NULL,
  `qty` INT(6) NOT NULL,
  `harga` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`idtrxdetail`),
  INDEX `fk_trxdetail_trxheader1_idx` (`idtrxheader` ASC),
  INDEX `fk_trxdetail_produk1_idx` (`idproduk` ASC),
  CONSTRAINT `fk_trxdetail_produk1`
    FOREIGN KEY (`idproduk`)
    REFERENCES `fruit`.`produk` (`idproduk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trxdetail_trxheader1`
    FOREIGN KEY (`idtrxheader`)
    REFERENCES `fruit`.`trxheader` (`idtrxheader`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`trxretur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`trxretur` ;

CREATE TABLE IF NOT EXISTS `fruit`.`trxretur` (
  `idtrxretur` INT(11) NOT NULL AUTO_INCREMENT,
  `idtrxheader` VARCHAR(50) NOT NULL,
  `idstatus` INT(11) NOT NULL,
  `idproduk` INT(11) NOT NULL,
  `qty` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idtrxretur`),
  INDEX `fk_trxretur_trxheader1_idx` (`idtrxheader` ASC),
  INDEX `fk_trxretur_status1_idx` (`idstatus` ASC),
  INDEX `fk_trxretur_produk1_idx` (`idproduk` ASC),
  CONSTRAINT `fk_trxretur_produk1`
    FOREIGN KEY (`idproduk`)
    REFERENCES `fruit`.`produk` (`idproduk`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trxretur_status1`
    FOREIGN KEY (`idstatus`)
    REFERENCES `fruit`.`status` (`idstatus`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trxretur_trxheader1`
    FOREIGN KEY (`idtrxheader`)
    REFERENCES `fruit`.`trxheader` (`idtrxheader`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `fruit`.`pembayaran`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fruit`.`pembayaran` ;

CREATE TABLE IF NOT EXISTS `fruit`.`pembayaran` (
  `idpembayaran` INT NOT NULL,
  `idtrx` VARCHAR(50) NOT NULL,
  `tglbayar` DATE NOT NULL,
  `totalbayar` DOUBLE NOT NULL,
  `confirmby` INT NOT NULL,
  PRIMARY KEY (`idpembayaran`),
  INDEX `fk_pembayaran_trxheader1_idx` (`idtrx` ASC),
  CONSTRAINT `fk_pembayaran_trxheader1`
    FOREIGN KEY (`idtrx`)
    REFERENCES `fruit`.`trxheader` (`idtrxheader`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fruit`.`departement`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`departement` (`iddepartement`, `departementname`) VALUES (121, 'Gudang');
INSERT INTO `fruit`.`departement` (`iddepartement`, `departementname`) VALUES (122, 'Admin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`posisi`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`posisi` (`idposisi`, `iddepartement`, `posisiname`) VALUES (1, 121, 'Deliveri');
INSERT INTO `fruit`.`posisi` (`idposisi`, `iddepartement`, `posisiname`) VALUES (2, 121, 'Kepala Bagian');
INSERT INTO `fruit`.`posisi` (`idposisi`, `iddepartement`, `posisiname`) VALUES (3, 122, 'Administrator');
INSERT INTO `fruit`.`posisi` (`idposisi`, `iddepartement`, `posisiname`) VALUES (4, 122, 'Kepala Bagian');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`status`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11110, 'Aktif');
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11111, 'Non Aktif');
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11112, 'Sukses');
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11113, 'Batal');
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11114, 'Tunda');
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11115, 'ETC');
INSERT INTO `fruit`.`status` (`idstatus`, `statusname`) VALUES (11118, 'Tersedia');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`karyawan`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`karyawan` (`idkaryawan`, `idstatus`, `idposisi`, `namapanjang`, `email`, `password`, `alamat`, `kontak`, `gender`) VALUES (1, 11110, 3, 'Sigit Pramono', 'sigit@gmail.com', '121212', NULL, '0858454545455', 'M');
INSERT INTO `fruit`.`karyawan` (`idkaryawan`, `idstatus`, `idposisi`, `namapanjang`, `email`, `password`, `alamat`, `kontak`, `gender`) VALUES (2, 11110, 4, 'Jaka Ardiola', 'Jack@gg.com', '1232', NULL, NULL, 'M');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`produkkat`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`produkkat` (`idprodukkat`, `produkkatname`) VALUES (1000, 'Super');
INSERT INTO `fruit`.`produkkat` (`idprodukkat`, `produkkatname`) VALUES (1001, 'Super Premium');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`produk`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`produk` (`idproduk`, `idprodukkat`, `idstatus`, `namaproduk`, `stok`, `harga`) VALUES (300, 1, 11118, 'Anggur', 300, 800000);

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`suppliertype`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`suppliertype` (`idsuppliertype`, `suppliertypename`) VALUES (111, 'Pemasok');
INSERT INTO `fruit`.`suppliertype` (`idsuppliertype`, `suppliertypename`) VALUES (112, 'Pembeli');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`supplier`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`supplier` (`idsupplier`, `idsuppliertype`, `idstatus`, `namaPT`, `email`, `kontak`, `alamat`, `tglgabung`) VALUES (1, 111, 11110, 'PT. Naufal Sejahterad', 'nau@gmail.com', '085452122', 'Bebas', '2017-01-01');
INSERT INTO `fruit`.`supplier` (`idsupplier`, `idsuppliertype`, `idstatus`, `namaPT`, `email`, `kontak`, `alamat`, `tglgabung`) VALUES (2, 112, 11110, 'PT. Pagpug', 'service@pagpug.com', '08512456', 'Bebas', '2017-01-01');

COMMIT;


-- -----------------------------------------------------
-- Data for table `fruit`.`trxtype`
-- -----------------------------------------------------
START TRANSACTION;
USE `fruit`;
INSERT INTO `fruit`.`trxtype` (`idtrxtype`, `trxtypename`) VALUES (771, 'Request');
INSERT INTO `fruit`.`trxtype` (`idtrxtype`, `trxtypename`) VALUES (772, 'Purchase');

COMMIT;

