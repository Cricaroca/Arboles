<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="Arboles.Ejercicio2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  #sortable1, #sortable2, #sortable3 { list-style-type: none; margin: 0; float: left; margin-right: 10px; background: #eee; padding: 5px; width: 143px;}
  #sortable1 li, #sortable2 li, #sortable3 li { margin: 5px; padding: 5px; font-size: 1.2em; width: 120px; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("ul.droptrue").sortable({
              connectWith: "ul"
          });

          $("ul.dropfalse").sortable({
              connectWith: "ul",
              dropOnEmpty: false
          });

          $("#sortable1, #sortable2, #sortable3").disableSelection();
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <ul id="sortable1" class="droptrue">
  <li class="ui-state-default">Can be dropped..</li>
  <li class="ui-state-default">..on an empty list</li>
  <li class="ui-state-default">Item 3</li>
  <li class="ui-state-default">Item 4</li>
  <li class="ui-state-default">Item 5</li>
</ul>
 
<ul id="sortable2" class="dropfalse">
  <li class="ui-state-highlight">Cannot be dropped..</li>
  <li class="ui-state-highlight">..on an empty list</li>
  <li class="ui-state-highlight">Item 3</li>
  <li class="ui-state-highlight">Item 4</li>
  <li class="ui-state-highlight">Item 5</li>
</ul>
 
<ul id="sortable3" class="droptrue">
</ul>
</asp:Content>
