<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscar</title>
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
            <h1 class="titulo" id="navegador">-BUSCAR-<img src="images/biblioteca-digital.png" width="10%"></h1>
        </header>
        <nav>
            <p> Barra de navegacion</p>
        </nav>   
        <section>

            <h2 class="nav-item transicionT titulo2" href="#">Busqueda por ID:</h2><br /><br /><br />
            <div class="container columna">
                <form action="servlet" method="get" class="form-row align-items-center">
                    <fieldset>

                        <label>Introduce ID</label>
                        <input type="number" name="codigo" min="1" max="20"  class="form-control" placeholder="id"
                            required="true" />
                        <datalist id="titulolist">
                            <option value="" label="la "></option>
                           
                        </datalist><br />
                        <input type="hidden" name="op" value="8"/>
                        <input type="submit" value="Buscar" /></br>

                    </fieldset>

                </form>

            </div>

            <article></article>
        </section>
        <aside>
            <p> </p>
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