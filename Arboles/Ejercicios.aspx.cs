﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arboles
{
    public partial class Ejercicios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_start_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ejercicio1.aspx");
        }
    }
}