#include<iostream>
#include "database.h"
#include<string>
#include <mysql.h>
using namespace std;
void MySQL::commandList()
{
	cout << "List of commands:" << endl
		<< "0. Command manual" << endl
		<< "1. Check if book X is in stock" << endl
		<< "2. print The Oldest Customer" << endl
		<< "3. print The Oldest Book" << endl
		<< "4. Print list of all Orders" << endl
		<< "5. Amount of book X" << endl
		<< "6. print the most common autor between the specified dates" << endl
		<< "7. print top 3 customers that bought most books ever" << endl
		<< "8. print the book that have biggist number of translators in stock" << endl
		<< "9. print the history of orders for customer X" << endl
		<< "10. print the history of orders for person X" << endl
		<< "11. calculate order cost by order id" << endl
		<< "12. have ever customer x divided books purchasing to a number of deliveries, if he had, what are the data of the deliveries" << endl
		<< "13. Cheak Order Status By OrderID" << endl
		<< "14. print the amount of the orders that shipped by Xpress Post" << endl
		<< "15. prints the total payment that transfered by bit app " << endl
		<< "16. print what deals were made in the last 12 months, which brought more profits considers to the average profit in the same 12 months" << endl
		<< "17. prints how many orders that shipped by israel post or xpress post in the last 12 months" << endl
		<< "18. prints the details of the orders that contain two eddition books in them" << endl
		<< "19. prints all the details of the customer that ordered books in the past but not order in the last 24 mounths" << endl
		<< "20. prints the name of the customers that order books and the store didnt call them more than 14 days" << endl
		<< "21. prints the number of the books that in the stock room per mounth" << endl
		<< "22. (22a) prints the store book order list that order bettwen the specified dates" << endl
		<< "23. (22b) prints store profit per month " << endl
		<< "24. (23) print the yearly avg transactions per month" << endl
		<< "25. (24) print the salary of the specific sales man " << endl
		<< "26. (25) prints the name of the sales man that make the most transaction between two dates" << endl;
}
//1 its ok
bool MySQL::isInStock(string BookName)
{
	string sql = "SELECT * FROM book where title='"+BookName+"'";
	const char* q;
	q = sql.c_str();
	mysql_query(connect,q);
	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	if (mysql_fetch_row(res_set))
		return puts("Yes,The Book is In the Stock");
	return puts("No,The Book isn't In the Stock");
}
//2 its ok 
void MySQL::printTheOldestCustomer()
{
	
		/** Add MySQL Query */
		mysql_query(connect, "SELECT first_name,min(date) FROM customer");
		i = 0;
		res_set = mysql_store_result(connect);
		unsigned int numrows = mysql_num_rows(res_set);
		cout << " the oldest customer is " << endl;
		while (((row = mysql_fetch_row(res_set)) != NULL))
		{
			cout << row[i] << endl;
			cout << row[i + 1] << endl;
		}
}
//3 its ok 
void MySQL::printTheOldestBook()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT title,min(date) FROM book;");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Book Title" <<"->"<< "Date Arrive" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i]<<"->"<< row[i+1]<< endl;
	}


}
//4 its ok
void MySQL::printOrders()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT orders.orderID, orders.orderdate, orders.shipped_date, orders.payment_total, orders.payment_date, shippers.name as shipper_name, orders.OrderStatus  FROM orders inner join shippers on orders.shippers_shipper_id=shippers.shipper_id ORDER BY orders.orderdate DESC;");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "orderID"<<"->"<<"Order Date"<<"->"<<"Shipped Date"<<"->"<<"Payment Total"<<"->"<<"Payment Date"<<"->"<<"Shipper Name"<<"->"<<"Order Status"<<endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<< row[i + 1] << "->" << row[i + 2] << "->" << row[i + 3] << "->" << row[i + 4] << "->" << row[i + 5] << "->" << row[i+6] << endl;
	}


}
//5 its ok
void MySQL::booksBought(string BookName)
{
	string sql = "SELECT SUM(bb.quantity) AS quantity FROM (((transaction t INNER JOIN orders aa ON aa.OrderID =t.orders_orderID) INNER JOIN order_books bb ON bb.orders_orderID = aa.orderID) INNER JOIN book b ON b.book_id = bb.book_book_id) WHERE b.title ='"+ BookName+"'";
	const char* q;
	q = sql.c_str();
	mysql_query(connect, q);
	i = 0; 
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	cout << "Quantity" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}
	
}
//6 its ok 
void MySQL::BestAutor(string StartDate,string EndDate)
{
	string sql = "select author.name from book inner join order_books on book.book_ID = order_books.book_book_ID inner join orders on order_books.orders_orderID = orders.orderID inner join author_has_book on author_has_book.book_book_ID = book.book_ID inner join author on author_has_book.author_author_id = author.author_id inner join transaction on orders.orderID = transaction.orders_orderID WHERE  orders.orderdate >= '"+ StartDate+ "' or orders.orderdate <= '"+EndDate+"' GROUP BY author_has_book.author_author_id HAVING COUNT(author_has_book.author_author_id) > 1 order by COUNT(author_has_book.author_author_id) desc limit 1";
	const char* q;
	q = sql.c_str();
	mysql_query(connect, q);

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Name" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}
}
//7 its ok 
void MySQL::printTop3Customers()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT customer.first_name, sum(transaction.purchased_books) as total_books FROM customer INNER JOIN transaction ON customer.customer_id = transaction.customer_customer_id group by transaction.customer_customer_id  order by total_books desc limit 3;");
	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "customer name"<< "->"<< "book amount" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<<row[i+1] << endl;
	}

}
//8 its ok
void MySQL::printBookWithTheMostTranslatorsInStock()
{
	/** Add MySQL Query */
	mysql_query(connect, "select book.title as book_title_with_the_most_translators from book inner join translator_has_book on book.book_ID=translator_has_book.book_book_ID inner join translator on translator_has_book.translator_translator_id= translator.translator_id where book.quantity_in_stock>0 limit 1");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "book_title_with_the_most_translators" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}

}
//9 its ok 
void MySQL::printsTheHistoryOfOrdersForCustomerOrdersByOrderDate(string CustomerName)
{
	
	string sql = "select customer.first_name, transaction.date, book.title, order_books.unit_price,payment_method.name as payment_method_name from book inner join order_books on book.book_ID= order_books.book_book_ID inner join orders on order_books.orders_orderID= orders.orderID inner join transaction ON orders.orderID = transaction.orders_orderID inner join customer on transaction.customer_customer_id=customer.customer_id inner join payment_method on transaction.payment_method_payment_method_id = payment_method.payment_method_id where customer.first_name ='" + CustomerName + "'";
	const char* q;
	q = sql.c_str();

	mysql_query(connect, q);
	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "First Name"<<"->"<<"Date"<<"->"<<"Book Title"<<"->"<<"Unit Price"<<"->"<<"Payment Method Name" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<< row[i+1]<<"->"<< row[i+2]<<"->"<<row[i+3]<<"->"<<row[i+4] << endl;
	}


}
//10 its ok  
void MySQL::PersonsOrderHistory(string first_name,string last_name)
{
	string sql = "select book.title, order_books.unit_price, orders.orderdate, orders.OrderStatus  from book inner join order_books on book.book_ID=order_books.book_book_ID inner join orders on order_books.orders_orderID= orders.orderID inner join transaction on orders.orderID = transaction.orders_orderID inner join customer on transaction.customer_customer_id = customer.customer_id WHERE  customer.first_name ='"+first_name+"'and customer.last_name = '"+last_name+"'ORDER BY orderdate desc";
	
	const char* q;
	q = sql.c_str();
	mysql_query(connect,q);

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "title -> unit_price -> orderdate -> orderStatus" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << "->" << row[i+1] << "->" << row[i+2] << "->" << row[i+3] <<endl;
	}
}
//11 its ok 
void MySQL::OrderCostByOrderID(int orderID)
{
	string sql = "select orderID, (order_books.quantity* shipping_method.price* book.weight) as price from orders inner join shippers on shippers.shipper_id= orders.shippers_shipper_id inner join shipping_method on shipping_method.shipping_method_id= shippers.shipping_method_shipping_method_id inner join order_books on order_books.orders_orderID= orders.orderID inner join book on book.book_ID= order_books.book_book_ID where orders.orderID="+to_string(orderID);

	const char* q;
	q = sql.c_str();

	mysql_query(connect, q);

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "OrderID"<<"->"<<"Price" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<< row[i+1]<< endl;
	}
}
//12 its ok
void MySQL::CheakDividedordersGetByCustomerName(int CustomerID)
{	
	string sql = "select c.first_name, c.last_name, b.title, ob.quantity, tran.orders_orderID, o.orderdate  from book b inner join order_books ob on b.book_ID =  ob.book_book_ID inner join orders o on ob.orders_orderID = o.orderID inner join transaction tran on o.orderID =tran.orders_orderID inner join customer c on tran.customer_customer_id = c.customer_id where c.customer_id=" + to_string(CustomerID);
	cout << sql << endl;
	const char* q;
	q = sql.c_str();

	mysql_query(connect, q);

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);
	cout << "first_name -> last_name -> title -> quantity -> orders_orderID -> orderdate" << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << "->" << row[i+1] << "->" << row[i+2] << "->" << row[i+3] << "->" << row[i+4] << "->" << row[i+5]<< endl;
	}
}
//13 its ok
void MySQL::CheakOrderStatusByID(int orderID)
{
	string sql = "SELECT OrderStatus FROM orders WHERE OrderID=" + to_string(orderID);
	const char* q;
	q = sql.c_str();

	mysql_query(connect, q);


	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Order Status" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}
	
}
//14 its ok 
void MySQL::PrintSumOfOrdersThatShippedByXpressPost()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT COUNT(OrderID) as count_of_orders_shipped_by_xpress FROM orders WHERE shippers_shipper_id=4 OR shippers_shipper_id=5");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "count_of_orders_shipped_by_xpress" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}

}
//15 its ok 
void MySQL::TotalPaymentthThatTransferedByBitApp()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT SUM(total_payment) AS total from transaction where payment_method_payment_method_id=2");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Total" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}

}
//16 its ok
void MySQL::printsWhichDealsInLast12MonthsthatBroughtMoreProfitsConToTheAvgProfit(string StartDate,string EndDate)
{
	string sql = "SELECT extract(month FROM date) month, count(*) id, SUM(total_payment) income, sum(sp.total_payment_store) outcome, sum(total_payment - sp.total_payment_store) Profit, avg(total_payment - sp.total_payment_store) avg_profit FROM transaction inner join store_payment sp WHERE date BETWEEN '"+ StartDate+"' AND '"+ EndDate+"' GROUP BY extract(month FROM date) order by sum(total_payment - sp.total_payment_store) desc";
	const char* q;

	q = sql.c_str();
	mysql_query(connect, q);
	

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Mounth"<<"->"<<"id"<<"->"<<"income"<<"->"<<"outcome"<<"->"<<"Profit"<<"->"<<"avg_profit" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << "->" << row[i + 1] << "->" << row[i + 2] << "->" << row[i + 3] << "->" << row[i + 4] << "->" << row[i+5]<< endl;
	}

}
//17 its ok 
void MySQL::printsNumberOfOrdersInTheLast12MonthsthatDoneByIsraelPostOrXpressPost()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT sum(orders.shippers_shipper_id =3 ) + sum(orders.shippers_shipper_id=2)  as expressPost ,sum(orders.shippers_shipper_id =1) + sum(orders.shippers_shipper_id=4) + sum(orders.shippers_shipper_id=5) as IsraelPost FROM orders inner join shippers on shippers.shipper_id = orders.shippers_shipper_id and orderdate >= '2019-08-07'");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Express Post"<<"->"<<"Israel Post" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<< row[i+1]<< endl;
	}

}
//18 its ok 
void MySQL::printOrderDetailsWithMinTwoEditionsBooks()
{
	/** Add MySQL Query */
	mysql_query(connect, "select b.book_ID, o.orderID, o.orderdate, o.OrderStatus, o.comments, o.shipped_date, o.payment_date, o.payment_total, p.name, p.publish_year, COUNT(b.book_id) as book_Edition from book b inner join order_books ob on b.book_ID= ob.book_book_ID inner join orders o on ob.orders_orderID= o.orderID inner join publisher_has_book pb on b.book_ID= pb.book_book_ID inner join publisher p on pb.publisher_publisher_id= p.publisher_id group by b.book_ID HAVING COUNT(b.book_ID) > 1");
	i = 0;
	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Book ID"<<"->" << "Order ID" << "->" << "Order Date" << "->" << "Order Status" << "->" << "Comments" << "->" << "Shipped Date" << "->" << "Payment Date" << "->" << "Payment Total" << "->" << "Name" << "->" << "Publish Year" << "->" << "Publish Edition" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << "->" << row[i + 1] << "->" << row[i + 2] << "->" << row[i + 3] << "->" << row[i + 4] << "->" << row[i + 5] << "->" << row[i + 6] << "->" << row[i + 7] << "->" << row[i + 8] << "->" << row[i + 9] << "->" << row[i + 10]<< endl;
	}

}
//19 its ok 
void MySQL::printCustomerDetailsthatDontHaveOrderInTheLast24Months()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT customer.customer_id,customer.first_name,customer.landphone,customer.date,customer.phonenumber,customer.address,customer.last_name FROM customer INNER JOIN transaction ON customer.customer_id = transaction.customer_customer_id where transaction.date <= '2018-09-05'");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Customer ID"<<"->"<< "First Name" << "->" << "Land Phone" << "->" << "Date" << "->" << "Phone Number" << "->" << "Address" << "->" << "Last Name" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << "->" << row[i + 1] << "->" << row[i + 2] << "->" << row[i + 3] << "->" << row[i + 4] << "->" << row[i + 5] << "->" << row[i + 6] << endl;
	}

}
//20 its ok 
void MySQL::printCustomerList14DaysLeft()
{
	/** Add MySQL Query */
	mysql_query(connect, "select customer.first_name from orders inner join transaction on orders.orderID = transaction.orders_orderID inner join customer on transaction.customer_customer_id = customer.customer_id where orders.orderdate<orders.shipped_date;");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "First Name" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << endl;
	}

}
//21 its ok 
void MySQL::printListNumberOfBooksThatInStockRoomPerMounth()
{
	mysql_query(connect, "select month(date) as Month , count(*) as booksPerMonth from book WHERE     year(date) = '2020'  group by month(date)");
	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Month"<<"->"<<"Books Per Month"<< endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<<row[i+1]<< endl;
	}

}
//22a its ok
void MySQL::printStoreOrderBookAmountAndThePriceOfThemBetweenTwoDates(string StartDate,string EndDate)
{
	string sql = "SELECT SUM(o.amount * b.bookprice) AS OrdersPrice ,count(o.amount) as NumberOfBooks FROM booksuplierorder o INNER JOIN book b ON o.book_id = b.book_id WHERE Order_Date <='"+ StartDate+ "' AND Order_Date >='"+EndDate+"'";
	const char* q;
	q = sql.c_str();

	mysql_query(connect, q);

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "OrdersPrice" <<"->"<<"Number Of Books"<< endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<<row[i+1]<< endl;
	}

}
//22b its ok
void MySQL::printStoreProfitPerMonthGetByMonth(string Date)
{
	string sql = "SELECT store_payment.month, (transaction.total_payment - (booksuplierorder.total_payment+store_payment.phone_number+store_payment.land_line_number+store_payment.shipment+store_payment.tax+store_payment.water_tax+store_payment.electric_pwer_tax+store_payment.service_charge+store_payment.others-store_payment.workers_salary)) as total FROM store_payment inner join transaction on store_payment.transaction_id = transaction.id inner join booksuplierorder on store_payment.booksuplierorder_OrderID = booksuplierorder.OrderID where store_payment.month ='" + Date + "'" ;
	const char* q;
	q = sql.c_str();
	mysql_query(connect, q);
	
	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Month"<<"->"<<"Total"<< endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] <<"->"<< row[i+1]<< endl;
	}

}
//23 its ok 
void MySQL::printAvgYearlyTransactionsPerMonth()
{
	/** Add MySQL Query */
	mysql_query(connect, "SELECT extract(month FROM date) month, count(*) id, SUM(total_payment) income, sum(total_payment) / count(distinct id) as AvgPerMonth FROM transaction WHERE date BETWEEN '2020-01-01' AND '2020-12-31' GROUP BY extract(month FROM date);");

	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "Month"<<"->"<<"ID"<<"->"<<"income"<<"->"<<"Avg Per Month" << endl;

	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		cout << row[i] << "->" << row[i + 1] << "->" << row[i + 2] << "->" << row[i + 3] << endl;
	}

	
}
//24 its ok 
void MySQL::printSalaryOfSpecificSalesManGetByID(int SalesmanID)
{
	string sql = "SELECT first_name, salary FROM sales_man where id = " + to_string(SalesmanID);


	const char* q;

	q = sql.c_str();

	mysql_query(connect, q);

	i = 0;
	res_set = mysql_store_result(connect);
	unsigned int numrows = mysql_num_rows(res_set);

	cout << "First name"<<"->"<<"Salary" << endl;

	while (((row = mysql_fetch_row(res_set))))
	{
		cout << row[i] <<"->"<< row[i+1]<< endl;
	}
	
			
}
//25 itss ok 
void MySQL::MostTransactionsBySalesManBettwenTwoDates(string StartDate, string EndDate)
{
	string sql = "SELECT sales_man.first_name FROM transaction inner join sales_man on transaction.sales_man_id= sales_man.id where date >='"+StartDate+"' AND date <='"+EndDate+"' limit 1";
	const char* q;
	q = sql.c_str();
	mysql_query(connect, q);
	char sqlquery[1024];
	sprintf(sqlquery, "SELECT sales_man.first_name FROM transaction inner join sales_man on transaction.sales_man_id= sales_man.id where date >='StartDate' AND date <='EndDate' limit 1");
	mysql_query(connect, sqlquery);
	i = 0;

	res_set = mysql_store_result(connect);

	unsigned int numrows = mysql_num_rows(res_set);

	cout << "First name" << endl;

	while (((row = mysql_fetch_row(res_set))))
	{
		cout << row[i] << endl;
	}
	
}
