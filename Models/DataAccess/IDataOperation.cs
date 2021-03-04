using System;
using System.Collections.Generic;

namespace TOGETHERSHOPPING.Models.DataAccess
{
    public interface IDataOperation
    {
        int Execute(string sql , object param = null);

        IEnumerable<T> Query<T>(string sql , object param = null);


    }

}