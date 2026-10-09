<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 3 - Procesar c:if</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body class="d-flex flex-column justify-content-center align-items-center bg-light" style="min-height:100vh;">
    <c:if test="${empty param.nombre}">
        <c:redirect url="Ejercicio3.jsp">
            <c:param name="error" value="Nombre obligatorio"/>
        </c:redirect>
    </c:if>
    <c:if test="${empty param.apellido1}">
        <c:redirect url="Ejercicio3.jsp">
            <c:param name="error" value="Primer apellido obligatorio"/>
        </c:redirect>
    </c:if>

    <div id="encabezado" class="bg-dark p-3 mb-4 w-100 d-flex flex-row justify-content-between align-items-center">
        <div>
            <img src="../img/javalog2.png" width="180" alt="Java">
        </div>
        <div>
            <a href="Ejercicio3.jsp" class="btn btn-outline-light rounded-pill">Atras</a>
        </div>
    </div>

    <div class="container d-flex flex-row justify-content-center align-items-center">
        <div class="card shadow-lg p-5 m-5 bg-white">
            <div class="panel panel-primary">
                <div class="panel-heading"><strong>Imprimiendo parámetros con JSTL</strong></div>
                <div class="panel-body">
                    <p class="text-center">Nombre: <strong><c:out value="${param.nombre}" /></strong></p>
                    <p class="text-center">Primer apellido: <strong><c:out value="${param.apellido1}" /></strong></p>
                    <p class="text-center">Segundo apellido: <strong><c:out value="${param.apellido2}" /></strong></p>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 3 || validación con c:if y c:redirect</p>
    </footer>
</body>
</html>