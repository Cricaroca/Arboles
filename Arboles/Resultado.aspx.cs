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
    public partial class Resultado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        public Resultado()
        {                        
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.Open();
            string r1 = "SELECT [result_ans] FROM [RESULTADO] WHERE Result_id=1";
            string r2 = "SELECT [result_ans] FROM [RESULTADO] WHERE Result_id=2";
            string r3 = "SELECT [result_ans] FROM [RESULTADO] WHERE Result_id=3";
            string r4 = "SELECT [result_ans] FROM [RESULTADO] WHERE Result_id=4";
            string tq1 = "select [total_question] from [RESULTADO] WHERE Result_id=1";
            string tq2 = "select [total_question] from [RESULTADO] WHERE Result_id=2";
            string tq3 = "select [total_question] from [RESULTADO] WHERE Result_id=3";
            string tq4 = "select [total_question] from [RESULTADO] WHERE Result_id=4";
            SqlCommand cmr1 = new SqlCommand(r1, con);
            SqlCommand cmr2 = new SqlCommand(r2, con);
            SqlCommand cmr3 = new SqlCommand(r3, con);
            SqlCommand cmr4 = new SqlCommand(r4, con);
            SqlCommand cmtq1 = new SqlCommand(tq1, con);
            SqlCommand cmtq2 = new SqlCommand(tq2, con);
            SqlCommand cmtq3 = new SqlCommand(tq3, con);
            SqlCommand cmtq4 = new SqlCommand(tq4, con);
            int a1 = Convert.ToInt32(cmr1.ExecuteScalar().ToString());
            int a2 = Convert.ToInt32(cmr2.ExecuteScalar().ToString());
            int a3 = Convert.ToInt32(cmr3.ExecuteScalar().ToString());
            int a4 = Convert.ToInt32(cmr4.ExecuteScalar().ToString());
            int t1 = Convert.ToInt32(cmtq1.ExecuteScalar().ToString());
            int t2 = Convert.ToInt32(cmtq2.ExecuteScalar().ToString());
            int t3 = Convert.ToInt32(cmtq3.ExecuteScalar().ToString());
            int t4 = Convert.ToInt32(cmtq4.ExecuteScalar().ToString());
            int r = a1+a2+a3+a4;
            int q = t1+t2+t3+t4;
            calcular(r,q);
        }

        public void calcular(int r, int q)
        {
            double porcentaje = (r * 100) / q;
            if (porcentaje < 33)
            {
                Label1.Text = "Perdió el examen";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
            }
            else if (porcentaje >= 33 && porcentaje < 60)
            {
                Label1.Text = "Pasó el examen";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
            }
            else if (porcentaje >= 60 && porcentaje < 100)
            {
                Label1.Text = "En hora buena, Pasó el examen con una buena calificacion";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
            }
            else if (porcentaje == 100)
            {
                Label1.Text = "Felicitaciones, obtuvo todas las respuestas correctas";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
            }
        }
    }
}