<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar</title>
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
<script>
      
      alert("Estas seguro de eliminar este articulo");
      
</script>

<body>
    <div>
        <header>
            <h1 class="titulo" id="navegador">-ELIMINAR ENTRADA-<img src="images/biblioteca-digital.png" width="10%"></h1>
        </header>
        <nav>
          
        </nav>
        <section>
            <h2 class="nav-item transicionT titulo2" href="#">Introduce ID:</h2><br /><br />
            <div class="container columna">
                <form onsubmit="confirmar(event)" action="servlet" method="post" class="form-row align-items-center">
                    <fieldset>
                        <legend></legend>
                        <label> ID:</label>
                        <input type="number" id="id" name="codigo"  class="form-control" placeholder="ID" value=""
                            required="true" /></br><br /><br />




                         <input type="hidden" name="op" value="4"/>
                        <input type="submit" value="Eliminar" onclick="alert"/></br>

                    </fieldset>

                </form>


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