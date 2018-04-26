<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="Arboles.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container-fluid" style="margin: 0 auto;">
        <div class="row">
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow HorizontalAlign="Center" >
                    <asp:TableCell ID="TableCell1" Width="100%" runat="Server">
                        Johanna Luna
                    </asp:TableCell>
                    <asp:TableCell ID="TableCell2" Width="100%" runat="Server">
                        Cristian Camilo Rodriguez
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Center" >
                    <asp:TableCell ID="TableCell3" Width="100%" runat="Server">
                        <asp:Image ID="Image1" runat="server" ImageUrl=""/>
                    </asp:TableCell >
                    <asp:TableCell ID="TableCell4" Width="100%" runat="Server">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Styles/assets/img/ccrc.png"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
