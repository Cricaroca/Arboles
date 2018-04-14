<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Arboles._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM *"></asp:SqlDataSource>
    </h2>
    <div class="container-fluid" style="margin: 50px 0;">
        <div class="row">
            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4">
                <asp:Image ID="bien" runat="server" ImageUrl="~/Styles/assets/img/bienvenido.png" class="img-responsive center-box"
                    style="max-width: 110px;"/>                
            </div>
            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-justify lead">
                Esta herramienta le permitirá adquirir conocimiento sobre árboles de decisión.<br />
                En el apartado "aprender" usted podrá conocer los conceptos básicos sobre árboles.<br /> 
                En el apartado "practicar" usted podrá repasar los conceptos adquiridos.<br /> 
                En el apartado "evaluar" usted podrá determinar cuanto sabe sobre árboles.
            </div>
        </div>
    </div>
</asp:Content>
