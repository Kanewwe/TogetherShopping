using System;


namespace TOGETHERSHOPPING.Models.Helper
{
    public class ConnectionHelper
    {
        public static string GetSQLConnectionString(){
            return "Server=127.0.0.1,1433;Database=Together;User ID=sa;Password=yourStrong(!)Password;";
        }

    }

}