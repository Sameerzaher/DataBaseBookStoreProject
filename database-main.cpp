#include<iostream>
#include "database.h"
#include"database-detail.h"
#include <string>
#include <conio.h>
using namespace std;
int main(int argc, char* argv[])
{
    MySQL Mysql;	
		Mysql.commandList();
		while (1)
		{
			int cmdNum;
			int num,d1;
			string name,d2,d3,first_name,last_name;
			cout << " Please Choose command number:";
			cin >> cmdNum;
			if (cin.fail()) {
				cin.clear();
				cin.ignore();
			}
			cout << endl;
			switch (cmdNum)
			{
			case 0:
				Mysql.commandList();
				break;
			case 1:
				cout << "Enter book name:";
				cin.ignore();
				getline(cin,name);
				Mysql.isInStock(name);
				break;
			case 2:
				Mysql.printTheOldestCustomer();
				break;
			case 3:
				Mysql.printTheOldestBook();
				break;
			case 4:
				Mysql.printOrders();
				break;
			case 5:
				cout << "enter book name:";
				cin.ignore();
				getline(cin, name);
				Mysql.booksBought(name);
				break;
			case 6:
				cout << "Enter start date in format yyyy-mm-dd:";
				cin.ignore();
				cin >> d3;
				cout << "Enter end date in format yyyy-mm-dd:";
				cin.ignore();
				cin >> d2;
				Mysql.BestAutor(d3, d2); 
				break;
			case 7:
				Mysql.printTop3Customers();
				break;
			case 8:
				Mysql.printBookWithTheMostTranslatorsInStock();
				break;
			case 9:
				cout << "Enter name:";
				cin.ignore();
				getline(cin, name);
				Mysql.printsTheHistoryOfOrdersForCustomerOrdersByOrderDate(name);
				getchar();
				break;
			case 10:
				cout << "enter frist name:" << endl;
				cin.ignore();
				getline(cin,first_name);
				cout << "enter last name:" << endl;
				getline(cin,last_name);
				Mysql.PersonsOrderHistory(first_name,last_name);
				getchar();
				break;
			case 11:
				cout << "Enter Order ID: ";
				cin >> d1;
				Mysql.OrderCostByOrderID(d1);
				break;
			case 12:
		
				cout << "Enter Customer ID: ";
				cin >> d1;
				Mysql.CheakDividedordersGetByCustomerName(d1);
				break;
			case 13:
				cout << "Enter Order ID: ";
				cin >> d1;
				Mysql.CheakOrderStatusByID(d1);
				break;
			case 14:
				Mysql.PrintSumOfOrdersThatShippedByXpressPost();
				break;
			case 15:
				Mysql.TotalPaymentthThatTransferedByBitApp();
				break;
			case 16:
				cout << "Enter start date in format yyyy-mm-dd:";
				cin >> d3;
				cout << "Enter End date in format yyyy-mm-dd";
				cin >> d2;
				Mysql.printsWhichDealsInLast12MonthsthatBroughtMoreProfitsConToTheAvgProfit(d3, d2);
				break;
			case 17:
				Mysql.printsNumberOfOrdersInTheLast12MonthsthatDoneByIsraelPostOrXpressPost();
				break;
			case 18:
				Mysql.printOrderDetailsWithMinTwoEditionsBooks();
				break;
			case 19:
				Mysql.printCustomerDetailsthatDontHaveOrderInTheLast24Months();
				break;
			case 20:
				Mysql.printCustomerList14DaysLeft();
				break;
			case 21:
				Mysql.printListNumberOfBooksThatInStockRoomPerMounth();
				break;
			case 22:
				cout << "Enter start date in format yyyy-mm-dd:";
				cin >> d3;
				cin.ignore();
				cout << "Enter end date in format yyyy-mm-dd:";
				cin >> d2;
				cin.ignore();
				Mysql.printStoreOrderBookAmountAndThePriceOfThemBetweenTwoDates(d3, d2);
				break;
			case 23:
				cout << "Enter date in format yyyy-mm-dd:";
				cin >> d3;
				Mysql.printStoreProfitPerMonthGetByMonth(d3);
				break;
			case 24:
				Mysql.printAvgYearlyTransactionsPerMonth();
				break;
			case 25:
				cout << "enter sales man id:";
				cin >> d1;
				Mysql.printSalaryOfSpecificSalesManGetByID(d1);
				break;
			case 26:
				cout << "Enter start date in format yyyy-mm-dd:"<<endl;
				cin >> d3;
				cout << "Enter end date in format yyyy-mm-dd:" << endl;
				cin >> d2;
				Mysql.MostTransactionsBySalesManBettwenTwoDates(d3, d2);
				break;
			default:
				cout << "Invalid commmand number!" << endl;
				break;
			}

			cout << endl;
		}

		return 0;
	
    return 0;
}
