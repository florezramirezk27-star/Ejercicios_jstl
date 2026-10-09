<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 8 - SQL JSTL</title>
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
        <div class="card shadow-lg p-5 m-3" style="width: 32rem;">
            <h3 class="text-center">Datos personales</h3>
            <form role="form" name="persona" action="Procesarinfo.jsp" method="POST">
                <div class="mb-3">
                    <label for="nombres" class="form-label">Ingrese su nombre:</label>
                    <input type="text" class="form-control rounded-pill" name="nombres" id="nombres" placeholder="Nombre">
                </div>
                <div class="mb-3">
                    <label for="apellido1" class="form-label">Ingrese su primer apellido:</label>
                    <input type="text" class="form-control rounded-pill" id="apellido1" name="apellido1" placeholder="Primer apellido">
                </div>
                <div class="mb-3">
                    <label for="apellido2" class="form-label">Ingrese su segundo apellido:</label>
                    <input type="text" class="form-control rounded-pill" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                </div>
                <div class="mb-3">
                    <label for="edad" class="form-label">Ingrese su edad:</label>
                    <input type="text" class="form-control rounded-pill" name="edad" id="edad" placeholder="Edad">
                </div>
                <div class="d-flex justify-content-center">
                    <input type="submit" class="btn btn-outline-info rounded-pill m-2" value="Enviar">
                </div>
            </form>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 8 || sql:setDataSource</p>
    </footer>
</body>
</html>