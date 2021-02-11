using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NimbusSharp
{
    public partial class ExpenseList : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadExpensesTable();
            }

        }

        protected void LoadExpensesTable()
        {
            string qry = "Select ClaimID, CONCAT(ClaimerFirstName, ' ', ClaimerMiddleInitial, ' ', ClaimerLastName) as Name, ClaimAmount, CategoryName, ClaimDescription, DateSubmitted, StatusName, DateClosed, ClosedDescription ";
            qry += " From ExpenseClaim join dbo.Status on ExpenseClaim.StatusID = dbo.Status.StatusID join Category on Category.CategoryID = ExpenseClaim.CategoryID";
            DataSet expensesDS = App_Code.DataHandler.GetDataset(qry);
            ExpensesGridView.DataSource = expensesDS;
            ExpensesGridView.DataBind();

            ExpensesGridView.HeaderRow.TableSection = TableRowSection.TableHeader;            

        }





    }
}