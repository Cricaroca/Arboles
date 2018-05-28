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
            if (!Page.IsPostBack)
            {
                loadgrid();
            }
        }
        

        public void loadgrid()
        {                        
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.Open();
            string result_ans = "SELECT SUM(Result_ans) FROM Resultado";
            string total_question = "SELECT SUM(Total_Question) FROM Resultado";
            SqlCommand cmr = new SqlCommand(result_ans, con);
            SqlCommand cmq = new SqlCommand(total_question, con);
            int r = Convert.ToInt32(cmr.ExecuteScalar().ToString());
            int q = Convert.ToInt32(cmq.ExecuteScalar().ToString());
            calcular(r,q);
            con.Close();
        }

        public void calcular(int ans, int total)
        {
            double porcentaje = (ans * 100) / total;
            if (porcentaje < 60)
            {
                Label1.Text = "Perdió el examen";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
                Label3.Text = "Obtuvó  "+ ans + "  resuestas correctas de  " + total + "  posibles";
            }
            else if (porcentaje >= 60 && porcentaje < 80)
            {
                Label1.Text = "Pasó el examen";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
                Label3.Text = "Obtuvó  " + ans + "  resuestas correctas de  " + total + "  posibles";
            }
            else if (porcentaje >= 80 && porcentaje < 100)
            {
                Label1.Text = "En hora buena, Pasó el examen con una buena calificacion";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
                Label3.Text = "Obtuvó  " + ans + "  resuestas correctas de  " + total + "  posibles";
            }
            else if (porcentaje == 100)
            {
                Label1.Text = "Felicitaciones, obtuvo todas las respuestas correctas";
                Label2.Text = "Su puntaje fue de: " + porcentaje.ToString() + "%";
            }
        }
    }
}