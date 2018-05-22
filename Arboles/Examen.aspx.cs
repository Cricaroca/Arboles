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
    public partial class Examen : System.Web.UI.Page
    {
        //Declaro Variables
        int correct_answer;
        int wrong_answer;
        int select_no;
        string select_n;
        int count;
        //List<int> list = new List<int>();
        List<ListItem> selected = new List<ListItem>();
        List<string> arbol = new List<string>();

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader rd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["Timer"] = DateTime.Now.AddMinutes(15).ToString();
                pregunta1();
                loadgrid1();
            }
        }

        //Contador de tiempo
        protected void timerTest_tick(object sen, EventArgs e)
        {
            if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
            {
                litMsg.Text = "Time Left: " + ((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes)
                    .ToString() + "Minutes" + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60)
                    .ToString() + "Seconds";
            }
            else
            {
                Response.Redirect("Resultado.aspx");
            }
        }

        //Establezco conexion con base de datos
        public Examen()
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            cmd = new SqlCommand();
        }

        //Inicializo Variables
        public void Inicializar()
        {
            correct_answer=0;
            wrong_answer=0;
            select_no=0;
            select_n=null;
            count=0;
        }


        //Preguntas de Selección multiple única respuesta
        public void pregunta1() //Establece la grilla de la pregunta correspondiente
        {
            GridView1.Visible = true;
            Button7.Visible = true;
            Primero.Visible = true;
            General.Visible = true;
            litMsg.Visible = true;

            GridView2.Visible = false;
            Button8.Visible = false;
            Segundo.Visible = false;
            Image1.Visible = false;
            Aclaracion.Visible = false;

            GridView3.Visible = false;
            Button9.Visible = false;
            Tercero.Visible = false;

            CheckBoxList1.Visible = false;
            Button10.Visible = false;
            Cuarto.Visible = false;
            Question4.Visible = false;

            loadgrid1();
        }

        protected void Button1_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            pregunta1();
        }

        public void loadgrid1() //Muestra las preguntas que estan en la base de datos
        {
            con.Close();
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
            Inicializar();
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
            con.Close();
            saveintodatabase(correct_answer, GridView1.Rows.Count);
            pregunta2();
            //Response.Redirect("Resultado.aspx");
            
        }

        private void check_number1(string text) //Comprueba si la respuesta dada es la correcta
        {
            //Inicializar();
            con.Open();
            cmd.CommandText = "select * from [MCQ] where mcq_id=@qid" + count;
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
        public void pregunta2() //Establece la grilla de la pregunta correspondiente
        {
            GridView1.Visible = false;
            Button7.Visible = false;
            Primero.Visible = false;

            GridView2.Visible = true;
            Button8.Visible = true;
            Segundo.Visible = true;
            Image1.Visible = true;
            General.Visible = true;
            litMsg.Visible = true;
            Aclaracion.Visible = true;

            GridView3.Visible = false;
            Button9.Visible = false;
            Tercero.Visible = false;

            CheckBoxList1.Visible = false;
            Button10.Visible = false;
            Cuarto.Visible = false;
            Question4.Visible = false;

            loadgrid2();
        }

        protected void Button2_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            pregunta2();
        }

        public void loadgrid2() //Muestra las preguntas que estan en la base de datos
        {
            con.Close();
            con.Open();
            cmd.CommandText = "select * from [OQ]";
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            GridView2.DataSource = rd;
            GridView2.DataBind();
            rd.Dispose();
        }

        protected void Button8_Click(object sender, EventArgs e) //Transforma la respuesta dada en datos
        {
            Inicializar();
            foreach (GridViewRow row in GridView2.Rows)
            {
                Label l2 = row.FindControl("QuestionId2") as Label;
                TextBox t1 = row.FindControl("TextBox1") as TextBox;
                if (t1.Text == "K,E,B,F,C,L,G,M,A,H,D,I,N,J,O")
                {
                    select_n = "K,E,B,F,C,L,G,M,A,H,D,I,N,J,O";
                }
                else if (t1.Text == "A,B,E,K,F,C,G,L,M,D,H,I,J,N,O")
                {
                    select_n = "A,B,E,K,F,C,G,L,M,D,H,I,J,N,O";
                }
                con.Close();
                check_number2(l2.Text);
            }
            con.Close();            
            saveintodatabase(correct_answer, GridView2.Rows.Count);
            pregunta3();
            //Response.Redirect("Resultado.aspx");
        }

        private void check_number2(string p) //Comprueba si la respuesta dada es la correcta
        {
            //Inicializar();
            con.Open();
            cmd.CommandText = "select * from [OQ] where oq_id=@qid" + count;
            cmd.Parameters.AddWithValue("@qid" + count, p);
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (select_n == Convert.ToString(rd["correct_answer"]))
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
        public void pregunta3() //Establece la grilla de la pregunta correspondiente
        {
            GridView1.Visible = false;
            Button7.Visible = false;
            Primero.Visible = false;

            GridView2.Visible = false;
            Button8.Visible = false;
            Segundo.Visible = false;
            Image1.Visible = false;
            Aclaracion.Visible = false;

            GridView3.Visible = true;
            Button9.Visible = true;
            Tercero.Visible = true;
            General.Visible = true;
            litMsg.Visible = true;

            CheckBoxList1.Visible = false;
            Button10.Visible = false;
            Cuarto.Visible = false;
            Question4.Visible = false;

            loadgrid3();
        }

        protected void Button3_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            pregunta3();
        }

        public void loadgrid3() //Muestra las preguntas que estan en la base de datos
        {
            con.Close();
            con.Open();
            cmd.CommandText = "select * from [TFQ]";
            cmd.Connection = con;
            rd = cmd.ExecuteReader();
            GridView3.DataSource = rd;
            GridView3.DataBind();
            rd.Dispose();
        }

        protected void Button9_Click(object sender, EventArgs e) //Transforma la respuesta dada en datos
        {
            Inicializar();
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
            saveintodatabase(correct_answer, GridView3.Rows.Count);
            pregunta4();
            //Response.Redirect("Resultado.aspx");
        }

        private void check_number3(string text) //Comprueba si la respuesta dada es la correcta
        {
            //Inicializar();
            con.Open();
            cmd.CommandText = "select * from [TFQ] where tfq_id=@qid" + count;
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


        //Preguntas de Selección multiple, multiple respuesta
        public void pregunta4() //Establece la grilla de la pregunta correspondiente
        {
            GridView1.Visible = false;
            Button7.Visible = false;
            Primero.Visible = false;

            GridView2.Visible = false;
            Button8.Visible = false;
            Segundo.Visible = false;
            Image1.Visible = false;
            Aclaracion.Visible = false;

            GridView3.Visible = false;
            Button9.Visible = false;
            Tercero.Visible = false;

            CheckBoxList1.Visible = true;
            Button10.Visible = true;
            Cuarto.Visible = true;
            General.Visible = true;
            litMsg.Visible = true;
            Question4.Visible = true;

            loadgrid4();
        }

        protected void Button4_Click(object sender, EventArgs e) //Carga la interfaz de dichas preguntas
        {
            pregunta4();
        }

        public void loadgrid4() //Muestra las preguntas que estan en la base de datos
        {
            using (SqlConnection con = new SqlConnection())
            {
                con.ConnectionString = ConfigurationManager
                    .ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from [MAQ]";
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            ListItem item = new ListItem();
                            item.Text = sdr["property"].ToString();
                            item.Value = sdr["maq_ID"].ToString();
                            item.Selected = Convert.ToBoolean(sdr["IsSelected"]);
                            CheckBoxList1.Items.Add(item);
                        }
                    }
                    con.Close();
                }
            }
        }

        protected void Button10_Click(object sender, EventArgs e) //Transforma la respuesta dada en datos y Comprueba si la respuesta dada es la correcta 
        {
            Inicializar();
            using (SqlConnection con = new SqlConnection())
            {
                con.ConnectionString = ConfigurationManager
                        .ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "update MAQ set IsSelected = @IsSelected" +
                                      " where maq_id=@maq_id";
                    cmd.Connection = con;
                    con.Open();
                    foreach (ListItem item in CheckBoxList1.Items)
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@IsSelected", item.Selected);
                        cmd.Parameters.AddWithValue("@maq_id", item.Value);
                        if (item.Value == "2" && item.Selected == true)
                        {
                            correct_answer = correct_answer + 1;
                        }
                        if (item.Value == "3" && item.Selected == true)
                        {
                            correct_answer = correct_answer + 1;
                        }
                        if (item.Value == "5" && item.Selected == true)
                        {
                            correct_answer = correct_answer + 1;
                        }
                        if (item.Value == "6" && item.Selected == true)
                        {
                            correct_answer = correct_answer + 1;
                        }
                        if (item.Value == "8" && item.Selected == true)
                        {
                            correct_answer = correct_answer + 1;
                        }
                        cmd.ExecuteNonQuery();
                    }
                }
                con.Close();
                llenar_arbol();
                saveintodatabase(correct_answer, arbol.Count);
                Response.Redirect("Resultado.aspx");
            }
        }

        private void llenar_arbol() //Establece tamaño de las respuestas correctas
        {
            arbol.Clear();
            arbol.Add("Nivel");
            arbol.Add("Peso");
            arbol.Add("Altura");
            arbol.Add("Grado");
            arbol.Add("Orden");
        }

        



        //Métodos Cómunes en cada tipo de preguntas
        private void saveintodatabase(int cn, int p1)
        {
            con.Open();
            if (GridView1.Visible == true)
            {
                cmd.CommandText = "insert into [Resultado] (Result_id,Result_ans,Total_Question)values('1',@rans,@td)";
                cmd.Parameters.AddWithValue("@rans", cn.ToString());
                cmd.Parameters.AddWithValue("@td", p1.ToString());
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
            else if (GridView2.Visible == true)
            {
                cmd.CommandText = "insert into [Resultado] (Result_id,Result_ans,Total_Question)values('2',@rans,@td)";
                cmd.Parameters.AddWithValue("@rans", cn.ToString());
                cmd.Parameters.AddWithValue("@td", p1.ToString());
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
            else if (GridView3.Visible == true)
            {
                cmd.CommandText = "insert into [Resultado] (Result_id,Result_ans,Total_Question)values('3',@rans,@td)";
                cmd.Parameters.AddWithValue("@rans", cn.ToString());
                cmd.Parameters.AddWithValue("@td", p1.ToString());
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }
            else
            {
                cmd.CommandText = "insert into [Resultado] (Result_id,Result_ans,Total_Question)values('4',@rans,@td)";
                cmd.Parameters.AddWithValue("@rans", cn.ToString());
                cmd.Parameters.AddWithValue("@td", p1.ToString());
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
            }                        
        }

    }
}