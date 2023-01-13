using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace ASP.NET_projekt
{
    public partial class OsobniPodaci : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Username = User.Identity.GetUserName();

            string connStr = ConfigurationManager.ConnectionStrings["konekcija"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connStr);

            sqlConnection.Open();

            SqlCommand command = new SqlCommand("SELECT Username, Ime, Prezime, Email FROM Users WHERE Username = @Username", sqlConnection);
            command.CommandType = CommandType.Text;

            command.Parameters.AddWithValue("@Username", Username);

            SqlDataReader reader = command.ExecuteReader();

            while(reader.Read())
            {
                LabelKorisnickoIme.Text = reader["Username"].ToString();
                LabelIme.Text = reader["Ime"].ToString();
                LabelPrezime.Text = reader["Prezime"].ToString();
                LabelEmail.Text = reader["Email"].ToString();
            }
            reader.Close();

            command.ExecuteNonQuery();
            sqlConnection.Close();
        }
    }
}