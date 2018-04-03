using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mvc;
using System.Data.SqlClient;
using System.Configuration;

namespace Arboles.Controllers
{
    public class EvaluarController : Controller
    {
        public ActionResult Valuacion()
        {
            return View();
        }
    }
}
