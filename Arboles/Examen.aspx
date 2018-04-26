<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Examen.aspx.cs" Inherits="Arboles.Examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <style>
    #sortable1, #sortable2, #sortable3 { list-style-type: none; margin: 0; float: left; margin-right: 10px; background: #eee; padding: 5px; width: 143px;}
    #sortable1 li, #sortable2 li, #sortable3 li { margin: 5px; padding: 5px; font-size: 1.2em; width: 120px; }

    #draggable { width: 150px; height: 150px; padding: 0.5em; }
    #draggable, #draggable2 { margin-bottom:20px; }
    #draggable { cursor: n-resize; }
    #draggable2 { cursor: e-resize; }
    #containment-wrapper { width: 95%; height:150px; border:2px solid #ccc; padding: 10px; }             
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("ul.droptrue").sortable({
                connectWith: "ul"
            });

            $("#sortable1, #sortable2, #sortable3").disableSelection();

            $("#draggable").draggable();
            //$("#draggable").draggable({ revert: true });
            //$("#draggable").draggable({ cursor: "move", cursorAt: { top: 5, left: 5} });
            $("#draggable2").draggable({ containment: "parent" });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="margin: 0 margin;">
        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" style="margin-left:270px;">
                <asp:Label ID="Label1" runat="server" Text="Examen de conocimiento de árboles" Font-Size="X-Large" ForeColor="#FF6600" Font-Bold="True" /><br />
                <asp:Button ID="Button1" runat="server" class="btn btn-info btn-lg" Text="1"/>
                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-lg" Text="2"/>
                <asp:Button ID="Button3" runat="server" class="btn btn-info btn-lg" Text="3"/>
                <asp:Button ID="Button4" runat="server" class="btn btn-info btn-lg" Text="4"/>
                <asp:Button ID="Button5" runat="server" class="btn btn-info btn-lg" Text="5"/>
                <asp:Button ID="Button6" runat="server" class="btn btn-info btn-lg" Text="6"/>
            </div>
            <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10" style="float:right;">
                <asp:ScriptManager ID="sp" runat="server"></asp:ScriptManager>
                <asp:Timer ID="timerTest" runat="server" Interval="1000" OnTick="timerTest_tick"></asp:Timer>
                <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional" style="float:right; background:yellow;">
                    <ContentTemplate>
                        <asp:Literal ID="litMsg" runat="server" ></asp:Literal>                                                                
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="timerTest" EventName="tick" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
        
</asp:Content>
