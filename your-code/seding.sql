INSERT INTO `lab_intro_sql(coches_db)`.`cars` (`ID`,`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO `lab_intro_sql(coches_db)`. `cars` (`ID`,`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES (1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red");
INSERT INTO `lab_intro_sql(coches_db)`. `cars` (`ID`,`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018,  "White");
INSERT INTO `lab_intro_sql(coches_db)`. `cars` (`ID`,`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018,  "Silver");
INSERT INTO `lab_intro_sql(coches_db)`. `cars` (`ID`,`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019,  "Gray");
INSERT INTO `lab_intro_sql(coches_db)`. `cars` (`ID`,`VIN`, `Manufacturer`, `Model`, `Year`, `Color`) VALUES (5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019,  "Gray");

INSERT INTO `lab_intro_sql(coches_db)`. `customers` (`ID`,`Customer ID`, `Name`, `Phone Number`, `Email`, `Address`, `Province`, `Country`, `Postal Code`) VALUES (0, 10001, "Pablo Picasso", "34636176382", "-","Paseo de la Chopera, 14", "Madrid",  "Spain", 28045);
INSERT INTO `lab_intro_sql(coches_db)`. `customers` (`ID`,`Customer ID`, `Name`, `Phone Number`, `Email`, `Address`, `Province`, `Country`, `Postal Code`) VALUES (1, 20001, "Hedy Lamarr", "431514442250", "-","Weiglgasse 10", "Viena", "Austria", 1150);
INSERT INTO `lab_intro_sql(coches_db)`. `customers` (`ID`,`Customer ID`, `Name`, `Phone Number`, `Email`, `Address`, `Province`, `Country`, `Postal Code`) VALUES (2, 30001, "Katherine Johnson", "34636176382", "-","300 E St SW", "Washington DC", "Washington"  "United States", 20546);

INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (0, 00001, "Petey Cruiser", "Madrid");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (1, 00002, "Anna Sthesia", "Barcelona");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (2, 00003, "Paul Molive", "Berlin");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (3, 00004, "Gail Forcewind", "Paris");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (4, 00005, "Paige Turner", "Mimia");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (5, 00006, "Bob Frapples", "Meixco City");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (6, 00007, "Walter Melon", "Amsterdam");
INSERT INTO `lab_intro_sql(coches_db)`. `salesperson` (`ID`, `Staff ID`, `Name`, `Store`) VALUES (7, 00008, "Shonda Leer", "São Paulo");

INSERT INTO `lab_intro_sql(coches_db)`. `invoices` (`ID`, `Invoice Number`, `Date`, `cars_ID`, `customers_ID`, `salesperson_ID`) VALUES (0, 852399038, "22-07-2018", 0, 1, 3);
INSERT INTO `lab_intro_sql(coches_db)`. `invoices` (`ID`, `Invoice Number`, `Date`, `cars_ID`, `customers_ID`, `salesperson_ID`) VALUES (1, 731166526, "31-12-2018", 3, 0, 5);
INSERT INTO `lab_intro_sql(coches_db)`. `invoices` (`ID`, `Invoice Number`, `Date`, `cars_ID`, `customers_ID`, `salesperson_ID`) VALUES (2, 271135104, "22-01-2019", 2, 2, 7);