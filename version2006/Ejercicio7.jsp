<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 7 - c:forTokens</title>
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
        <div class="card shadow-lg p-5 m-3">
            <h3 class="text-center">c:forTokens Demo</h3>
            <form role="form" name="forTokensForm" action="ResultTokens.jsp" method="POST">
                <div class="mb-3">
                    <label for="delimText" class="form-label">Introduzca un texto con delimitador:</label>
                    <input type="text" class="form-control rounded-pill" name="delimText" id="delimText">
                </div>
                <div class="mb-3">
                    <label for="delim" class="form-label">Introduzca el delimitador:</label>
                    <input type="text" class="form-control rounded-pill" id="delim" name="delim">
                </div>
                <div class="d-flex justify-content-center">
                    <input type="submit" class="btn btn-outline-info rounded-pill" value="Tokenize">
                </div>
            </form>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 7 || c:forTokens</p>
    </footer>
</body>
</html>