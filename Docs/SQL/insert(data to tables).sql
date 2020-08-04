INSERT INTO `author` (`author_id`, `name`) VALUES (1,'toti');
INSERT INTO `author` (`author_id`, `name`) VALUES (2,'perllo');
INSERT INTO `author` (`author_id`, `name`) VALUES (3,'xavi');
INSERT INTO `author` (`author_id`, `name`) VALUES (4,'puta');
INSERT INTO `author` (`author_id`, `name`) VALUES (5,'vamos');
INSERT INTO `author` (`author_id`, `name`) VALUES (6,'sedc');
INSERT INTO `author` (`author_id`, `name`) VALUES (7,'shesh');
INSERT INTO `author` (`author_id`, `name`) VALUES (8,'deki');
INSERT INTO `author` (`author_id`, `name`) VALUES (9,'zozo');
INSERT INTO `author` (`author_id`, `name`) VALUES (10,'fofo');


INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (1,1);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (1,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (2,1);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (2,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (3,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (4,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (4,3);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (4,8);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (5,1);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (5,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (5,8);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (5,9);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (7,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (7,3);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (8,3);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (9,1);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (9,4);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (10,2);
INSERT INTO `author_has_book` (`author_author_id`, `book_book_ID`) VALUES (10,4);


INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (1,'aaaa',230,189,100,'brand new','2020-04-03',464,'Store');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (2,'bbbb',400,240,200,'almost new','2009-04-03',436,'Store');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (3,'cccc',100,175,30,'good','2001-08-03',467,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (4,'dddd',234,190,40,'medium','2010-04-03',4573,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (5,'eeee',311,150,55,'rickety','2020-01-01',2626,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (6,'ffff',237,250,35,'brand new','2020-12-03',2462,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (7,'gggg',568,220,48,'almost new','2016-04-12',645,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (8,'tttt',987,300,33,'good','2018-04-09',646,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (9,'qqqq',378,200,29,'medium','2014-12-12',4367,'Store');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (10,'vvvv',923,120,178,'rickety','2005-12-13',368,'Store');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (11,'aaaa',230,189,100,'brand new','2020-04-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (12,'bbbbb',230,189,100,'brand new','2020-05-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (13,'bb',230,189,100,'brand new','2020-06-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (14,'bbbb',230,189,100,'brand new','2020-07-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (15,'aaaa',230,189,100,'brand new','2020-08-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (16,'b',230,189,100,'brand new','2020-09-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (17,'b',230,189,100,'brand new','2020-10-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (18,'b',230,189,100,'brand new','2020-11-03',464,'Stock Room');
INSERT INTO `book` (`book_ID`, `title`, `pages_number`, `weight`, `quantity_in_stock`, `book status`, `date`, `bookprice`, `StockPlace`) VALUES (19,'b',230,189,100,'brand new','2020-12-03',464,'Stock Room');



INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (1,1);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (2,2);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (3,5);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (3,8);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (4,4);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (5,8);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (6,6);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (7,7);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (8,10);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (9,3);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (9,9);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (10,10);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (11,6);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (12,2);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (13,4);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (14,3);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (15,2);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (16,6);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (17,3);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (18,4);
INSERT INTO `book_has_suplier` (`book_book_id`, `suplier_suplier_id`) VALUES (19,9);


INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (1,23,1,2,'2020-01-03','ordered',1,7,124);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (2,32,2,1,'2020-10-03','cancelled',2,5,5363);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (3,55,3,2,'2020-02-23','delivered',3,2,363);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (4,64,4,3,'2020-03-17','delivered',4,7,425);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (5,21,5,4,'2020-07-03','ordered',5,6,262);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (6,1,4,5,'2019-06-06','cancelled',6,5,264);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (7,5,3,4,'2020-02-03','ordered',7,4,242);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (8,3,5,6,'2020-03-03','delivered',8,3,264);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (9,2,6,5,'2020-04-03','cancelled',9,2,246);
INSERT INTO `booksuplierorder` (`OrderID`, `amount`, `book_id`, `suplier_id`, `Order_Date`, `Order_Status`, `book_book_id`, `suplier_suplier_id`, `total_payment`) VALUES (10,7,7,4,'2020-05-03','ordered',10,1,8888);


INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (1,'kase','043215','1990-04-06','0526548714','barcelona','lobe');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (2,'lolo','025478','1998-03-12','0524186521','roma','zobe');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (3,'moze','021547','1987-06-24','0235874521','paris','ere');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (4,'foze','021896','1963-04-08','0125478963','berlin','kadeb');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (5,'toto','026871','1988-09-12','0231456985','london','fatha');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (6,'gege','0325874','1999-02-01','0222222254','tel aviv','tezo');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (7,'lili','021478','2000-12-11','0236585555','haifa','haajs');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (8,'lala','021563','1990-12-07','0123658554','umm el fahem','fafafah');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (9,'mame','014852','1982-10-18','0147888895','gaza','noga');
INSERT INTO `customer` (`customer_id`, `first_name`, `landphone`, `date`, `phonenumber`, `address`, `last_name`) VALUES (10,'bore','032147','1955-08-05','0326587452','los angelos','fofo');

INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (10,50.00,1,1);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (11,30.00,2,2);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (2,53.00,3,3);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (4,59.00,4,4);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (6,33.00,5,5);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (7,70.00,6,6);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (75,80.00,7,7);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (22,5.00,8,1);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (50,60.00,9,4);
INSERT INTO `order_books` (`quantity`, `unit_price`, `book_book_ID`, `orders_orderID`) VALUES (66,30.00,10,2);


INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (1,'2020-12-13','asde','2020-12-13',500,'2020-12-11',1,'ordered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (2,'2020-11-15','duasdoe','2020-11-12',200,'2020-11-11',2,'ordered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (3,'2020-02-09','nonono','2020-02-02',100,'2020-02-01',3,'waiting for payment');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (4,'2020-04-13','yesyesyes','2020-04-06',400,'2020-04-05',4,'delivered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (5,'2020-08-19','perfect','2020-08-01',500,'2020-07-30',5,'delivered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (6,'2020-08-07','nice','2020-08-03',600,'2020-08-01',3,'cancelled');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (7,'2020-06-04','so good','2020-05-30',1000,'2020-05-29',2,'cancelled');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (8,'2020-08-19','perfect','2020-08-01',500,'2020-07-30',5,'ordered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (9,'2010-08-07','nice','2020-08-03',600,'2020-08-01',3,'waiting for payment');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (10,'2020-06-04','so good','2020-05-30',1000,'2020-05-29',2,'ordered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (11,'2020-08-06','perfect','2020-08-19',500,'2020-08-06',5,'waiting for payment');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (12,'2020-08-07','nice','2020-08-20',600,'2020-08-08',3,'ordered');
INSERT INTO `orders` (`orderID`, `orderdate`, `comments`, `shipped_date`, `payment_total`, `payment_date`, `shippers_shipper_id`, `OrderStatus`) VALUES (13,'2020-06-04','so good','2020-06-18',1000,'2020-06-04',2,'waiting for payment');


INSERT INTO `payment_method` (`payment_method_id`, `name`) VALUES (1,'Credit Card');
INSERT INTO `payment_method` (`payment_method_id`, `name`) VALUES (2,'bit');
INSERT INTO `payment_method` (`payment_method_id`, `name`) VALUES (3,'bank transfer');

INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (1,'jela',2001);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (2,'lola',1990);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (3,'fsh',1995);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (4,'bala',2019);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (5,'lelo',2010);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (6,'huhu',2009);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (7,'gst',2008);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (8,'jelo',2011);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (9,'pelo',2012);
INSERT INTO `publisher` (`publisher_id`, `name`, `publish_year`) VALUES (10,'gelp',2015);

INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (1,2);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (2,3);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (2,6);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (3,3);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (3,8);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (4,3);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (4,5);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (4,7);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (6,3);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (6,4);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (8,3);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (8,6);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (8,9);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (9,8);
INSERT INTO `publisher_has_book` (`publisher_publisher_id`, `book_book_ID`) VALUES (9,9);



INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (1,'lala','irem','arad','052524',230,10000);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (2,'ighi','olan','haifa','021365',120,5000);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (3,'moshe','kero','amman','0258987',170,5700);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (4,'lenda','fsa','makka','0215475',200,8000);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (5,'emma','rabo','barcelona','022214',50,1000);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (6,'immer','robe','liverpool','023698',70,1200);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (7,'amer','jelo','manchester','014540',210,8200);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (8,'coke','arma','madrid','012485',100,2000);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (9,'kola','merenda','tel aviv','032589',150,6000);
INSERT INTO `sales_man` (`id`, `first_name`, `last_name`, `address`, `phone_number`, `works_hours_per_mounth`, `salary`) VALUES (10,'pepsi','monster','keriat shmone','025874',180,4758);


INSERT INTO `shippers` (`shipper_id`, `name`, `shipping_method_shipping_method_id`) VALUES (1,'israel post',1);
INSERT INTO `shippers` (`shipper_id`, `name`, `shipping_method_shipping_method_id`) VALUES (2,'Express Post',4);
INSERT INTO `shippers` (`shipper_id`, `name`, `shipping_method_shipping_method_id`) VALUES (3,'Express Post',5);
INSERT INTO `shippers` (`shipper_id`, `name`, `shipping_method_shipping_method_id`) VALUES (4,'israel post',2);
INSERT INTO `shippers` (`shipper_id`, `name`, `shipping_method_shipping_method_id`) VALUES (5,'israel post',3);

INSERT INTO `shipping_method` (`shipping_method_id`, `name`, `price`) VALUES (1,'Courier service',20);
INSERT INTO `shipping_method` (`shipping_method_id`, `name`, `price`) VALUES (2,'Registered mail',30);
INSERT INTO `shipping_method` (`shipping_method_id`, `name`, `price`) VALUES (3,'Fast courier mail',40);
INSERT INTO `shipping_method` (`shipping_method_id`, `name`, `price`) VALUES (4,'Collection from collection point',50);
INSERT INTO `shipping_method` (`shipping_method_id`, `name`, `price`) VALUES (5,'Courier to the house',60);

INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-01-01',10,50,70,68,20,30,10,200,'30',8,1,1,488);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-11-01',10,50,70,68,20,30,10,200,'30',0,2,2,488);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-02-01',10,50,70,68,20,30,10,200,'50',1,3,3,508);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-12-01',10,50,70,68,20,30,10,200,'10',2,4,4,468);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-03-01',10,50,70,68,20,30,10,200,'70',3,5,5,528);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-10-01',10,50,70,68,20,30,10,200,'70',5,6,6,528);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-04-01',10,50,70,68,20,30,10,200,'50',7,7,7,508);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-05-01',10,50,70,68,20,30,10,200,'56',8,8,8,514);
INSERT INTO `store_payment` (`month`, `phone_number`, `land_line_number`, `shipment`, `tax`, `water_tax`, `electric_pwer_tax`, `service_charge`, `workers_salary`, `others`, `transaction_id`, `booksuplierorder_OrderID`, `StorePaymentID`, `total_payment_store`) VALUES ('2020-07-02',10,50,70,68,20,30,10,200,'75',6,10,10,496);


INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (1,'jaje','3456789012');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (2,'bata','0987654321');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (3,'kaka','22345678901');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (4,'papa','9876543210');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (5,'keke','0123456789');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (6,'koko','7483920165');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (7,'messi','0123948756');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (8,'xavi','6574839201');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (9,'kere','0987654321');
INSERT INTO `suplier` (`suplier_id`, `Suplier_name`, `Suplier_phone`) VALUES (10,'soso','1234567890');

INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (1,'2020-01-05','12',7900,1,1,2,1);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (2,'2020-04-09','21',5970,2,2,8,2);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (3,'2020-12-22','22',8640,3,3,4,3);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (4,'2020-11-09','43',9897,3,4,8,4);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (5,'2020-10-19','23',5679,2,9,8,5);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (6,'2020-09-07','64',7868,1,8,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (7,'2020-09-19','23',5673,2,13,8,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (8,'2020-09-07','64',60032,1,12,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (9,'2020-09-03','64',12,1,11,8,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (10,'2020-09-05','64',6003,1,6,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (11,'2018-09-05','12',79044,1,1,2,1);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (12,'2019-08-09','21',5974,2,2,1,2);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (13,'2008-11-22','22',8644,3,3,4,3);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (14,'2015-12-09','43',45733,3,4,3,4);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (15,'2002-03-19','23',56722,2,5,6,5);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (16,'2001-07-07','64',6005,1,6,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (17,'2010-06-19','23',5675,2,5,6,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (18,'1990-09-07','64',6004,1,6,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (19,'2006-09-03','64',6003,1,6,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (20,'1974-09-05','64',6002,1,6,5,6);
INSERT INTO `transaction` (`id`, `date`, `purchased_books`, `total_payment`, `payment_method_payment_method_id`, `orders_orderID`, `customer_customer_id`, `sales_man_id`) VALUES (21,'2020-02-01','43',12345,2,5,3,6);

INSERT INTO `translator` (`translator_id`, `name`) VALUES (1,'ahmad');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (2,'sameer');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (3,'najeeb');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (4,'popo');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (5,'etamar');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (6,'dede');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (7,'soso');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (8,'koko');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (9,'lele');
INSERT INTO `translator` (`translator_id`, `name`) VALUES (10,'yoye');


INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (1,1);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (1,2);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (1,5);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (2,1);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (2,2);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (3,8);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (4,1);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (5,1);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (5,2);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (6,9);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (7,6);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (7,7);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (8,8);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (8,10);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (9,9);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (10,6);
INSERT INTO `translator_has_book` (`translator_translator_id`, `book_book_ID`) VALUES (10,7);


INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (1,_binary '1',_binary '0','2000-02-09','2020-07-05',1);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (2,_binary '0',_binary '1','2001-02-09',NULL,3);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (3,_binary '0',_binary '1','1990-02-09',NULL,4);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (4,_binary '1',_binary '0','2010-02-09','2020-07-15',5);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (5,_binary '0',_binary '1','2000-02-09',NULL,2);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (6,_binary '1',_binary '0','2000-02-09','2020-07-05',1);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (7,_binary '0',_binary '1','2001-02-09',NULL,3);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (8,_binary '0',_binary '1','1990-02-09',NULL,4);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (9,_binary '1',_binary '0','2010-02-09','2020-07-15',5);
INSERT INTO `worker_update` (`id`, `past_worker`, `present_worker`, `start_work_date`, `end_work_date`, `sales_man_id`) VALUES (10,_binary '0',_binary '1','2000-02-09',NULL,2);




