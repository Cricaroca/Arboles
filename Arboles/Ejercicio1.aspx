<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="Arboles.Ejercicio1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
	<title>Binary Tree</title>
<!-- <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> -->
 	<script type="text/javascript" src="Scripts/jquery-1.6.2.js"></script> 
	<script type="text/javascript" src="Scripts/binary_node.js?x=1"></script>
	<script type="text/javascript" src="Scripts/binary_tree.js?x=1"></script>
	<script type="text/javascript" src="Scripts/binary_tree_drawer.js?x=1"></script>
	<script type="text/javascript" src="Scripts/binary_web.js?x=2"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Binary Tree</h1>
<p>A sample binary tree in CoffeeScript</p>
	
<form action="#">
    
	Value to add: <input type="text" id="newNode" />
	<input type="submit" id="submit" value="Add it!" />
</form>

<h2>Values in Tree</h2>
<div id="binaryTreeValues"></div>

<canvas id="theCanvas" width="600" height="600" style="border:1px dotted;">
HTML 5 Canvas is not supported in your browser
</canvas>
<p id="noCanvas"></p>
<br /><br />
    
<asp:Button ID="Button1" runat="server" Text="Siguiente" class="btn btn-warning" 
        onclick="Button1_Click" style="float:right;" Font-Size="XX-Large" />
</asp:Content>
