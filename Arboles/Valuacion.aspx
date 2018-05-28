<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Valuacion.aspx.cs" Inherits="Arboles.Valuacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4">
                <asp:Image ID="bien" runat="server" ImageUrl="~/Styles/assets/img/examen.jpg" class="img-responsive center-box"
                    style=" "/>                
            </div>
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-justify lead">
                En este apartado usted podrá determinar cuanto aprendió sobre "Árboles de Decisión": <br />
                Para realizar el exámen usted contará con un tiempo de 10 minutos.<br />
                El resultado de la prueba aparecerá inmediatamente haya finalizado el examen.<br />
                La prueba contará con diferentes tipos preguntas como son: <br />
                Preguntas de selección múltiple con única respuesta <br />
                Preguntas de selección múltiple con múltiple respuesta <br />
                Preguntas de falso y verdadero <br />
                Preguntas abiertas <br />
                Si quere desarrollar el examen por favor de click en boton "INICIAR".<br /><br />
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-center lead">
                <asp:Button ID="btn_start" runat="server" class="btn btn-primary btn-lg" Text="INICIAR" onclick="btn_start_Click" />
            </div>
        </div>
    </div>
</asp:Content>
