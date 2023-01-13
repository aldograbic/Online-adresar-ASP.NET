using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.NET_projekt
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginStatus1.Attributes.Add("OnClick", "odjaviMe();");


            if (User.Identity.IsAuthenticated == true)
            {
                this.MultiView1.SetActiveView(ViewAdresar);
            }
            else
            {
                this.MultiView1.SetActiveView(ViewPocetna);
            }
        }

        protected void ButtonUnesi_Click(object sender, EventArgs e)
        {
            string ime = this.TextBoxIme.Text;
            string prezime = this.TextBoxPrezime.Text;
            string adresa = this.TextBoxAdresa.Text;
            string telefon = this.TextBoxTelefon.Text;
            string email = this.TextBoxEmail.Text;
            string unesenoOd = this.User.Identity.GetUserName();

            string connStr = ConfigurationManager.ConnectionStrings["konekcija"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(connStr);

            sqlConnection.Open();

            SqlCommand command = new SqlCommand("INSERT INTO Adresar(Ime, Prezime, Adresa, Telefon, Email, UnesenoOd) VALUES(@ime, @prezime, @adresa, @telefon, @email, @unesenoOd)", sqlConnection);
            command.Parameters.AddWithValue("@ime", ime);
            command.Parameters.AddWithValue("@prezime", prezime);
            command.Parameters.AddWithValue("@adresa", adresa);
            command.Parameters.AddWithValue("@telefon", telefon);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@unesenoOd", unesenoOd);

            command.ExecuteNonQuery();
            sqlConnection.Close();
            Response.Redirect("Default.aspx");
        }
    }
}