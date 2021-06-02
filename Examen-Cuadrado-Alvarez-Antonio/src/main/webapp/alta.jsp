<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Altas</title>
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
    <div>
        <header>
            <h1 class="titulo" id="navegador">-ALTAS-<img src="images/biblioteca-digital.png" width="10%"></h1>
            <p>
            </p>
        </header>
        <nav>

        </nav>
        <section>
            <h2 class="nav-item  transicionT titulo2" href="#">Alta Libro:</h2><br /><br /><br />
            <div class="container columna">
                <form action="servlet" method="post" class="form-row align-items-center">
                    <fieldset>
                        <legend>Datos Libro:</legend><br /><br />
                        <label> ID:</label>
                        <input type="number" name="codigo" min="1" max="20" class="form-control" placeholder="ID" value=""
                            required="true" /></br>
                        <label>Titulo</label>
                        <input type="text" name="titulo" id="titulo" list="titulo" class="form-control" placeholder="Titulo" value=""
                            required="true" />
                        <datalist id="titulolist">
                            <option value="" label="la "></option>
                           
                           
                         
                        </datalist><br />
                        <label>Autor:</label>
                        <input type="text" name="autor"  minlength="3" maxlength="30" required="true" value=""
                            class="form-control" placeholder="Autor" /></br>
                        <label>Editorial:</label>
                        <input type="text" name="editorial"  class="form-control" placeholder="Editorial" value=""
                            required="true" /></br></br></br></br>
                        <label> ISBN:</label>
                        <input type="text" name="isbn" min="1" max="40" class="form-control" placeholder="ISBN" value=""
                            required="true" /></br>
                        <label>Publicacion:</label>
                        <input type="number" name="publicacion" size="4" pattern="4" min="1" maxlength="2500" value=""
                            class="form-control" placeholder="Año Publicacion" required="true" /></br>
                        <label> Precio:</label>
                        <input type="number" name="precio"  min="1" max="100" class="form-control" placeholder="Precio" value=""
                            required="true" /></br>
                          <label> Descripcio</label>
                          <input type="text" name="descripcion"  class="form-control" placeholder="Descripcion" value="" requiered="true"/>


                        <input type="hidden" name="op" value="3"/>
                        <input type="submit" value="insertar" onclick=""/></br>

                    </fieldset>

                </form>

            </div>
            <article></article>
        </section>
        <aside>
            <p></p>
        </aside>

        <footer>
            <div class="card text-center">
                <div class="card-header">
                    <p class="card-text">
                        MSL Formacion, S.l<br />
                        Marqués de Ahumada<br />
                        28014 Madrid<br />
                        tfno: 91 854 36 55
                    </p>
                </div>
                <div class="card-body">  
                </div> <a href="#" class="btn btn-secundary bg-success">SUBIR</a>
                <div class="card-footer text-muted">
                </div>
            </div>
            
        </footer>



    </div>
</body>

</html>