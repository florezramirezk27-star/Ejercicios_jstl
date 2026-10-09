<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Internacionalización con JSTL</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <header class="container-fluid bg-danger d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6">Ejercicios JSTL - Internacionalización (I18N)</p>
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
    <br><br><br>

    <center>
        <div class="container shadow p-4 mb-1 bg-white" style="width: 28rem">
            <h3>Internacionalización y formato (librería fmt)</h3>

            <div class="alert alert-secondary mt-3">
                <strong>fmt:setLocale</strong> - Locale actual:
                <fmt:setLocale value="es_CO" scope="session"/>
                <c:out value="${sessionScope.javax.servlet.jsp.jstl.fmt.locale}"/>
            </div>

            <div class="panel panel-primary text-start">
                <div class="panel-heading"><strong>fmt:formatDate</strong></div>
                <div class="panel-body">
                    <jsp:useBean id="fecha" class="java.util.Date"/>
                    <p>Fecha completa: <strong><fmt:formatDate value="${fecha}" dateStyle="full"/></strong></p>
                    <p>Fecha corta: <strong><fmt:formatDate value="${fecha}" type="date" pattern="dd/MM/yyyy"/></strong></p>
                    <p>Hora: <strong><fmt:formatDate value="${fecha}" type="time" timeStyle="medium"/></strong></p>
                </div>
            </div>

            <div class="panel panel-primary text-start mt-3">
                <div class="panel-heading"><strong>fmt:formatNumber</strong></div>
                <div class="panel-body">
                    <p>Número agrupado: <strong><fmt:formatNumber value="1234567.89" type="number"/></strong></p>
                    <p>Moneda: <strong><fmt:formatNumber value="2500000" type="currency" currencySymbol="$"/></strong></p>
                    <p>Porcentaje: <strong><fmt:formatNumber value="0.8462" type="percent"/></strong></p>
                </div>
            </div>

            <a href="index.jsp" class="btn btn-success mt-3">Volver</a>
        </div>
    </center>

    <br><br><br>
    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
