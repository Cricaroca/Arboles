<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="Arboles.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container-fluid" style="margin: 0 auto;">
        <div class="row">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow HorizontalAlign="Center" >
                    <asp:TableCell ID="TableCell1" Width="75%" runat="Server">
                        Johana Luna Rodríguez
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell2" Width="75%" runat="Server">
                        Cristian Camilo Rodriguez
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Center" >
                    <asp:TableCell ID="TableCell3" Width="75%" runat="Server">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/assets/img/jlr.jpg"/>
                    </asp:TableCell >
                    <asp:TableCell ID="TableCell4" Width="75%" runat="Server">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Styles/assets/img/ccrc.png"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
