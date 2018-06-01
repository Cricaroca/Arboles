using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Arboles
{
    public partial class Conceptos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Ocultar panel de conceptos
            PanelDefinicion.Visible = false;
            PanelCarouselConceptos.Visible = false;
            PanelDefinicionEstructura.Visible = false;
            PanelCarouselEstructura.Visible = false;
            PanelDefinicionPropiedades.Visible = false;
            PanelCarouselPropiedades.Visible = false;
            PanelDefinicionTipos.Visible = false;
            PanelCarouselTipos.Visible = false;
            PanelDefinicionRecorridos.Visible = false;
            PanelCarouselRecorridos.Visible = false;
        }

        protected void btn_start_Click(object sender, EventArgs e)
        {
            //Mostrar panel de conceptos cuando de Empezar
            PanelInicial.Visible = false;
            PanelDefinicion.Visible = true;
            PanelCarouselConceptos.Visible = false;
            PanelDefinicionEstructura.Visible = true;
            PanelCarouselEstructura.Visible = false;
            PanelDefinicionPropiedades.Visible = true;
            PanelCarouselPropiedades.Visible = false;
            PanelDefinicionTipos.Visible = true;
            PanelCarouselTipos.Visible = false;
            PanelDefinicionRecorridos.Visible = true;
            PanelCarouselRecorridos.Visible = false;
        }

        protected void btnarboles_Click(object sender, EventArgs e)
        {
            PanelDefinicion.Visible = true;
            PanelCarouselConceptos.Visible = true;
            PanelDefinicionEstructura.Visible = true;
            PanelDefinicionPropiedades.Visible = true;
            PanelDefinicionTipos.Visible = true;
            PanelDefinicionRecorridos.Visible = true;
        }

        protected void btnestructura_Click(object sender, EventArgs e)
        {
            PanelDefinicion.Visible = true;
            PanelDefinicionEstructura.Visible = true;
            PanelCarouselEstructura.Visible = true;
            PanelDefinicionPropiedades.Visible = true;
            PanelDefinicionTipos.Visible = true;
            PanelDefinicionRecorridos.Visible = true;
        }

        protected void btnpropiedades_Click(object sender, EventArgs e)
        {
            PanelDefinicion.Visible = true;
            PanelDefinicionEstructura.Visible = true;
            PanelDefinicionPropiedades.Visible = true;
            PanelCarouselPropiedades.Visible = true;
            PanelDefinicionTipos.Visible = true;
            PanelDefinicionRecorridos.Visible = true;
        }

        protected void btntipos_Click(object sender, EventArgs e)
        {
            PanelDefinicion.Visible = true;
            PanelDefinicionEstructura.Visible = true;
            PanelDefinicionPropiedades.Visible = true;
            PanelDefinicionTipos.Visible = true;
            PanelCarouselTipos.Visible = true;
            PanelDefinicionRecorridos.Visible = true;
        }

        protected void btnrecorridos_Click(object sender, EventArgs e)
        {
            PanelDefinicion.Visible = true;
            PanelDefinicionEstructura.Visible = true;
            PanelDefinicionPropiedades.Visible = true;
            PanelDefinicionTipos.Visible = true;
            PanelCarouselRecorridos.Visible = true;
            PanelDefinicionRecorridos.Visible = true;
        }
    }
}