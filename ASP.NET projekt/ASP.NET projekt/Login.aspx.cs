using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace ASP.NET_projekt
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string userName = Login1.UserName;
            string password = Login1.Password;
            bool exists = false;

            string connStr = ConfigurationManager.ConnectionStrings["konekcija"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connStr);

            sqlConnection.Open();

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Username=@username AND Password=@password", sqlConnection);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", userName);
            cmd.Parameters.AddWithValue("@password", password);

            exists = (int)cmd.ExecuteScalar() > 0;
            if (exists)
            {
                e.Authenticated = true;
                Session["UserName"] = userName;
            }
            else
            {
                e.Authenticated = false;
            }

            cmd.ExecuteNonQuery();
            sqlConnection.Close();
        }
    }
}