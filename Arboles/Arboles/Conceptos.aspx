<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Conceptos.aspx.cs" Inherits="Arboles.Conceptos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<%--<style>
    .item {
        background: #333;
        text-align: center;
        height: 300px !important;
    }
    h2 {
        margin: 0;
        color: #888;
        padding-top: 100px;
        font-size: 50px;
    }
</style>--%>

<%--<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="..." alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="..." alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="..." alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>--%>

    <div class="container-fluid"  style="margin: 40px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="Styles/assets/img/checklist.png" alt="pdf" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a conceptos, donde podrá profundizar los temas de árboles para ingresar a cada tema seleccione en Más información.<br />
                </div>
            </div>
        </div>

       <div class="container-fluid">
            <div class="media media-hover">
                <div class="media-left media-middle">
                    <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right" title="Más información del libro">
                      <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48" height="48">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">1 - Definición</h4>
                    <div class="pull-left">
                        <strong>Los Árboles son las estructuras de datos mas utilizadas, pero también una de las mas complejas, Los Árboles se caracterizan por almacenar sus nodos en forma jerárquica y no en forma lineal como las Listas Ligadas, Colas,Pilas,etc<br>
                    </div>
                    <p class="text-center pull-right">
                        <a href="#!" class="btn btn-info btn-xs" style="margin-right: 10px;"><i class="zmdi zmdi-info-outline"></i> &nbsp;&nbsp; Más información</a>
                    </p>
                </div>
            </div>
           
            <div class="media media-hover">
                <div class="media-left media-middle">
                    <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right" title="Más información del libro">
                      <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48" height="48">
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">2 - Recorridos</h4>
                    <div class="pull-left">
                        <strong>Los recorridos son algoritmos que nos permiten recorrer un árbol en un orden especifico, los recorridos nos pueden ayudar encontrar un nodo en el árbol, o buscar una posición determinada para insertar o eliminar un nodo.
                            Básicamente podemos catalogar las búsqueda en dos tipos, las búsqueda en profundidad y las búsquedas en amplitud.<br>
                    </div>
                    <p class="text-center pull-right">
                        <a href="#!" class="btn btn-info btn-xs" style="margin-right: 10px;"><i class="zmdi zmdi-info-outline"></i> &nbsp;&nbsp; Más información</a>
                    </p>
                </div>
            </div>
        </div>
   
   <%--<div class="thumbnail">
    <div id="DemoCarousel" class="carousel slide" data-interval="2000" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#DemoCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#DemoCarousel" data-slide-to="1"></li>
            <li data-target="#DemoCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <h2>Slide 1</h2>
                <div class="carousel-caption">
                    <h3>This is the First Label</h3>
                    <p>The Content of the First Slide goes in here</p>
                </div>
            </div>
            <div class="item">
                <h2>Slide 2</h2>
                <div class="carousel-caption">
                    <h3>This is the Second Label</h3>
                    <p>The Content of the second Slide goes in here</p>
                </div>
            </div>
            <div class="item">
                <h2>Slide 3</h2>
                <div class="carousel-caption">
                    <h3>This is the Third Label</h3>
                    <p>The Content of the Third Slide goes in here</p>
                </div>
            </div>
        </div>
        <!-- Carousel Controls -->
        <a class="carousel-control left" href="#DemoCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#DemoCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#DemoCarousel").carousel();

        //Carousel Controls
        $(".left").click(function () {
            $("#DemoCarousel").carousel('prev');
        });
        $(".right").click(function () {
            $("#DemoCarousel").carousel('next');
        });

        //Carousel Indicators
        $(".slide-1").click(function () {
            $("#DemoCarousel").carousel(0);
        });
        $(".slide-2").click(function () {
            $("#DemoCarousel").carousel(1);
        });
        $(".slide-3").click(function () {
            $("#DemoCarousel").carousel(2);
        });
    });
</script>--%>
</asp:Content>


