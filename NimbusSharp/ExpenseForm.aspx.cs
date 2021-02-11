using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NimbusSharp.App_Code;

namespace NimbusSharp
{   
    public partial class Contact : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategorySel();


            }
        }

        protected void LoadCategorySel()
        {
            string qry = "Select CategoryID, CategoryName from dbo.Category";

            DataSet CategoryDS = DataHandler.GetDataset(qry);

            selCategory.DataSource = CategoryDS;
            selCategory.DataTextField = "CategoryName";
            selCategory.DataValueField = "CategoryID";
            selCategory.DataBind();

        }
    }

}