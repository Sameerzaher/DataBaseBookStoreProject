#include "header.h"
#include "database-detail.h"
class MySQL
{
    protected:
        /** MySQL connectivity Variables */
        MYSQL *connect;
        MYSQL_RES *res_set;
        MYSQL_ROW row;
        unsigned int i;
    public:
        MySQL();
        void commandList();
        //1
        bool isInStock(string BookName);
        //2
        void printTheOldestCustomer();
        //3
        void printTheOldestBook();
        //4
        void printOrders();
        //5
        void booksBought(string bookName);
        //6
        void BestAutor(string StartDate, string EndDate);
        //7
        void printTop3Customers();
        //8
        void printBookWithTheMostTranslatorsInStock();
        //9
        void printsTheHistoryOfOrdersForCustomerOrdersByOrderDate(string CustomerName);
        //10
        void PersonsOrderHistory(string first_name,string last_name);
        //11
        void OrderCostByOrderID(int orderID);
        //12
        void CheakDividedordersGetByCustomerName(int CustomerID);
        //13
        void CheakOrderStatusByID(int orderID);
        //14
        void PrintSumOfOrdersThatShippedByXpressPost();
        //15
        void TotalPaymentthThatTransferedByBitApp();
        //16
        void printsWhichDealsInLast12MonthsthatBroughtMoreProfitsConToTheAvgProfit(string StartDate,string EndDate);
        //17
        void printsNumberOfOrdersInTheLast12MonthsthatDoneByIsraelPostOrXpressPost();
        //18
        void printOrderDetailsWithMinTwoEditionsBooks();
        //19
        void printCustomerDetailsthatDontHaveOrderInTheLast24Months();
        //20
        void printCustomerList14DaysLeft();
        //21
        void printListNumberOfBooksThatInStockRoomPerMounth();
        //22a
        void printStoreOrderBookAmountAndThePriceOfThemBetweenTwoDates(string StartDate,string EndDate);
        //22b
        void printStoreProfitPerMonthGetByMonth(string Date);
        //23
        void printAvgYearlyTransactionsPerMonth();
        //24
        void printSalaryOfSpecificSalesManGetByID(int SalesmanID);
        //25
        void MostTransactionsBySalesManBettwenTwoDates(string StartDate,string EndDate);
        ~MySQL();
};
