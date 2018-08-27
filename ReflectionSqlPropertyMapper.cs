// Utility class that uses reflection to generate a list of named parameters from an object. Useful for 1:1 property mappings with the data access layer.

using System.Collections.Generic;
using System.Data.SqlClient;

namespace MyNamespace
{
    public static class ReflectionSqlPropertyMapper
    {
        public static IEnumerable<System.Data.SqlClient.SqlParameter> GetParamsFromObject(object obj)
        {
            var objectType = obj.GetType();
            var props = objectType.GetProperties();
            var paramList = new List<SqlParameter>();

            foreach (var p in props)
            {
                var propertyName = p.Name;
                var x = p.GetValue(obj);
                var param = new SqlParameter(string.Format("@{0}", propertyName), p.GetValue(obj));
                paramList.Add(param);
            }

            return paramList;
        }
    }
}
