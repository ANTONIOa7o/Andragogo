<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LIBRERIA</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
    <script src="JS/js.js"></script>
    <link rel="stylesheet" href="CSS/css.css">
</head>
<body>
<header>
        <div>



            <h1 class="titulo" id="navegador"><img src="images/lupa2.png" width="15%" class="box" /> -LIBRERIA- <img
                    src="images/biblioteca-digital.png" width="10%"></h1>

        </div>
    </header>
    <div>
        <nav class="navbar navbar-light">
            <a class="navbar-brand"> </a>



            <div class="container">
                <ul class="nav justify-content-center" id="navegador">
                    <li class="nav-item transicionL "><img src="images/libro.png" target="_blank" width="50" height="50"
                            alt="Buscar listado">
                        <a class="nav-link active" href="servlet?op=1" target="_blank">Listado</a>
                    </li>
                    <li class="nav-item transicionL"><img src="images/Alta.png" width="50" height="50"
                            alt="Dar de Alta">
                        <a class="nav-link" href="alta.jsp" target="_blank">Alta Libro</a>
                    </li>
                    <li class="nav-item transicionL"><img src="images/Modificar.png" width="50" height="50"
                            alt="Modificar libro">
                        <a class="nav-link" href="modificar.jsp" target="_blank">Modificar Libro</a>
                    </li>
                    <li class="nav-item transicionL"><img src="images/eliminar-simbolo.png" width="50" height="50"
                            alt="Eliminar contenido">
                        <a class="nav-link" href="eliminar.jsp" target="_blank">Eliminar Libro</a>
                    </li>
                    <li class="nav-item transicionL"><img src="images/Consultar.png" width="50" height="50"
                            alt="Consultas">
                        <a class="nav-link active" href="consultaIsbn.jsp" target="_blank">B??squeda: ISBN</a>
                    </li>
                    <li class="nav-item transicionL"><img src="images/libros1.png" width="50" height="50"
                            alt="Ref de libros">
                        <a class="nav-link active" href="buscarTitulo.jsp" target="_blank">B??squeda: Titulo</a>
                    </li>
                    <li class="nav-item transicionL"><img src="images/buscar.png" width="50" height="50" alt="Buscar">
                        <a class="nav-link active" href="buscarId.jsp" target="_blank">B??squeda:ID</a>
                    </li>
                </ul>



            </div>
        </nav>
    </div>

    <section>
        <div class="container">
            <h2 class=" transicionT titulo2">NOVEDADES :</h2>

            <article class="transicionI titulo2">NUEVAS ADQUISICIONES</article>
            <div class="card alineacion" style="width: 18rem;">
                <img src="images/1984.jpg" class="card-img-top capas" alt="...">
                <div class="card-body">
                    <h5 class="card-title">1984</h5>
                    <p class="card-text">En 1984, Londres est?? controlada por un gobieno totalitario. El Gran
                        Hermano lo vigila absolutamente todo. La mano ejecutora, la Polic??a del Pensamiento,
                        controla cada aspecto de la vida de los ciudadanos. Un hombre llamado Winston Smith,
                        trabajador del Ministerio de la Verdad, intentar?? rebelarse contra el r??gimen opresor..</p>
                </div class="envoltorio">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Autor: GEORGE ORWELL</li>
                    <li class="list-group-item">Editorial: ALIANZA</li>
                    <li class="list-group-item">Precio:18,95 ???</li>
                </ul>
                <div class="card-body">
                    <a href="servlet?op=6&codigo=5">
							<img alt="Comprar" src="images/addCarrito.jpg" 
								title="Agregar" width="50px" />
						</a>

                </div>
            </div>
            <div class="card alineacion" style="width: 18rem;">
                <img src="images/lareinaroja.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">La reina Roja</h5>
                    <p class="card-text">es una novela dist??pica llena de acci??n que a pesar de contener una peque??a
                        dosis de ???amor rom??ntico??? tiene un cierto inter??s en el sentido de que su personaje
                        protagonista, Mare Barrow, una joven de sangre roja que al mismo tiempo posee las
                        habilidades de los de sangre plateada, es una anomal??a y aunque incauta y demasiado cr??dula
                        en un principio, ir?? ganando peso..</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Autor: VICTORIA AVEYARD</li>
                    <li class="list-group-item">Editorial: PLANETA</li>
                    <li class="list-group-item">Precio:22,95 ???</li>
                </ul>
                <div class="card-body">
                   <a href="servlet?op=6&codigo=9">
							<img alt="Comprar" src="images/addCarrito.jpg" 
								title="Agregar" width="50px" />
						</a>

                </div>
            </div>
            <div class="card alineacion" style="width: 18rem;">
                <img src="images/elmaestrodelprado.jpg" class="card-img-top capas" alt="...">
                <div class="card-body">
                    <h5 class="card-title">El maestro del pardo</h5>
                    <p class="card-text">Al m??s puro estilo de los relatos de enigmas de Javier Sierra. El maestro
                        del Prado presenta un apasionante recorrido por las historias m??s desconocidas y secretas de
                        una de las pinacotecas m??s importantes del mundo, el Museo del Prado. Una historia
                        fascinante de c??mo un aprendiz de escritor aprendi?? a mirar cuadros.</p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Autor: JAVIER SIERRA</li>
                    <li class="list-group-item">Editorial: SM</li>
                    <li class="list-group-item">Precio: 21,99 ???</li>
                </ul>
                <div class="card-body">
                   <a href="servlet?op=6&codigo=2">
							<img alt="Comprar " src="images/addCarrito.jpg" 
								title="Agregar" width="50px" />
						</a>

                </div>
            </div>
        </div>
        <article class="transicionI titulo2">TALLERES DE ESCRITURA</article>
        <div class="envoltorio bg-transparent border-success">
            <div class="cuadrado">
                <figure class="desliz"><img src="images/lanrracion.jpg" alt="" />
                    <figcaption>
                        <h3>la Narracion</h3>
                        <p>La palabra "sinopsis" proviene del griego y significa "con la vista". Una sinopsis
                            argumental es un texto en el que se resume la historia que se cuenta en una novela,
                            pel??cula o cualquier otro tipo de narraci??n.</p>
                    </figcaption>
                    <a href="#"></a>
                </figure>
            </div>
            <div class="cuadrado">
                <figure class="desliz"><img src="images/el-relato.jpg" alt="" />
                    <figcaption>
                        <h3>El relato </h3>
                        <p>El relato es una narraci??n estructurada en el que se representan sucesos mediante el
                            lenguaje. Este tipo de relato es el que se encuentra en todas las manifestaciones
                            literarias como la leyenda, f??bula, cuento, novela, epopeya, etc??tera. Y por lo general
                            se representa mediante la escritura.</p>
                    </figcaption>
                    <a href="#"></a>
                </figure>
            </div>
            <div class="cuadrado">
                <figure class="desliz"><img src="images/mitos.jpg" alt="" />
                    <figcaption>
                        <h3>Mitos,fabulas y leyendas</h3>
                        <p>F??BULA : Se entiende por f??bula una narraci??n, en verso, de personajes animales dotados
                            de cualidades humanas o que act??an como si fueran hombres. En prosa, estas narraciones
                            se denominan cuentos de animales. MITO : El mito ser??a, a la postre, una leyenda
                            localizada en regiones fuera del alcance humano, protagonizada por personajes divinos.
                        </p>
                    </figcaption>

                </figure>
            </div>
        </div>
        <article class="transicionI titulo2">CONFERENCIA ANIVERSARIO BENITO P??REZ GALDOS</article>
        <div class="envoltorio" style="float: right">
            <figure class="desliz cuadrado"><img src="images/galdosjpg.jpg" alt="" />
                <figcaption>
                    <h3>CONFERENCIA</h3>
                    <p>Gald??s ???bautizado como Benito Mar??a de los Dolores??? ??? ??? fue el d??cimo hijo de un coronel del
                        ej??rcito, Sebasti??n P??rez Mac??as, natural del municipio de Valsequillo de Gran Canaria, que
                        hab??a formado parte del batall??n de voluntarios conocido como La Granadera Canaria que luch??
                        en la Guerra de la Independencia ??? y de Dolores Gald??s Medina, natural de Las Palmas de Gran
                        Canaria aunque de origen guipuzcoano, mujer de ???fuerte car??cter???</p>
                </figcaption>
                <a href="#"></a>
            </figure>
        </div>

    </section>
    <aside>
        <p> <img class="alineacion" src="" href=""><br />

        </p>

    </aside>

    <footer>
        <div class="card text-center">
            <div class="card-header">

                <h5 class="card-title">CONTACTA</h5>

                <a href="#" class="btn btn">Correo electronico</a>
                <a href="#" class="btn btn">Facebook</a>
                <a href="#" class="btn btn">Instagram</a>

            </div>
            <div class="card-body">
                <p class="card-text">
                    MSL Formacion, S.l<br />
                    Marqu??s de Ahumada<br />
                    28014 Madrid<br />
                    <abbr title="Phone"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                            fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                        </svg>tfno: 91 854 36 55</abbr> </br>

                </p>
                <div class="container">

                    <a href="#" class="btn btn-secundary bg-success">SUBIR</a>

                </div>

                <div class="card-footer text-muted">

                </div>
            </div>
        </div>

    </footer>



    
</body>
</html>