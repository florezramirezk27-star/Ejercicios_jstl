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
    <link rel="stylesheet" href="css/estilo.css">
    <title>Trabajo JSTL - Ejercicios</title>
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light">
    <div id="encabezado" class="bg-dark p-3 mb-4 w-100 d-flex flex-row justify-content-between align-items-center">
        <div>
            <h3 class="text-white mb-0"><i class="fas fa-code"></i> Trabajo JSTL</h3>
        </div>
        <div>
            <span class="text-white-50">JavaServer Pages Standard Tag Library</span>
        </div>
    </div>

    <div class="container py-4">
        <h1 class="text-center mb-1">Ejercicios JSTL</h1>
        <p class="text-center text-muted mb-4">Guía 2006 (8 ejercicios) + Guía 2024 (8 ejercicios) = 16 ejercicios</p>

        <div class="alert alert-warning text-center">
            <strong>Librerías instaladas:</strong>
            Versión 2006 usa JSTL 1.2 (javax, <code>jstl-1.2.jar</code>) → corre en <strong>Tomcat 8.5</strong>.
            <br>
            Versión 2024 usa JSTL 1.2 (javax, <code>jstl-1.2.jar</code>) → corre en <strong>Tomcat 8.5</strong>.
        </div>

        <div class="row g-4">
            <div class="col-12 col-md-6">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-book-open text-primary fa-3x mb-3"></i>
                        <h4 class="card-title">Guía 2006</h4>
                        <p class="card-text">Guia JSTL.pdf —KEVIN FLOREZ. Librería core: c:out, c:set, c:if, c:choose, c:catch, c:forEach, c:forTokens y SQL.</p>
                        <a href="version2006/index.jsp" class="btn btn-outline-primary rounded-pill">Ver ejercicios 2006</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="card card-ejercicio shadow-sm h-100">
                    <div class="card-body text-center">
                        <i class="fas fa-laptop-code text-success fa-3x mb-3"></i>
                        <h4 class="card-title">Guía 2024</h4>
                        <p class="card-text">GuiaJSTL 2.pdf — Kevin Florez. Uso de c:set con ámbitos, c:if y c:redirect, c:choose, c:catch, c:forEach, c:forTokens, SQL con sql:param e i18n.</p>
                        <a href="version2024/index.jsp" class="btn btn-outline-success rounded-pill">Ver ejercicios 2024</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-5">
        <div class="bg-dark d-flex align-items-center justify-content-center p-4">
            <p class="text-center mb-0">Derechos reservados || Trabajo JSTL - Programación en Java</p>
        </div>
    </footer>
</body>
</html>