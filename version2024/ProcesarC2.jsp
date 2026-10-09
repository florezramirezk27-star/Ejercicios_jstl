<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 5 - ProcesarC2</title>
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
                <button class="btn btn-success" type="button" onclick="window.location.href='lenguaje.jsp'">Volver</button>
            </form>
        </div>
    </nav>
    <br><br><br>
    <center>
        <div class="container shadow p-3 mb-1 bg-white" style="width: 25rem">
            <h1>Resultado</h1>
            <div class="panel panel-primary">
                <div class="panel-heading"></div><br>
                <div class="panel-body">
                    <c:choose>
                        <c:when test="${param.lenguaje == 'Java'}">
                            <p><span class="text-primary">Java</span> El rey de los lenguajes orientados a objetos</p>
                        </c:when>
                        <c:when test="${param.lenguaje == 'C++'}">
                            <p><span class="text-primary">C++</span> Ideal para aprender</p>
                        </c:when>
                        <c:when test="${param.lenguaje == 'Perl'}">
                            <p><span class="text-primary">Perl</span> Lenguaje de scripting muy potente</p>
                        </c:when>
                        <c:otherwise>
                            <p>No se seleccionó ninguno</p>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <a href="lenguaje.jsp" class="btn btn-success">Volver</a>
        </div>
    </center>
    <br><br><br>
    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
