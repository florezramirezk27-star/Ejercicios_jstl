<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 2 - c:set por ámbito</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light" style="min-height:100vh;">
    <c:set var="variableDePagina" scope="page">Esta informacion se guarda en la pagina</c:set>
    <c:set var="variableDeSesion" scope="session">Esta informacion se guarda en la sesion</c:set>
    <c:set var="variableDeAplicacion" scope="application">Esta informacion se guarda en la aplicacion</c:set>

    <div id="encabezado" class="bg-dark p-3 mb-4 w-100 d-flex flex-row justify-content-between align-items-center">
        <div>
            <img src="../img/javalog2.png" width="180" alt="Java">
        </div>
        <div>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill">Volver</a>
        </div>
    </div>

    <div class="container d-flex justify-content-center">
        <div class="card shadow-lg p-4" style="width: 30rem;">
            <h1 class="text-center">Uso de la etiqueta c:set</h1>
            <div class="panel panel-primary mt-3">
                <div class="panel-heading"><strong>Variables por ámbito</strong></div>
                <div class="panel-body">
                    <p class="text-center"><strong>page:</strong> ${variableDePagina}</p>
                    <p class="text-center"><strong>session:</strong> ${variableDeSesion}</p>
                    <p class="text-center"><strong>application:</strong> ${variableDeAplicacion}</p>
                </div>
            </div>
            <div class="text-center mt-3">
                <a href="Ejercicio2.jsp" class="btn btn-outline-dark rounded-pill">Volver</a>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 2 || c:set con scope</p>
    </footer>
</body>
</html>