<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Examen.aspx.cs" Inherits="Arboles.Examen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8" style="margin-left:390px;">
                <asp:Label ID="Label1" runat="server" ext="Examen de conocimiento de árboles" BorderStyle="None" Font-Size="X-Large" ForeColor="#FF6600" Font-Bold="True" /><br />
                <asp:Button ID="Button1" runat="server" class="btn btn-info btn-lg" Text="1" onclick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-lg" Text="2" onclick="Button2_Click"/>
                <asp:Button ID="Button3" runat="server" class="btn btn-info btn-lg" Text="3" onclick="Button3_Click"/>
                <asp:Button ID="Button4" runat="server" class="btn btn-info btn-lg" Text="4" onclick="Button4_Click"/>
                <asp:Button ID="Button5" runat="server" class="btn btn-info btn-lg" Text="5" onclick="Button5_Click"/>
                <asp:Button ID="Button6" runat="server" class="btn btn-info btn-lg" Text="6" onclick="Button6_Click"/>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <asp:Label ID="Primero" runat="server" Text="Preguntas de Selección Multiple con única respuesta" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#009900" />
                <asp:GridView ShowHeader="false" ShowFooter="false" AutoGenerateColumns="false" ID="GridView1" runat="server" GridLines="None" Visible="true">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label runat="server" ID="QuestionId" Text='<%# Eval("mcqo_id") %>' /><br />
                                <asp:Label runat="server" ID="Question" Text='<%# Eval("Question") %>' /><br />
                                <asp:RadioButton GroupName="a" runat="server" ID="answer1" Text='<%# Eval("answer1") %>' /><br />
                                <asp:RadioButton GroupName="a" runat="server" ID="answer2" Text='<%# Eval("answer2") %>' /><br />
                                <asp:RadioButton GroupName="a" runat="server" ID="answer3" Text='<%# Eval("answer3") %>' /><br />
                                <asp:RadioButton GroupName="a" runat="server" ID="answer4" Text='<%# Eval("answer4") %>' /><hr />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Button ID="Button7" runat="server" class="btn btn-success btn-lg" Text="Guardar y Continuar" 
                    onclick="Button7_Click"/>
            </div>
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <asp:Label ID="Segundo" runat="server" Text="Preguntas Abiertas con única respuesta" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#009900" Visible="false"/><br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/assets/img/arbol.png" Visible="false" style="margin-left:390px;" /><br /><br />
                <asp:Label runat="server" ID="Label2" Text="Por favor, escriba su respuesta de la siguiente manera: A,B,C..." Visible="false" />
                <asp:GridView ShowHeader="false" ShowFooter="false" 
                     AutoGenerateColumns="false" ID="GridView2" runat="server" GridLines="None" 
                     Visible="true">
                     <Columns>
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:Label runat="server" ID="QuestionId2" Text='<%# Eval("oq_id") %>' /><br />
                                 <asp:Label runat="server" ID="Question2" Text='<%# Eval("Question") %>' /><br />
                                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                             </ItemTemplate>
                         </asp:TemplateField>
                     </Columns>
                 </asp:GridView>
                 <asp:Button ID="Button8" runat="server" class="btn btn-success btn-lg" Text="Guardar y Continuar" 
                     onclick="Button8_Click" Visible="False"/>
            </div>
            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <asp:Label ID="Tercero" runat="server" Text="Preguntas de Falso y Verdadero con única respuesta" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#009900" Visible="false"/><br />
                <asp:GridView ShowHeader="false" ShowFooter="false" AutoGenerateColumns="false" ID="GridView3" runat="server" GridLines="None" Visible="false">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label runat="server" ID="QuestionId3" Text='<%# Eval("tfq_id") %>' /><br />
                                <asp:Label runat="server" ID="Question3" Text='<%# Eval("Question") %>' /><br />
                                <asp:RadioButton GroupName="b" runat="server" ID="ans1" Text='<%# Eval("answer1") %>' /><br />
                                <asp:RadioButton GroupName="b" runat="server" ID="ans2" Text='<%# Eval("answer2") %>' /><br />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Button ID="Button9" runat="server" class="btn btn-success btn-lg" Text="Guardar y Continuar" 
                     onclick="Button9_Click" Visible="False"/>
            </div>
        </div>
    </div>
</asp:Content>
