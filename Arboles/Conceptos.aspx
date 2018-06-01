<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Conceptos.aspx.cs" Inherits="Arboles.Conceptos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" style="margin: 50px 0px;">
        <asp:Panel ID="PanelInicial" runat="server">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4">
                    <asp:Image ID="bien" runat="server" ImageUrl="~/Styles/assets/img/flat-book.png"
                        class="img-responsive center-box" Style="" />
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-6 text-justify lead">
                    En este apartado le va a permitir adquirir conocimientos acerca de árboles, partes,
                    clasificación, propiedades que más adelante serán evaluados".<br />
                    <br />
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-center lead">
                    <asp:Button ID="btn_start" runat="server" class="btn btn-primary btn-lg" Text="EMPEZAR"
                        OnClick="btn_start_Click" />
                </div>
            </div>
        </asp:Panel>
        <!--Conceptos Árboles-->
        <div class="row">
            <asp:Panel ID="PanelDefinicion" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-4">
                    <div class="container-fluid">
                        <div class="media media-hover">
                            <div class="media-left media-middle">
                                <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right"
                                    title="Más información del libro">
                                    <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48"
                                        height="48">
                                </a>&nbsp;&nbsp;</div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    1 - Definición</h4>
                                <div class="pull-left">
                                    <strong>Los Árboles son las estructuras de datos mas utilizadas, pero también una de
                                        las mas complejas, se caracterizan por almacenar sus nodos en forma jerárquica y
                                        no en forma lineal como las Listas Ligadas, Colas,Pilas,etc</strong><br>
                                    <asp:Button ID="btnarboles" runat="server" Text="Más información" class="btn btn-info btn-xs"
                                        Style="margin-right: 10px;" data-toggle="tooltip" data-placement="right" OnClick="btnarboles_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelCarouselConceptos" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-8">
                    <div class="thumbnail">
                        <div id="Conceptos" class="carousel slide" data-ride="carousel">
                            <!-- Carousel indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Conceptos" data-slide-to="0" class="active"></li>
                                <li data-target="#Conceptos" data-slide-to="1"></li>
                                <li data-target="#Conceptos" data-slide-to="2"></li>
                            </ol>
                            <!-- Carousel items -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <h3>
                                        Árboles</h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Arbol" ImageUrl="~/Styles/assets/img/Img1.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        Los Árboles son las estructuras de datos mas utilizadas, pero también una de las
                                        mas complejas, Los Árboles se caracterizan por almacenar sus nodos en forma jerárquica
                                        y no en forma lineal como las Listas Ligadas, Colas,Pilas,etc., de las cuales ya
                                        hemos hablado en días pasados.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Listas ligadas
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image1" ImageUrl="~/Styles/assets/img/Img2.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        Es la variante mas simple que existe pues en esta estructura de datos tenemos un
                                        conjunto de nodos que están enlazados solo con el nodo siguiente de tal forma que
                                        si queremos recorrer la colección lo haremos del primero hasta el último pero no
                                        podremos regresar.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Colas
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image2" ImageUrl="~/Styles/assets/img/Img3.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        El elemento que entre primero a la Cola sera el primero que salga y el último que
                                        entre sera el último en salir.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Pilas
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image3" ImageUrl="~/Styles/assets/img/Img4.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        El elemento último en entrar es el primero en salir. Son estructuras de datos dinámicas
                                        que nos permiten agregar cuantos elementos queramos a la Pila, sin embargo esto
                                        no es del todo cierto ya que las Pilas pueden estar limitadas por el espacio en
                                        memoria que el programa tenga o que nosotros definamos el máximo de elementos que
                                        puede contener la Pila.
                                    </div>
                                </div>
                            </div>
                            <!-- Carousel Controls -->
                            <a class="carousel-control left" href="#Conceptos" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                            </span></a><a class="carousel-control right" href="#Conceptos" data-slide="next"><span
                                class="glyphicon glyphicon-chevron-right"></span></a>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <!--Conceptos Estructura-->
        <div class="row">
            <asp:Panel ID="PanelDefinicionEstructura" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-4">
                    <div class="container-fluid">
                        <div class="media media-hover">
                            <div class="media-left media-middle">
                                <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right"
                                    title="Más información del libro">
                                    <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48"
                                        height="48">
                                </a>&nbsp;&nbsp;</div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    2 - Estructura</h4>
                                <div class="pull-left">
                                    <strong>Para comprender mejor que es un árbol comenzaremos explicando como está estructurado.</strong><br>
                                    <asp:Button ID="btnestructura" runat="server" Text="Más información" class="btn btn-info btn-xs"
                                        Style="margin-right: 10px;" data-toggle="tooltip" data-placement="right" OnClick="btnestructura_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelCarouselEstructura" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-8">
                    <div class="thumbnail">
                        <div id="Conceptos" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Conceptos" data-slide-to="0" class="active"></li>
                                <li data-target="#Conceptos" data-slide-to="1"></li>
                                <li data-target="#Conceptos" data-slide-to="2"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <h3>
                                        Partes</h3>
                                    <div class="media-right media-middle">
                                        <strong>Nodos:</strong> Se le llama Nodo a cada elemento que contiene un Árbol.<br>
                                        <strong>Nodo Raíz:</strong> Se refiere al primer nodo de un Árbol, Solo un nodo
                                        del Árbol puede ser la Raíz.
                                        <br>
                                        <strong>Nodo Padre:</strong> Se utiliza este termino para llamar a todos aquellos
                                        nodos que tiene al menos un hijo.<br></br>
                                        <strong>Nodo Hijo:</strong> Los hijos son todos aquellos nodos que tiene un padre.<br>
                                        <strong>Nodo Hermano:</strong> Los nodos hermanos son aquellos nodos que comparte
                                        a un mismo padre en común dentro de la estructura.<br>
                                        <strong>Nodo Hoja:</strong> Son todos aquellos nodos que no tienen hijos, los cuales
                                        siempre se encuentran en los extremos de la estructura.<br>
                                        <strong>Nodo Rama:</strong> Estos son todos aquellos nodos que no son la raíz y
                                        que ademas tiene al menos un hijo.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Tipos de nodos en un Árbol
                                    </h3>
                                    <div class="media-right media-middle">
                                        <asp:Image ID="Image4" ImageUrl="~/Styles/assets/img/Est1.PNG" runat="server" />
                                        <asp:Image ID="Image5" ImageUrl="~/Styles/assets/img/Est2.PNG" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#Conceptos" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                            </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                                href="#Conceptos" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                </span><span class="sr-only">Next</span> </a>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <!--Conceptos Propiedades-->
        <div class="row">
            <asp:Panel ID="PanelDefinicionPropiedades" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-4">
                    <div class="container-fluid">
                        <div class="media media-hover">
                            <div class="media-left media-middle">
                                <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right"
                                    title="Más información del libro">
                                    <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48"
                                        height="48">
                                </a>&nbsp;&nbsp;</div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    3 - Propiedades</h4>
                                <div class="pull-left">
                                    <strong>Los arboles a demas de los nodos tiene otras propiedades importantes que son
                                        utilizadas en diferente ámbitos.</strong><br>
                                    <asp:Button ID="btnpropiedades" runat="server" Text="Más información" class="btn btn-info btn-xs"
                                        Style="margin-right: 10px;" data-toggle="tooltip" data-placement="right" OnClick="btnpropiedades_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelCarouselPropiedades" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-8">
                    <div class="thumbnail">
                        <div id="Conceptos" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Conceptos" data-slide-to="0" class="active"></li>
                                <li data-target="#Conceptos" data-slide-to="1"></li>
                                <li data-target="#Conceptos" data-slide-to="2"></li>
                                <li data-target="#Conceptos" data-slide-to="3"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <h3>
                                        Nivel y Altura</h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image7" ImageUrl="~/Styles/assets/img/Prop1.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        <strong>Nivel:</strong> Nos referimos como nivel a cada generación dentro del árbol.
                                        Por ejemplo, cuando a un nodo hoja le agregamos un hijo, el nodo hoja pasa a ser
                                        un nodo rama pero a demas el árbol crece una generación por lo que el Árbol tiene
                                        un nivel mas.Cada generación tiene un número de Nivel distinto que las demas generaciones.
                                        -Un árbol vacío tiene 0 niveles
                                        <br />
                                        -El nivel de la Raíz es 1
                                        <br />
                                        -El nivel de cada nodo se calculado contando cuantos nodos existen sobre el, hasta
                                        llegar a la raíz + 1, y de forma inversa también se podría, contar cuantos nodos
                                        existes desde la raíz hasta el nodo buscado + 1. <br />
                                        <strong>Altura:</strong>Le llamamos
                                        Altura al número máximo de niveles de un Árbol. La altura es calculado mediante
                                        recursividad tomando el nivel mas grande de los dos sub-árboles de forma recursiva
                                        de la siguiente manera: <br />
                                        altura = max(altura(hijo1), altura(hijo2),altura(hijoN))+ 1
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Peso
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image6" ImageUrl="~/Styles/assets/img/Prop2.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        <strong>Peso:</strong> Conocemos como peso a el número de nodos que tiene un Árbol. 
                                        Este factor es importante por que nos da una idea del tamaño del árbol y el tamaño en 
                                        memoria que nos puede ocupar en tiempo de ejecución(Complejidad Espacial en análisis 
                                        de algoritmos.)
                                        <br />
                                        El peso se puede calcular mediante cualquier tipo de recorrido el cual valla contando 
                                        los nodo a medida que avanza sobre la estructura. El peso es un árbol es igual a la 
                                        suma del peso de los sub-árboles hijos + 1 <br />
                                        peso = peso(hijo1) + peso(hijo2) + peso(hijoN)+ 1
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Orden
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image8" ImageUrl="~/Styles/assets/img/Prop3.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        <strong>Orden:</strong> El Orden de un árbol es el número máximo de hijos que puede tener un Nodo.
                                        <br />
                                        Notemos que un Árbol con Orden = 1 no tendría sentido ya que seria una estructura 
                                        lineal. ya que cada nodo solo podría tener un Hijo y tendríamos un Árbol lineal.<br />
                                        Este valor no lo calculamos, si no que ya lo debemos conocer cuando diseñamos nuestra 
                                        estructura, ya que si queremos calcular esto lo que obtendremos es el grado.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Grado
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image9" ImageUrl="~/Styles/assets/img/Prop4.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        <strong>Grado:</strong> El grado se refiere al número mayor de hijos que tiene alguno de los nodos del Árbol y esta limitado por el Orden, ya que este indica el número máximo de hijos que puede tener un nodo.
                                        <br />
                                        El grado se calcula contando de forma recursiva el número de hijos de cada sub-árbol hijo y el numero de hijos del nodo actual para tomar el mayor, esta operación se hace de forma recursiva para recorrer todo el árbol.<br />
                                        grado = max(contarHijos(hijo1),contarHijos(hijo2), contarHijos(hijoN), contarHijos(this))
                                    </div>
                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#Conceptos" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                            </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                                href="#Conceptos" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                </span><span class="sr-only">Next</span> </a>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <!--Conceptos Tipos de Arboles-->
        <div class="row">
            <asp:Panel ID="PanelDefinicionTipos" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-4">
                    <div class="container-fluid">
                        <div class="media media-hover">
                            <div class="media-left media-middle">
                                <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right"
                                    title="Más información del libro">
                                    <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48"
                                        height="48">
                                </a>&nbsp;&nbsp;</div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    4 - Tipos</h4>
                                <div class="pull-left">
                                    <strong>Existen 2 tipos de árboles que son los Árboles n-arios y Árboles binarios.</strong><br>
                                    <asp:Button ID="btntipos" runat="server" Text="Más información" class="btn btn-info btn-xs"
                                        Style="margin-right: 10px;" data-toggle="tooltip" data-placement="right" OnClick="btntipos_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelCarouselTipos" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-8">
                    <div class="thumbnail">
                        <div id="Conceptos" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Conceptos" data-slide-to="0" class="active"></li>
                                <li data-target="#Conceptos" data-slide-to="1"></li>
                                <li data-target="#Conceptos" data-slide-to="2"></li>
                                <li data-target="#Conceptos" data-slide-to="3"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <h3>
                                        Árbol n-ario</h3>
                                    <div class="media-right media-middle">
                                        los arboles n-arios son aquellos arboles donde el número máximo de hijos por nodo es 
                                        de N, en la imágen por grados podemos apreciar dos árboles con grado 2 y grado 3, estos dos 
                                        arboles también los podemos definir como Árbol n-ario con n = 2 y n=3 respectivamente.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Árboles binarios
                                    </h3>
                                    <div class="media-left media-middle">
                                        <asp:Image ID="Image10" ImageUrl="~/Styles/assets/img/Tipos1.PNG" runat="server" />
                                    </div>
                                    <div class="media-right media-middle">
                                        Esta estructura se caracteriza por que cada nodo solo puede tener máximo 2 hijo, dicho de otra manera es un Árbol n-ario de Grado 2.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Árboles binarios
                                    </h3>
                                    <div class="media-right media-middle">
                                        <strong>Árbol binario lleno:</strong> Es aquel que el que todos los nodos tiene cero o 2 hijos con excepción de la Raíz.
                                        <asp:Image ID="Image11" ImageUrl="~/Styles/assets/img/Tipos2.PNG" runat="server" />
                                        Podemos apreciar que el árbol de la derecha no esta lleno ya que uno de sus nodos no 
                                        cumple con la condición cero o 2 hijos. ya que el nodo C solo tiene un hijo.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Árboles binarios
                                    </h3>
                                    <div class="media-right media-middle">
                                        <strong>Árbol binario perfecto:</strong> Es un Árbol lleno en donde todos las Hojas están en el mismo Nivel.
                                        <asp:Image ID="Image12" ImageUrl="~/Styles/assets/img/Tipos3.PNG" runat="server" />
                                        En la imagen podemos apreciar que el árbol de la izquierda tiene todas sus hojas al 
                                        mismo nivel y que ademas esta lleno, lo que lo convierte en un árbol binario perfecto. 
                                        Sin embargo, del lado derecho podemos ver que aunque el árbol esta lleno no tiene todas 
                                        las hojas al mismo nivel lo que hace que no sea un árbol binario perfecto pero si lleno.
                                    </div>
                                </div>
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#Conceptos" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                            </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                                href="#Conceptos" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                </span><span class="sr-only">Next</span> </a>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
        <!--Conceptos Recorridos-->
        <div class="row">
            <asp:Panel ID="PanelDefinicionRecorridos" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-4">
                    <div class="container-fluid">
                        <div class="media media-hover">
                            <div class="media-left media-middle">
                                <a href="#!" class="tooltips-general" data-toggle="tooltip" data-placement="right"
                                    title="Más información del libro">
                                    <img class="media-object" src="Styles/assets/img/book.png" alt="Libro" width="48"
                                        height="48">
                                </a>&nbsp;&nbsp;</div>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    5 - Recorridos</h4>
                                <div class="pull-left">
                                    <strong>Podemos catalogar las búsqueda en dos tipos, las búsqueda en profundidad y las búsquedas en amplitud.</strong><br>
                                    <asp:Button ID="btnrecorridos" runat="server" Text="Más información" class="btn btn-info btn-xs"
                                        Style="margin-right: 10px;" data-toggle="tooltip" data-placement="right" OnClick="btnrecorridos_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="PanelCarouselRecorridos" runat="server">
                <div class="col-sm-6 col-md-5 col-lg-8">
                    <div class="thumbnail">
                        <div id="Conceptos" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Conceptos" data-slide-to="0" class="active"></li>
                                <li data-target="#Conceptos" data-slide-to="1"></li>
                                <li data-target="#Conceptos" data-slide-to="2"></li>
                                <li data-target="#Conceptos" data-slide-to="3"></li>
                                <li data-target="#Conceptos" data-slide-to="4"></li>
                            </ol>
                            <!-- Wrapper for slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <h3>
                                        Recorridos</h3>
                                    <div class="media-right media-middle">
                                        Los recorridos son algoritmos que nos permiten recorrer un árbol en un orden especifico,
                                         los recorridos nos pueden ayudar encontrar un nodo en el árbol, o buscar una posición determinada para insertar 
                                         o eliminar un nodo.
                                         Básicamente podemos catalogar las búsqueda en dos tipos, las búsqueda en profundidad y las búsquedas en amplitud.
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Búsqueda en profundidad
                                    </h3>
                                    <div class="media-right media-middle">
                                        <strong>Recorrido Pre-Orden :</strong> El recorrido inicia en la Raíz y luego se 
                                        recorre en pre-orden cada unos de los sub-árboles de izquierda a derecha.
                                        Esta definición puede ser un poco compleja de entender por lo que mejor les dejo la siguiente imagen.
                                        <asp:Image ID="Image13" ImageUrl="~/Styles/assets/img/Recor1.PNG" runat="server" />
                                        <asp:Image ID="Image16" ImageUrl="~/Styles/assets/img/Recor2.PNG" runat="server" />
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Búsqueda en profundidad
                                    </h3>
                                    <div class="media-right media-middle">
                                        <strong>Recorrido Pos-Orden :</strong> Se recorre el pos-orden cada uno de los sub-árboles y al final se recorre la raíz.
                                        Para comprender mejor esta definición observemos la siguiente imagen:<br />
                                        <asp:Image ID="Image14" ImageUrl="~/Styles/assets/img/Recor3.PNG" runat="server" />
                                        <asp:Image ID="Image17" ImageUrl="~/Styles/assets/img/Recor4.PNG" runat="server" />
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Búsqueda en profundidad
                                    </h3>
                                    <div class="media-right media-middle">
                                        <strong>Recorrido in-Orden :</strong> Se recorre en in-orden el primer sub-árbol, luego se recorre la raíz y al final se recorre en in-orden los demas sub-árboles.<br />
                                        <asp:Image ID="Image15" ImageUrl="~/Styles/assets/img/Recor5.PNG" runat="server" />
                                        <asp:Image ID="Image18" ImageUrl="~/Styles/assets/img/Recor6.PNG" runat="server" />
                                    </div>
                                </div>
                                <div class="item">
                                    <h3>
                                        Búsqueda en Amplitud
                                    </h3>
                                    <div class="media-right media-middle">
                                        Se recorre primero la raíz, luego se recorren los demas nodos ordenados por el nivel 
                                        al que pertenecen en orden de Izquierda a derecha.
                                        Este tipo de búsqueda se caracteriza por que la búsqueda se hace nivel por nivel y de 
                                        izquierda a derecha.
                                        <asp:Image ID="Image19" ImageUrl="~/Styles/assets/img/Recor7.PNG" runat="server" /><br />
                                        En la imagen se observa como es que un nodo es buscado mediante la búsqueda en profundidad.
                                        <asp:Image ID="Image20" ImageUrl="~/Styles/assets/img/Recor8.PNG" runat="server" /><br />
                                        En la imagen podemos observa que el árbol es recorrido en su totalidad pero esto no siempre es a sí, ya que el algoritmo se detiene cuando el elemento buscado es encontrado.
                                    </div>
                                </div>
                                
                            </div>
                            <!-- Left and right controls -->
                            <a class="left carousel-control" href="#Conceptos" data-slide="prev"><span class="glyphicon glyphicon-chevron-left">
                            </span><span class="sr-only">Previous</span> </a><a class="right carousel-control"
                                href="#Conceptos" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                                </span><span class="sr-only">Next</span> </a>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>

    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#Conceptos").carousel();

            //Carousel Controls
            $(".left").click(function () {
                $("#Conceptos").carousel('prev');
            });
            $(".right").click(function () {
                $("#Conceptos").carousel('next');
            });

            //        //Carousel Indicators
            //        $(".slide-1").click(function () {
            //            $("#DemoCarousel").carousel(0);
            //        });
            //        $(".slide-2").click(function () {
            //            $("#DemoCarousel").carousel(1);
            //        });
            //        $(".slide-3").click(function () {
            //            $("#DemoCarousel").carousel(2);
            //        });
        });
    </script>
</asp:Content>
