
#include "database.h"
MySQL :: MySQL()
{
    connect = mysql_init(NULL);
    if ( !connect )
    {
        cout << "MySQL Initialization Failed";
    }   

    connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0,NULL,0);
    
    if ( connect )
    {
        cout << "Connection Succeeded\n";
    }

    else
    {
        cout << "Connection Failed\n";
    }
}

MySQL :: ~MySQL()
{
    mysql_close (connect);
}



