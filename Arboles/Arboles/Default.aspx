<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Arboles._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <div class="container-fluid" style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <img src="Styles/assets/img/bienvenido.png" alt="user" class="img-responsive center-box"
                    style="max-width: 110px;" />
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                Esta herramienta le permitirá adquirir conocimiento sobre árboles de decisión, al
                utilizar esta herramienta usted podrá en el apartado "aprender" conocer los conceptos
                básicos sobre árboles, además en el apartado "practicar" usted podrá repasar los
                conceptos adquiridos, finalmente en el apartado "evaluar" usted podrá determinar
                cuanto sabe sobre árboles.
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 text-center lead">
            <asp:Button ID="btn_continuar" class="btn btn-primary" runat="server" Text="Continuar" />
            </div>
        </div>
    </div>
</asp:Content>
