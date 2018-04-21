using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.models;

namespace WebApplication1
{
    public partial class adminReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<SubscribersForList> getAllSubscribers = new List<SubscribersForList>();

            getAllSubscribers = SubscribersForList.getAllSubscribersFromAllLists();

        }
    }
}