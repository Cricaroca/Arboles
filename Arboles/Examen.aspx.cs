using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arboles
{
    public partial class Examen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["Timer"] = DateTime.Now.AddMinutes(15).ToString();
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
    }
}