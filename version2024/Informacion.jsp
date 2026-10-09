<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../WEB-INF/jspf/conexion2024.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 9 - Base de datos JSTL</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
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
    <br>

    <div class="d-flex justify-content-center align-items-center container">
        <div class="container p-5 bg-light shadow-lg m-3">
            <div class="row">
                <div class="d-flex flex-column align-items-center">
                    <h3>Datos personales</h3>
                    <form role="form" name="persona" action="Procesarinfo.jsp" method="POST">
                        <div class="form-group m-3">
                            <label for="nombres">Ingrese su nombre:</label>
                            <input type="text" class="form-control rounded-pill" name="nombres" id="nombres" placeholder="Nombre">
                        </div>
                        <div class="form-group m-3">
                            <label for="apellido1">Ingrese su primer apellido:</label>
                            <input type="text" class="form-control rounded-pill" id="apellido1" name="apellido1" placeholder="Primer apellido">
                        </div>
                        <div class="form-group m-3">
                            <label for="apellido2">Ingrese su segundo apellido:</label>
                            <input type="text" class="form-control rounded-pill" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                        </div>
                        <div class="form-group m-3">
                            <label for="edad">Ingrese su edad:</label>
                            <input type="text" class="form-control rounded-pill" name="edad" id="edad" placeholder="Edad">
                        </div>
                        <div class="d-flex justify-content-center">
                            <input type="submit" class="btn btn-outline-success rounded-pill m-2" value="Enviar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap bg-dark text-white">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
