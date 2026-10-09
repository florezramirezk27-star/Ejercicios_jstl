<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 4 - c:choose when otherwise</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light" style="min-height:100vh;">
    <div id="encabezado" class="bg-dark p-3 mb-4 w-100 d-flex flex-row justify-content-between align-items-center">
        <div>
            <img src="../img/javalog2.png" width="180" alt="Java">
        </div>
        <div>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill">Volver</a>
        </div>
    </div>

    <div class="container d-flex justify-content-center">
        <div class="card shadow-lg p-5 m-4">
            <h3 class="text-center">Página de prueba del uso de choose, when y otherwise</h3>
            <form role="form" name="lenguaje" action="ProcesarC2.jsp" method="POST">
                <div class="mb-4 text-center">
                    <label for="lenguaje" class="form-label">¿Cuál es tu lenguaje de programación favorito?</label>
                    <select name="lenguaje" id="lenguaje" class="form-control">
                        <option value="">--Seleccionar un Lenguaje</option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="Perl">Perl</option>
                    </select>
                </div>
                <div class="d-flex justify-content-center">
                    <input type="submit" class="btn btn-outline-info rounded-pill" value="Enviar">
                </div>
            </form>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 4 || c:choose / c:when / c:otherwise</p>
    </footer>
</body>
</html>