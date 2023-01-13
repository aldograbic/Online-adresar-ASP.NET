using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_projekt
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
        {
            string username = CreateUserWizard1.UserName;
            string password = CreateUserWizard1.Password;
            TextBox ime = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Ime"));
            TextBox prezime = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Prezime"));
            string email = CreateUserWizard1.Email;

            string connStr = ConfigurationManager.ConnectionStrings["konekcija"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connStr);
            sqlConnection.Open();
            try
            {
                SqlCommand command = new SqlCommand("INSERT INTO Users(Username, Password, Ime, Prezime, Email) VALUES(@username, @password, @ime, @prezime, @email)", sqlConnection);

                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@password", password);
                command.Parameters.AddWithValue("@ime", ime.Text);
                command.Parameters.AddWithValue("@prezime", prezime.Text);
                command.Parameters.AddWithValue("@email", email);
                command.ExecuteNonQuery();
                sqlConnection.Close();
                Response.Write("<script language='JavaScript' >alert('Uspješna registracija!');window.location='Login.aspx';</script>");
            }
            catch(SqlException)
            {
                Response.Write("<script language='JavaScript' >alert('Korisničko ime već postoji!');</script>");
            }

            
            
            
        }
    }
}