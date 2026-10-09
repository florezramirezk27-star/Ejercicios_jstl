<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!int valor = 0;%><%-- Declarando variable tipo int. El parseo del parámetro lo hace Java; c:catch captura la excepción sin abortar la página --%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 6 - catch</title>
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
                <button class="btn btn-success" type="button" onclick="window.location.href='index.jsp'">Volver al Inicio</button>
            </form>
        </div>
    </nav>
    <br><br><br>
    <center>
        <div class="container shadow p-3 mb-1 bg-white" style="width: 25rem">
            <h1>Uso de etiqueta catch</h1>
            <div class="panel panel-primary">
                <div class="panel-heading"></div><br>
                <c:catch var="error01">
                    <%
                        String param = request.getParameter("parametro");
                        if (param != null && !param.trim().isEmpty()) {
                            valor = Integer.parseInt(param);
                        } else {
                            valor = 0;
                        }
                    %>
                </c:catch>
                <c:if test="${not empty error01}">
                    <div class="alert alert-danger">
                        <strong>Se produjo un error:</strong> ${error01}
                        <br>
                    </div>
                </c:if>
                <c:if test="${valor != 0 && empty error01}">
                    <div class="alert alert-info">
                        <strong>Valor recibido: <%out.print(valor);%></strong>
                        <br>
                    </div>
                </c:if>
                <form role="form" action="catch.jsp">
                    <input type="hidden" name="parametro" value="prueba"/>
                    <input type="submit" class="btn btn-secondary m-1" value="Enviar 'prueba'"/>
                </form>
                <form role="form" action="catch.jsp">
                    <input type="hidden" name="parametro" value="1234"/>
                    <input type="submit" class="btn btn-secondary m-1" value="Enviar '1234'"/>
                </form>
                <form role="form" action="catch.jsp">
                    <input type="submit" class="btn btn-secondary m-1" value="No enviar el parámetro"/>
                </form>
            </div>
            <a href="index.jsp" class="btn btn-success">Volver</a>
        </div>
    </center>
    <br><br><br>
    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>