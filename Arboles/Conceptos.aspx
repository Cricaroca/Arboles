<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Conceptos.aspx.cs" Inherits="Arboles.Conceptos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="margin:50px 0px;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4">
                <asp:Image ID="bien" runat="server" ImageUrl="" class="img-responsive center-box"
                    style=" "/>                
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-6 text-justify lead">
                En este apartado usted aprender muchas cosas sobre los árboles de decisión.<br />
                Los conceptos apareceran en forma de un "carrousel".<br />
                Si quere continuar con este apartado y esta de acuerdo con estas condiciones,
                por favor de click en boton "ACEPTAR".<br /><br />
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-center lead">
                <asp:Button ID="btn_start" runat="server" class="btn btn-primary btn-lg" Text="ACEPTAR" />
            </div>
        </div>
    </div>
</asp:Content>
