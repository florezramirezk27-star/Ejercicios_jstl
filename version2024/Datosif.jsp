<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 4 - Datosif</title>
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
                <button class="btn btn-secondary" type="button" onclick="window.location.href='index.jsp'">Volver al Inicio</button>
            </form>
        </div>
    </nav>

    <div id="contenedor" class="d-flex flex-column justify-content-between align-items-center">
        <h1>Datos de una Persona</h1>
        <div class="container shadow p-3 mb-1 bg-white" style="width: 25rem">
            <form action="Procesarif.jsp" name="persona" method="post">
                <div id="titulo" class="mt-3">
                    <center><h4>Ingrese los datos de la persona</h4></center>
                    <hr>
                </div>
                <div id="numeros">
                    <div class="input-group mb-2">
                        <span class="input-group-text">Nombre:</span>
                        <input type="text" name="nombre" id="nombre" placeholder="Digite el Nombre" class="form-control rounded-pill">
                    </div>
                    <div class="input-group mb-2">
                        <span class="input-group-text">Primer Apellido:</span>
                        <input type="text" name="apellido1" id="apellido1" placeholder="Primer Apellido" class="form-control rounded-pill">
                    </div>
                    <div class="input-group mb-2">
                        <span class="input-group-text">Segundo Apellido:</span>
                        <input type="text" name="apellido2" id="apellido2" placeholder="Segundo Apellido" class="form-control rounded-pill">
                    </div>
                </div>
                <div class="d-flex flex-column">
                    <br>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-success" name="enviar">Enviar Informacion</button>
                    </div>
                    <br>
                    <c:if test="${not empty param.error}">
                        <div class="alert alert-danger">
                            <strong>Error!</strong> <c:out value="${param.error}"/>
                            <br>
                        </div>
                    </c:if>
                </div>
            </form>
        </div>
    </div>

    <br><br><br>
    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
