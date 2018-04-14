using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Arboles
{
    public partial class Examen : System.Web.UI.Page
    {
        //Inicializo Variables
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rd;
        int correct_answer = 0;
        int wrong_answer = 0;
        int select_no = 0;
        int count = 0;

        //Establezco La conexión con la base de datos
        public Examen()
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            cmd = new SqlCommand();
        }

        //Cargó la base de datos
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadgrid1();
            }
        }

        //Preguntas de Selección multiple única respuesta
        protected void Button1_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            GridView1.Visible = true;
            Button7.Visible = true;
            Primero.Visible = true;

            GridView2.Visible = false;
            Button8.Visible = false;
            Segundo.Visible = false;
            Image1.Visible = false;
            Label1.Visible = false;

            GridView3.Visible = false;
            Button9.Visible = false;
            Tercero.Visible = false;

            //GridView4.Visible = false;
            //GridView5.Visible = false;
            //GridView6.Visible = false;            
            //Button10.Visible = false;
            //Button11.Visible = false;
            //Button12.Visible = false;
            loadgrid1();
        }

        public void loadgrid1() //Muestra las preguntas que estan en la base de datos
        {
            con.Open();
            cmd.CommandText = "select * from [MCQ]";
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            rd.Dispose();
        }

        protected void Button7_Click(object sender, EventArgs e) //Transforma la respuesta dada en datos
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label l1 = row.FindControl("QuestionId") as Label;
                RadioButton r1 = row.FindControl("answer1") as RadioButton;
                RadioButton r2 = row.FindControl("answer2") as RadioButton;
                RadioButton r3 = row.FindControl("answer3") as RadioButton;
                RadioButton r4 = row.FindControl("answer4") as RadioButton;
                if (r1.Checked)
                {
                    select_no = 1;
                }
                else if (r2.Checked)
                {
                    select_no = 2;
                }
                else if (r3.Checked)
                {
                    select_no = 3;
                }
                else if (r4.Checked)
                {
                    select_no = 4;
                }
                con.Close();
                check_number1(l1.Text);
            }
            calculate(correct_answer, GridView1.Rows.Count);
            //Response.Redirect("Resultado.aspx");
        }

        private void check_number1(string text) //Comprueba si la respuesta dada es la correcta
        {
            con.Open();
            cmd.CommandText = "select * from [MCQ] where mcqo_id=@qid" + count;
            cmd.Parameters.AddWithValue("@qid" + count, text);
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (select_no == Convert.ToInt32(rd["correct_answer"]))
                {
                    correct_answer = correct_answer + 1;
                    break;
                }
                else
                {
                    wrong_answer = wrong_answer + 1;
                    break;
                }
            }
            rd.Dispose();
            count++;
        }


        // Pregunta Abierta
        protected void Button2_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            GridView1.Visible = false;
            Button7.Visible = false;
            Primero.Visible = false;

            GridView2.Visible = true;
            Button8.Visible = true;
            Segundo.Visible = true;
            Image1.Visible = true;
            Label1.Visible = true;

            GridView3.Visible = false;
            Button8.Visible = false;
            Tercero.Visible = false;

            //GridView4.Visible = false;
            //GridView5.Visible = false;
            //GridView6.Visible = false;
            //Button10.Visible = false;
            //Button11.Visible = false;
            //Button12.Visible = false;
            loadgrid2();
        }

        public void loadgrid2() //Muestra las preguntas que estan en la base de datos
        {
            con.Open();
            cmd.CommandText = "select * from [OQ]";
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            GridView2.DataSource = rd;
            GridView2.DataBind();
        }

        //FALTA AJUSTAR ESTE MÉTODO
        protected void Button8_Click(object sender, EventArgs e) //Transforma la respuesta dada en datos
        {
            //GridView2.DataSource
            foreach (GridViewRow row in GridView2.Rows)
            {
                Label l2 = row.FindControl("QuestionId2") as Label;
                TextBox t1 = row.FindControl("TextBox1") as TextBox;
                con.Open();
                cmd.CommandText = "UPDATE OQ SET answer=@ans Where oq_id=@id";
                cmd.Parameters.AddWithValue("@ans", t1.ToString());
                cmd.Parameters.AddWithValue("@id", l2.ToString());
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                string id = l2.Text;
                check_number2(l2.Text);
                int G = GridView1.Rows.Count + GridView2.Rows.Count;
                updateintodatabase(correct_answer, G, id);
            }
            //saveintodatabase(correct_answer, GridView2.Rows.Count);
            //Response.Redirect("Resultado.aspx");
        }

        //FALTA AJUSTAR ESTE MÉTODO
        private void check_number2(string p) //Comprueba si la respuesta dada es la correcta
        {
            con.Open();
            cmd.CommandText = "select * from [OQ] where oq_id=@qid" + count;
            cmd.Parameters.AddWithValue("@qid" + count, p);
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if ((rd["answer"]) == (rd["correct_answer"]))
                {
                    correct_answer = correct_answer + 1;
                    break;
                }
                else
                {
                    wrong_answer = wrong_answer + 1;
                    break;
                }
            }
            rd.Dispose();
            count++;
        }


        //Pregunta de Falso y Verdadero
        protected void Button4_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            GridView1.Visible = false;
            Button7.Visible = false;
            Primero.Visible = false;

            GridView2.Visible = false;
            Button8.Visible = false;
            Segundo.Visible = false;
            Image1.Visible = false;
            Label1.Visible = false;

            GridView3.Visible = true;
            Button9.Visible = true;
            Tercero.Visible = true;

            //GridView4.Visible = false;
            //GridView5.Visible = false;
            //GridView6.Visible = false;            
            //Button10.Visible = false;
            //Button11.Visible = false;
            //Button12.Visible = false;
            loadgrid3();
        }

        public void loadgrid3() //Muestra las preguntas que estan en la base de datos
        {
            con.Open();
            cmd.CommandText = "select * from [TFQ]";
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            GridView3.DataSource = rd;
            GridView3.DataBind();
        }

        //FALTA AJUSTAR ESTE MÉTODO
        protected void Button9_Click(object sender, EventArgs e) //Transforma la respuesta dada en datos
        {
            foreach (GridViewRow row in GridView3.Rows)
            {
                Label l3 = row.FindControl("QuestionId3") as Label;
                RadioButton r1 = row.FindControl("ans1") as RadioButton;
                RadioButton r2 = row.FindControl("ans2") as RadioButton;
                if (r1.Checked)
                {
                    select_no = 1;
                }
                else if (r2.Checked)
                {
                    select_no = 2;
                }
                con.Close();
                check_number3(l3.Text);
            }
            con.Close();
            calculate(correct_answer, GridView1.Rows.Count);
            //Response.Redirect("Resultado.aspx");
        }

        //FALTA AJUSTAR ESTE MÉTODO
        private void check_number3(string text) //Comprueba si la respuesta dada es la correcta
        {
            con.Open();
            cmd.CommandText = "select * from [TFQ] where mcqo_id=@qid" + count;
            cmd.Parameters.AddWithValue("@qid" + count, text);
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (select_no == Convert.ToInt32(rd["correct_answer"]))
                {
                    correct_answer = correct_answer + 1;
                    break;
                }
                else
                {
                    wrong_answer = wrong_answer + 1;
                    break;
                }
            }
            rd.Dispose();
            count++;
        }


        //Métodos Cómunes en cada tipo de preguntas
        private void calculate(int correct_answer, int p)
        {
            double percentage = (correct_answer * 100) / p;
            if (percentage < 33)
                Response.Write("Reprobo el examen" + percentage.ToString() + "%");
            else if (percentage >= 33 && percentage < 60)
                Response.Write("Apenas aprobo el examen" + percentage.ToString() + "%");
            else if (percentage >= 60 && percentage < 100)
                Response.Write("Aprobo el examen" + percentage.ToString() + "%");
            else if (percentage == 100)
                Response.Write("Obtuvo el mejor puntaje" + percentage.ToString() + "%");
            con.Close();
            cmd.Parameters.Clear();
            saveintodatabase(correct_answer, p);
        }

        private void saveintodatabase(int cn, int p1)
        {
            con.Open();
            cmd.CommandText = "insert into [Resultado] (Result_ans,Total_Question)values(@rans,@td)";
            cmd.Parameters.AddWithValue("@rans", cn.ToString());
            cmd.Parameters.AddWithValue("@td", p1.ToString());
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        //FALTA AJUSTAR ESTE MÉTODO
        private void updateintodatabase(int ca, int p1, string id)
        {
            con.Open();
            cmd.CommandText = "UPDATE Resultado SET Result_ans=@ans, Total_Question=@total Where Result_id=@id";
            cmd.Parameters.AddWithValue("@ans", ca.ToString());
            cmd.Parameters.AddWithValue("@total", p1.ToString());
            cmd.Parameters.AddWithValue("@id", id.ToString());
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }
    }
}