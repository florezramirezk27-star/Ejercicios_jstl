<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
    <title>Guía 2006 - Ejercicios JSTL</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light">
    <div id="encabezado" class="bg-dark p-3 mb-4 w-100 d-flex flex-row justify-content-between align-items-center">
        <div>
            <h3 class="text-white mb-0"><i class="fas fa-book-open"></i> Guía 2006</h3>
        </div>
        <div>
            <a href="../index.jsp" class="btn btn-outline-light rounded-pill">Inicio</a>
        </div>
    </div>

    <div class="container py-4">
        <h1 class="text-center mb-4">Ejercicios JSTL - Guía 2006</h1>
        <div class="row g-4">
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 1</h4>
                        <p class="text-muted">c:out</p>
                        <a href="Ejercicio1.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 2</h4>
                        <p class="text-muted">c:set y parámetros</p>
                        <a href="Ejercicio2.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 3</h4>
                        <p class="text-muted">c:if y c:redirect</p>
                        <a href="Ejercicio3.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 4</h4>
                        <p class="text-muted">c:choose when otherwise</p>
                        <a href="Ejercicio4.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 5</h4>
                        <p class="text-muted">c:catch</p>
                        <a href="Ejercicio5.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 6</h4>
                        <p class="text-muted">c:forEach</p>
                        <a href="Ejercicio6.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 7</h4>
                        <p class="text-muted">c:forTokens</p>
                        <a href="Ejercicio7.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <h4>Ejercicio 8</h4>
                        <p class="text-muted">SQL JSTL</p>
                        <a href="Ejercicio8.jsp" class="btn btn-outline-dark rounded-pill">Ver</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-5">
        <div class="bg-dark d-flex align-items-center justify-content-center p-4">
            <p class="text-center mb-0">Guía 2006 || KEVIN FLOREZ</p>
        </div>
    </footer>
</body>
</html>