using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Arboles
{
    public partial class Valuacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_start_Click(object sender, EventArgs e)
        {
            erasedata();
            maq();
            Response.Redirect("Examen.aspx");            
        }

        public void erasedata() //Inicializar la tabla Resultado
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "DELETE FROM Resultado";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void maq() // Inicializar la tabla MAQ
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.CommandText = "update MAQ set IsSelected = 'false' WHERE IsSelected = 'true'";
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}