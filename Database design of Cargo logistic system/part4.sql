--------------------------------------------------------
--  文件已创建 - 星期四-四月-18-2013   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type SYSTP2qbx/5ZSEIvgQ+CepICvUg==
--------------------------------------------------------

  CREATE OR REPLACE TYPE "CS6441XY"."SYSTP2qbx/5ZSEIvgQ+CepICvUg==" AS TABLE OF "SYS"."SQL_BIND"

/
--------------------------------------------------------
--  DDL for Sequence CUSTOMER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."CUSTOMER_ID_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MERCHANDISE_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."MERCHANDISE_ID_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."ORDER_ID_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRO_EQUIP_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."PRO_EQUIP_ID_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence STE_EQUIP_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."STE_EQUIP_ID_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SYSTEM_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."SYSTEM_ID_SEQ"  MINVALUE 10 MAXVALUE 100 INCREMENT BY 10 START WITH 10 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TAG_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."TAG_ID_SEQ"  MINVALUE 100000 MAXVALUE 999999 INCREMENT BY 1 START WITH 100000 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WIRELESS_READ_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."WIRELESS_READ_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WIRE_READ_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CS6441XY"."WIRE_READ_ID_SEQ"  MINVALUE 1 MAXVALUE 999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."CUSTOMER" 
   (	"SSN" VARCHAR2(9 BYTE), 
	"SEX" CHAR(1 CHAR), 
	"ADDRESS" LONG, 
	"PHONE_NUM" NUMBER(10,0), 
	"AUD_REGI_TMSTP" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"ORDER_NUM" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "CS6441XY"."CUSTOMER"."SSN" IS 'social security number';
   COMMENT ON COLUMN "CS6441XY"."CUSTOMER"."ADDRESS" IS 'where the customer live';
   COMMENT ON COLUMN "CS6441XY"."CUSTOMER"."PHONE_NUM" IS 'Cellphone numer';
   COMMENT ON TABLE "CS6441XY"."CUSTOMER"  IS 'This entity is constitute by sender and receiver';
--------------------------------------------------------
--  DDL for Table MERCHANDISE
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."MERCHANDISE" 
   (	"NUM" VARCHAR2(20 BYTE), 
	"TAG_NUM" VARCHAR2(20 BYTE), 
	"ORDER_NUM" VARCHAR2(15 BYTE), 
	"WEIGHT" NUMBER(4,2), 
	"HEIGH" NUMBER(4,2), 
	"ORDER_DATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "CS6441XY"."MERCHANDISE"."NUM" IS 'merchandise number';
   COMMENT ON COLUMN "CS6441XY"."MERCHANDISE"."TAG_NUM" IS 'FKey';
   COMMENT ON COLUMN "CS6441XY"."MERCHANDISE"."ORDER_NUM" IS 'FKey
';
   COMMENT ON COLUMN "CS6441XY"."MERCHANDISE"."WEIGHT" IS 'norm of merchandise';
   COMMENT ON COLUMN "CS6441XY"."MERCHANDISE"."HEIGH" IS 'norm of merchandise';
   COMMENT ON COLUMN "CS6441XY"."MERCHANDISE"."ORDER_DATE" IS 'when the order is created';
   COMMENT ON TABLE "CS6441XY"."MERCHANDISE"  IS 'sent by customer(sender). Monitering all the time during transportation.';
--------------------------------------------------------
--  DDL for Table PRO_EQUIP
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."PRO_EQUIP" 
   (	"NUM" VARCHAR2(20 BYTE), 
	"BRAND" CHAR(20 CHAR), 
	"MANU_DATE" DATE, 
	"EMPLOYEE_NUM" VARCHAR2(20 BYTE), 
	"SYSTEM_NUM" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "CS6441XY"."PRO_EQUIP"."NUM" IS 'equp_num is unique number of portable equipment';
   COMMENT ON COLUMN "CS6441XY"."PRO_EQUIP"."BRAND" IS 'by which company manufactured';
   COMMENT ON COLUMN "CS6441XY"."PRO_EQUIP"."MANU_DATE" IS 'date when manufactated';
   COMMENT ON COLUMN "CS6441XY"."PRO_EQUIP"."EMPLOYEE_NUM" IS 'FKey';
   COMMENT ON TABLE "CS6441XY"."PRO_EQUIP"  IS 'reader equipment has two kinds: portable equipment and steadable equipment';
--------------------------------------------------------
--  DDL for Table STE_EQUIP
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."STE_EQUIP" 
   (	"ADDRESS" LONG, 
	"NUM" VARCHAR2(20 BYTE), 
	"IP_ADDRESS" VARCHAR2(15 BYTE), 
	"MANU_DATE" DATE, 
	"SYSTEM_NUM" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "CS6441XY"."STE_EQUIP"."ADDRESS" IS 'address where it located
';
   COMMENT ON COLUMN "CS6441XY"."STE_EQUIP"."IP_ADDRESS" IS 'special IP address of steadable equipment';
   COMMENT ON COLUMN "CS6441XY"."STE_EQUIP"."MANU_DATE" IS 'when this equipment manufactured';
   COMMENT ON TABLE "CS6441XY"."STE_EQUIP"  IS 'reader equipment has two kinds: portable equipment and steadable equipment';
--------------------------------------------------------
--  DDL for Table SYSTEM
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."SYSTEM" 
   (	"NUM" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "CS6441XY"."SYSTEM"  IS 'System info: other search engine';
--------------------------------------------------------
--  DDL for Table TAG
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."TAG" 
   (	"NUM" VARCHAR2(20 BYTE), 
	"TEMPERATURE" NUMBER(3,2), 
	"HUMIDITY" NUMBER(3,2), 
	"SAFTY" CHAR(1 BYTE), 
	"MERCHAN_NUM" VARCHAR2(20 BYTE), 
	"LAST_DECT_TMSTP" DATE, 
	"TAG_ETA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "CS6441XY"."TAG"."NUM" IS 'special number of RFID tag';
   COMMENT ON COLUMN "CS6441XY"."TAG"."TEMPERATURE" IS 'detection info from sensor';
   COMMENT ON COLUMN "CS6441XY"."TAG"."HUMIDITY" IS 'detection info from sensor';
   COMMENT ON COLUMN "CS6441XY"."TAG"."SAFTY" IS 'detection info from sensor';
   COMMENT ON COLUMN "CS6441XY"."TAG"."MERCHAN_NUM" IS 'detection info from sensor';
   COMMENT ON COLUMN "CS6441XY"."TAG"."TAG_ETA" IS 'estimated time of arrival';
   COMMENT ON TABLE "CS6441XY"."TAG"  IS 'RFID tag, contains a lot of safty info. Tags will be connected when passes through the steadable equipment or scaned by portable equipment which is used by employee.';
--------------------------------------------------------
--  DDL for Table WIRELESS_READ
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."WIRELESS_READ" 
   (	"POR_EQUIP_NUM" VARCHAR2(20 BYTE), 
	"TAG_NUM" VARCHAR2(20 BYTE), 
	"AUD_SCAN_TMSTP" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WIRE_READ
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."WIRE_READ" 
   (	"STE_EQUIP_NUM" VARCHAR2(20 BYTE), 
	"TAG_NUM" VARCHAR2(20 BYTE), 
	"AUD_SCAN_TMSTP" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table order
--------------------------------------------------------

  CREATE TABLE "CS6441XY"."order" 
   (	"CUSTOMER_SSN" VARCHAR2(9 BYTE), 
	"NUM" VARCHAR2(15 BYTE), 
	"MERCHAN_NUM" VARCHAR2(20 BYTE), 
	"ORDER_DATE" DATE, 
	"ORDER_ETA" DATE, 
	"receiver name" CHAR(10 BYTE), 
	"destination address" LONG, 
	"RECEIVER_PHONE" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "CS6441XY"."order"."CUSTOMER_SSN" IS 'PKey';
   COMMENT ON COLUMN "CS6441XY"."order"."NUM" IS 'the number of order list';
   COMMENT ON COLUMN "CS6441XY"."order"."MERCHAN_NUM" IS 'PKey';
   COMMENT ON COLUMN "CS6441XY"."order"."receiver name" IS 'receiver customer name';
   COMMENT ON COLUMN "CS6441XY"."order"."destination address" IS 'address of receiver';
   COMMENT ON TABLE "CS6441XY"."order"  IS 'Customer(sender) creates order, one order can have several merchandises to send.';
--------------------------------------------------------
--  DDL for View V_CUSTOMER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_CUSTOMER" ("SSN", "SEX", "ADDRESS", "PHONE_NUM", "AUD_REGI_TMSTP", "ORDER_NUM") AS 
  SELECT
    SSN,
    sex,
    address,
    phone_num,
    AUD_Regi_TMSTP,
    order_num
 FROM 
    customer;
--------------------------------------------------------
--  DDL for View V_MERCHANDISE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_MERCHANDISE" ("NUM", "TAG_NUM", "ORDER_NUM", "WEIGHT", "HEIGH", "ORDER_DATE") AS 
  SELECT
    Num,
    tag_Num,
    order_num,
    weight,
    heigh,
    order_date
 FROM 
    merchandise;
--------------------------------------------------------
--  DDL for View V_ORDER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_ORDER" ("CUSTOMER_SSN", "NUM", "MERCHAN_NUM", "ORDER_DATE", "ORDER_ETA", "receiver name", "destination address", "RECEIVER_PHONE") AS 
  SELECT
    customer_SSN,
    num,
    merchan_Num,
    order_date,
    order_ETA,
    "receiver name",
    "destination address",
    receiver_phone
 FROM 
    "order";
--------------------------------------------------------
--  DDL for View V_PORTABLE_EQUIPMENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_PORTABLE_EQUIPMENT" ("NUM", "BRAND", "MANU_DATE", "EMPLOYEE_NUM", "SYSTEM_NUM") AS 
  SELECT
    num,
    brand,
    manu_date,
    employee_num,
    System_num
 FROM 
    pro_equip;
--------------------------------------------------------
--  DDL for View V_STEADABLE_EQUIPMENT
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_STEADABLE_EQUIPMENT" ("ADDRESS", "NUM", "IP_ADDRESS", "MANU_DATE", "SYSTEM_NUM") AS 
  SELECT
    address,
    num,
    ip_address,
    manu_date,
    System_num
 FROM 
    ste_equip;
--------------------------------------------------------
--  DDL for View V_SYSTEM
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_SYSTEM" ("NUM") AS 
  SELECT
    num
 FROM 
    System;
--------------------------------------------------------
--  DDL for View V_TAG
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_TAG" ("NUM", "TEMPERATURE", "HUMIDITY", "SAFTY", "MERCHAN_NUM", "LAST_DECT_TMSTP", "TAG_ETA") AS 
  SELECT
    Num,
    temperature,
    humidity,
    safty,
    merchan_Num,
    last_dect_TMSTP,
    tag_ETA
 FROM 
    tag;
--------------------------------------------------------
--  DDL for View V_WIRELESS_READ
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_WIRELESS_READ" ("POR_EQUIP_NUM", "TAG_NUM", "AUD_SCAN_TMSTP") AS 
  SELECT
    por_equip_num,
    tag_Num,
    AUD_Scan_TMSTP
 FROM 
    wireless_read;
--------------------------------------------------------
--  DDL for View V_WIRE_READ
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "CS6441XY"."V_WIRE_READ" ("STE_EQUIP_NUM", "TAG_NUM", "AUD_SCAN_TMSTP") AS 
  SELECT
    ste_equip_num,
    tag_Num,
    AUD_Scan_TMSTP
 FROM 
    wire_read;
REM INSERTING into CS6441XY.CUSTOMER
SET DEFINE OFF;
REM INSERTING into CS6441XY.MERCHANDISE
SET DEFINE OFF;
REM INSERTING into CS6441XY.PRO_EQUIP
SET DEFINE OFF;
REM INSERTING into CS6441XY.STE_EQUIP
SET DEFINE OFF;
REM INSERTING into CS6441XY.SYSTEM
SET DEFINE OFF;
REM INSERTING into CS6441XY.TAG
SET DEFINE OFF;
REM INSERTING into CS6441XY.WIRELESS_READ
SET DEFINE OFF;
REM INSERTING into CS6441XY.WIRE_READ
SET DEFINE OFF;
REM INSERTING into CS6441XY."order"
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index WIRELESS_READ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."WIRELESS_READ_PK" ON "CS6441XY"."WIRELESS_READ" ("POR_EQUIP_NUM", "TAG_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDER_MERCHAN_NUM_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."ORDER_MERCHAN_NUM_IDX" ON "CS6441XY"."order" ("MERCHAN_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDER_CUSTOMER_SSN_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."ORDER_CUSTOMER_SSN_IDX" ON "CS6441XY"."order" ("CUSTOMER_SSN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."ORDER_PK" ON "CS6441XY"."order" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POR_EQUIP_EMPLOYEE_NUM_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."POR_EQUIP_EMPLOYEE_NUM_IDX" ON "CS6441XY"."PRO_EQUIP" ("EMPLOYEE_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POR_EQUIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."POR_EQUIP_PK" ON "CS6441XY"."PRO_EQUIP" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TAG_MERCHAN_NUM_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."TAG_MERCHAN_NUM_IDX" ON "CS6441XY"."TAG" ("MERCHAN_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYSTEM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."SYSTEM_PK" ON "CS6441XY"."SYSTEM" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WIRE_READ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."WIRE_READ_PK" ON "CS6441XY"."WIRE_READ" ("STE_EQUIP_NUM", "TAG_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STE_EQUIP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."STE_EQUIP_PK" ON "CS6441XY"."STE_EQUIP" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_ORDER_NUM_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."CUSTOMER_ORDER_NUM_IDX" ON "CS6441XY"."CUSTOMER" ("ORDER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."CUSTOMER_PK" ON "CS6441XY"."CUSTOMER" ("SSN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TAG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."TAG_PK" ON "CS6441XY"."TAG" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MERCHAN_TAG_NUM_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."MERCHAN_TAG_NUM_IDX" ON "CS6441XY"."MERCHANDISE" ("TAG_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STE_EQUIP_SYSTEM_NUM_IDX
--------------------------------------------------------

  CREATE INDEX "CS6441XY"."STE_EQUIP_SYSTEM_NUM_IDX" ON "CS6441XY"."STE_EQUIP" ("SYSTEM_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MERCHAN_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."MERCHAN_PK" ON "CS6441XY"."MERCHANDISE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MERCHAN_ORDER_NUM_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "CS6441XY"."MERCHAN_ORDER_NUM_IDX" ON "CS6441XY"."MERCHANDISE" ("ORDER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POR_EQUIP_SYSTEM_NUM_IDX
--------------------------------------------------------

  CREATE INDEX "CS6441XY"."POR_EQUIP_SYSTEM_NUM_IDX" ON "CS6441XY"."PRO_EQUIP" ("SYSTEM_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table order
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."order" ADD CONSTRAINT "ORDER_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."order" MODIFY ("RECEIVER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."order" MODIFY ("destination address" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."order" MODIFY ("receiver name" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."order" MODIFY ("ORDER_DATE" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."order" MODIFY ("MERCHAN_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."order" MODIFY ("NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."order" MODIFY ("CUSTOMER_SSN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STE_EQUIP
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."STE_EQUIP" ADD CONSTRAINT "STE_EQUIP_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."STE_EQUIP" MODIFY ("SYSTEM_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."STE_EQUIP" MODIFY ("MANU_DATE" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."STE_EQUIP" MODIFY ("IP_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."STE_EQUIP" MODIFY ("NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."STE_EQUIP" MODIFY ("ADDRESS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SYSTEM
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."SYSTEM" ADD CONSTRAINT "SYSTEM_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."SYSTEM" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAG
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."TAG" ADD CONSTRAINT "VALID_TEMPERATURE" CHECK (TEMPERATURE > -15) ENABLE;
  ALTER TABLE "CS6441XY"."TAG" ADD CONSTRAINT "TAG_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."TAG" MODIFY ("MERCHAN_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."TAG" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WIRELESS_READ
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."WIRELESS_READ" ADD CONSTRAINT "WIRELESS_READ_PK" PRIMARY KEY ("POR_EQUIP_NUM", "TAG_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."WIRELESS_READ" MODIFY ("TAG_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."WIRELESS_READ" MODIFY ("POR_EQUIP_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MERCHANDISE
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."MERCHANDISE" ADD CONSTRAINT "VALID_HEIGH" CHECK (HEIGH>0) ENABLE;
  ALTER TABLE "CS6441XY"."MERCHANDISE" ADD CONSTRAINT "VALID_WEIGHT" CHECK (WEIGHT>0) ENABLE;
  ALTER TABLE "CS6441XY"."MERCHANDISE" ADD CONSTRAINT "MERCHAN_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."MERCHANDISE" MODIFY ("ORDER_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."MERCHANDISE" MODIFY ("TAG_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."MERCHANDISE" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."CUSTOMER" ADD CONSTRAINT "VALID_PHONE_NUM" CHECK (PHONE_NUM>10000000) ENABLE;
  ALTER TABLE "CS6441XY"."CUSTOMER" ADD CONSTRAINT "VALID_NUMBER" UNIQUE ("PHONE_NUM") DISABLE;
  ALTER TABLE "CS6441XY"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("SSN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."CUSTOMER" MODIFY ("ORDER_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."CUSTOMER" MODIFY ("AUD_REGI_TMSTP" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."CUSTOMER" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."CUSTOMER" MODIFY ("SSN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRO_EQUIP
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."PRO_EQUIP" ADD CONSTRAINT "POR_EQUIP_PK" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."PRO_EQUIP" MODIFY ("SYSTEM_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."PRO_EQUIP" MODIFY ("EMPLOYEE_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."PRO_EQUIP" MODIFY ("MANU_DATE" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."PRO_EQUIP" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."PRO_EQUIP" MODIFY ("NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WIRE_READ
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."WIRE_READ" ADD CONSTRAINT "WIRE_READ_PK" PRIMARY KEY ("STE_EQUIP_NUM", "TAG_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CS6441XY"."WIRE_READ" MODIFY ("TAG_NUM" NOT NULL ENABLE);
  ALTER TABLE "CS6441XY"."WIRE_READ" MODIFY ("STE_EQUIP_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_ORDER_FK" FOREIGN KEY ("ORDER_NUM")
	  REFERENCES "CS6441XY"."order" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MERCHANDISE
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."MERCHANDISE" ADD CONSTRAINT "MERCHAN_ORDER_FK" FOREIGN KEY ("ORDER_NUM")
	  REFERENCES "CS6441XY"."order" ("NUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CS6441XY"."MERCHANDISE" ADD CONSTRAINT "MERCHAN_TAG_FK" FOREIGN KEY ("TAG_NUM")
	  REFERENCES "CS6441XY"."TAG" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRO_EQUIP
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."PRO_EQUIP" ADD CONSTRAINT "POR_EQUIP_SYSTEM_FK" FOREIGN KEY ("SYSTEM_NUM")
	  REFERENCES "CS6441XY"."SYSTEM" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STE_EQUIP
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."STE_EQUIP" ADD CONSTRAINT "STE_EQUIP_SYSTEM_FK" FOREIGN KEY ("SYSTEM_NUM")
	  REFERENCES "CS6441XY"."SYSTEM" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TAG
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."TAG" ADD CONSTRAINT "TAG_MERCHAN_FK" FOREIGN KEY ("MERCHAN_NUM")
	  REFERENCES "CS6441XY"."MERCHANDISE" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WIRELESS_READ
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."WIRELESS_READ" ADD CONSTRAINT "WIRELESS_READ_POR_EQUIP_FK" FOREIGN KEY ("POR_EQUIP_NUM")
	  REFERENCES "CS6441XY"."PRO_EQUIP" ("NUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CS6441XY"."WIRELESS_READ" ADD CONSTRAINT "WIRELESS_READ_TAG_FK" FOREIGN KEY ("TAG_NUM")
	  REFERENCES "CS6441XY"."TAG" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WIRE_READ
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."WIRE_READ" ADD CONSTRAINT "WIRE_READ_STE_EQUIP_FK" FOREIGN KEY ("STE_EQUIP_NUM")
	  REFERENCES "CS6441XY"."STE_EQUIP" ("NUM") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CS6441XY"."WIRE_READ" ADD CONSTRAINT "WIRE_READ_TAG_FK" FOREIGN KEY ("TAG_NUM")
	  REFERENCES "CS6441XY"."TAG" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table order
--------------------------------------------------------

  ALTER TABLE "CS6441XY"."order" ADD CONSTRAINT "ORDER_CUSTOMER_FK" FOREIGN KEY ("CUSTOMER_SSN")
	  REFERENCES "CS6441XY"."CUSTOMER" ("SSN") ON DELETE CASCADE ENABLE;
  ALTER TABLE "CS6441XY"."order" ADD CONSTRAINT "ORDER_MERCHAN_FK" FOREIGN KEY ("MERCHAN_NUM")
	  REFERENCES "CS6441XY"."MERCHANDISE" ("NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CS6441XY"."SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205, 
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/
