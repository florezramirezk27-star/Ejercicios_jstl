<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 2 - ProcesarC</title>
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
                <button class="btn btn-success" type="button" onclick="window.location.href='Datos.jsp'">Volver</button>
            </form>
        </div>
    </nav>
    <br><br><br>
    <center>
        <div class="container shadow p-3 mb-1 bg-white" style="width: 25rem">
            <h1>Imprimiendo parámetros con JSTL</h1>
            <div class="panel panel-warning">
                <div class="panel-heading">Imprimiendo parámetros con JSTL</div>
                <div class="panel-body">
                    <p>Nombre: <strong><c:out value="${param.nombre}"/></strong></p>
                    <p>Primer apellido: <strong><c:out value="${param.apellido1}"/></strong></p>
                    <p>Segundo apellido: <strong><c:out value="${param.apellido2}"/></strong></p>
                </div>
            </div>
            <a href="Datos.jsp" class="btn btn-success">Volver</a>
        </div>
    </center>
    <br><br><br>
    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
