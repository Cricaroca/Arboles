<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Examen Online</h2>

    <form id="Form1" runat="server">
    <p>En este apartado usted podrá determinar cuanto aprendio sobre
    árboles de decisión.
    </p>

    <p>Usted contará con un tiempo determinado para completar esta fase.
    </p>

    <p>Unicamente una vez acabado el tiempo o finalizado el examen usted
    podrá saber cuantas respuestas correctas obtuvo.
    </p>

    <p>La prueba contará con preguntas de selección múltiple con única respuesta,
    preguntas de selección múltiple con múltiple respuesta, preguntas de falso y
    verdadero, preguntas abiertas, ordenamiento y relaciones.
    </p>

    <p>Si quere continuar con el examen y esta de acuerdo con estas condiciones,
    por favor de click en boton.</p><br />


    <asp:Button ID="btn_start" runat="server" Text="Iniciar" />    
    
    <asp:GridView ShowHeader="false" ShowFooter="false" AutoGenerateColumns="false" ID="GridView1" runat="server" GridLines="None">
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
    <asp:Button ID="Button1" runat="server" Text="Submit"/>
    </form>
</asp:Content>
