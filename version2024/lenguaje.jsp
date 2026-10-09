<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 5 - Lenguaje</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <header class="container-fluid bg-danger d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6">Ejercicios JSTL</p>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light p-3" id="menu">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <span class="fs-5 text-black fw-bold">Ejercicios JSTL</span>
            </a>
            <form class="d-flex">
                <button class="btn btn-success" type="button" onclick="window.location.href='index.jsp'">Volver al Inicio</button>
            </form>
        </div>
    </nav>
    <br><br><br>
    <center>
        <div class="container shadow p-3 mb-1 bg-white" style="width: 25rem">
            <h1>Lenguaje con JSTL</h1>
            <div class="panel panel-primary">
                <form role="form" name="lenguaje" action="ProcesarC2.jsp" method="POST">
                    <div class="form-group">
                        <label for="lenguaje">¿Cuál es tu lenguaje de programación favorito?</label>
                        <select name="lenguaje" id="lenguaje" class="form-control">
                            <option value="">--Seleccionar un Lenguaje</option>
                            <option value="Java">Java</option>
                            <option value="C++">C++</option>
                            <option value="Perl">Perl</option>
                        </select>
                    </div>
                    <br>
                    <input type="submit" class="btn btn-success" value="Enviar">
                </form>
            </div>
        </div>
    </center>
    <br><br><br>
    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
