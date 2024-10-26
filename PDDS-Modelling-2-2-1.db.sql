BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Booking" (
	"booking_id"	INTEGER,
	"booking_date"	DATE,
	"check_in_date"	DATE,
	"check_out_date"	DATE,
	"booking_status"	TEXT,
	"guest_id"	INTEGER,
	"room_id"	INTEGER,
	PRIMARY KEY("booking_id"),
	FOREIGN KEY("guest_id") REFERENCES "Guest"("guest_id"),
	FOREIGN KEY("room_id") REFERENCES "Room"("room_id")
);
CREATE TABLE IF NOT EXISTS "Guest" (
	"guest_id"	INTEGER,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"phone_number"	TEXT,
	"email"	TEXT,
	"address"	TEXT,
	"gender"	TEXT,
	"date_of_birth"	DATE,
	PRIMARY KEY("guest_id")
);
CREATE TABLE IF NOT EXISTS "Payment" (
	"payment_id"	INTEGER,
	"payment_date"	DATE,
	"amount_paid"	REAL,
	"payment_method"	TEXT,
	"booking_id"	INTEGER,
	PRIMARY KEY("payment_id"),
	FOREIGN KEY("booking_id") REFERENCES "Booking"("booking_id")
);
CREATE TABLE IF NOT EXISTS "Room" (
	"room_id"	INTEGER,
	"room_type"	TEXT,
	"price_per_night"	REAL,
	PRIMARY KEY("room_id")
);
INSERT INTO "Booking" VALUES (1,'2024-01-10','2024-01-15','2024-01-20','Confirmed',1,2);
INSERT INTO "Booking" VALUES (2,'2023-12-25','2023-12-30','2024-01-05','Completed',2,3);
INSERT INTO "Booking" VALUES (3,'2024-03-01','2024-03-05','2024-03-10','Confirmed',3,1);
INSERT INTO "Booking" VALUES (4,'2024-02-01','2024-02-05','2024-02-10','Confirmed',4,4);
INSERT INTO "Booking" VALUES (5,'2023-11-20','2023-11-25','2023-11-30','Completed',5,5);
INSERT INTO "Booking" VALUES (6,'2024-04-15','2024-04-20','2024-04-25','Cancelled',6,6);
INSERT INTO "Booking" VALUES (7,'2024-05-10','2024-05-15','2024-05-20','Confirmed',7,7);
INSERT INTO "Booking" VALUES (8,'2024-06-01','2024-06-05','2024-06-10','Confirmed',8,8);
INSERT INTO "Booking" VALUES (9,'2024-07-15','2024-07-20','2024-07-25','Completed',9,9);
INSERT INTO "Booking" VALUES (10,'2024-08-01','2024-08-05','2024-08-10','Confirmed',10,10);
INSERT INTO "Booking" VALUES (11,'2024-09-01','2024-09-05','2024-09-10','Completed',11,11);
INSERT INTO "Booking" VALUES (12,'2023-10-15','2023-10-20','2023-10-25','Cancelled',12,12);
INSERT INTO "Booking" VALUES (13,'2023-11-01','2023-11-05','2023-11-10','Confirmed',13,13);
INSERT INTO "Booking" VALUES (14,'2023-12-10','2023-12-15','2023-12-20','Completed',14,14);
INSERT INTO "Booking" VALUES (15,'2024-01-20','2024-01-25','2024-01-30','Confirmed',15,15);
INSERT INTO "Booking" VALUES (16,'2024-02-10','2024-02-15','2024-02-20','Completed',1,16);
INSERT INTO "Booking" VALUES (17,'2024-03-15','2024-03-20','2024-03-25','Confirmed',3,4);
INSERT INTO "Booking" VALUES (18,'2024-10-01','2024-12-15','2024-12-20','Confirmed',16,1);
INSERT INTO "Guest" VALUES (1,'John','Doe','1234567890','john.doe@example.com','123 Main St, New York','Male','1980-01-01');
INSERT INTO "Guest" VALUES (2,'Jane','Smith','0987654321','jane.smith@example.com','456 Maple Ave, Paris','Female','1992-05-14');
INSERT INTO "Guest" VALUES (3,'Alice','Johnson','1122334455','alice.johnson@example.com','789 Oak St, Berlin','Female','1985-10-10');
INSERT INTO "Guest" VALUES (4,'Charlie','Brown','3344556677','charlie.brown@example.com','101 Pine St, London','Male','1990-07-21');
INSERT INTO "Guest" VALUES (5,'Emily','Davis','5566778899','emily.davis@example.com','202 Birch Ave, Rome','Female','1995-12-02');
INSERT INTO "Guest" VALUES (6,'Michael','Wilson','6677889900','michael.wilson@example.com','303 Cedar St, Tokyo','Male','1988-03-15');
INSERT INTO "Guest" VALUES (7,'Olivia','Taylor','7788990011','olivia.taylor@example.com','404 Willow St, Sydney','Female','1977-08-23');
INSERT INTO "Guest" VALUES (8,'Daniel','Moore','8899001122','daniel.moore@example.com','505 Spruce St, Moscow','Male','1966-09-05');
INSERT INTO "Guest" VALUES (9,'Sophia','Anderson','9900112233','sophia.anderson@example.com','606 Maple St, Dubai','Female','1975-11-18');
INSERT INTO "Guest" VALUES (10,'James','Thomas','1011223344','james.thomas@example.com','707 Palm St, Hong Kong','Male','1983-04-12');
INSERT INTO "Guest" VALUES (11,'Linda','Jackson','1122334455','linda.jackson@example.com','808 Birch St, Amsterdam','Female','1991-07-30');
INSERT INTO "Guest" VALUES (12,'Robert','Harris','2233445566','robert.harris@example.com','909 Ash St, Seoul','Male','1998-02-19');
INSERT INTO "Guest" VALUES (13,'Jessica','Martin','3344556677','jessica.martin@example.com','1010 Cedar St, Singapore','Female','1994-06-21');
INSERT INTO "Guest" VALUES (14,'William','Garcia','4455667788','william.garcia@example.com','1111 Fir St, Madrid','Male','1982-12-15');
INSERT INTO "Guest" VALUES (15,'Karen','Martinez','5566778899','karen.martinez@example.com','1212 Oak St, Miami','Female','1973-05-26');
INSERT INTO "Guest" VALUES (16,'Pierre','Dubois','123456789','pierre.dubois@example.com','Paris, France','Male','1985-06-15');
INSERT INTO "Payment" VALUES (1,'2024-01-20',500.0,'Credit Card',1);
INSERT INTO "Payment" VALUES (2,'2024-01-05',750.0,'Credit Card',2);
INSERT INTO "Payment" VALUES (3,'2024-03-10',300.0,'Cash',3);
INSERT INTO "Payment" VALUES (4,'2024-02-10',400.0,'Credit Card',4);
INSERT INTO "Payment" VALUES (5,'2023-11-30',550.0,'Credit Card',5);
INSERT INTO "Payment" VALUES (6,'2024-04-25',600.0,'Cash',6);
INSERT INTO "Payment" VALUES (7,'2024-05-20',700.0,'Credit Card',7);
INSERT INTO "Payment" VALUES (8,'2024-06-10',800.0,'Cash',8);
INSERT INTO "Payment" VALUES (9,'2024-07-25',450.0,'Credit Card',9);
INSERT INTO "Payment" VALUES (10,'2024-08-10',750.0,'Credit Card',10);
INSERT INTO "Payment" VALUES (11,'2024-09-10',350.0,'Cash',11);
INSERT INTO "Payment" VALUES (12,'2023-10-25',550.0,'Credit Card',12);
INSERT INTO "Payment" VALUES (13,'2023-11-10',650.0,'Cash',13);
INSERT INTO "Payment" VALUES (14,'2023-12-20',500.0,'Credit Card',14);
INSERT INTO "Payment" VALUES (15,'2024-01-30',600.0,'Cash',15);
INSERT INTO "Payment" VALUES (16,'2024-08-20',700.0,'Credit Card',16);
INSERT INTO "Payment" VALUES (17,'2024-03-25',800.0,'Cash',17);
INSERT INTO "Payment" VALUES (18,'2024-04-10',450.0,'Credit Card',18);
INSERT INTO "Room" VALUES (1,'Single',100.0);
INSERT INTO "Room" VALUES (2,'Double',150.0);
INSERT INTO "Room" VALUES (3,'Suite',250.0);
INSERT INTO "Room" VALUES (4,'Single',90.0);
INSERT INTO "Room" VALUES (5,'Double',180.0);
INSERT INTO "Room" VALUES (6,'Suite',270.0);
INSERT INTO "Room" VALUES (7,'Single',110.0);
INSERT INTO "Room" VALUES (8,'Double',140.0);
INSERT INTO "Room" VALUES (9,'Suite',260.0);
INSERT INTO "Room" VALUES (10,'Single',120.0);
INSERT INTO "Room" VALUES (11,'Double',160.0);
INSERT INTO "Room" VALUES (12,'Suite',230.0);
INSERT INTO "Room" VALUES (13,'Single',130.0);
INSERT INTO "Room" VALUES (14,'Double',170.0);
INSERT INTO "Room" VALUES (15,'Suite',240.0);
INSERT INTO "Room" VALUES (16,'Single',105.0);
COMMIT;
