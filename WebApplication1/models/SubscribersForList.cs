using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.models
{
    public class SubscribersForList
    {
        public string email { get; set; }
        public int id { get; set; }
        public string name { get; set; }

        internal static List<SubscribersForList> getAllSubscribersFromAllLists()
        {
            throw new NotImplementedException();
        }
        // "tags": [],
    }
}