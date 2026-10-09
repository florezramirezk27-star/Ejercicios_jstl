<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!int valor = 0;%><%-- Declarando variable tipo int. El parseo del parámetro lo hace Java; c:catch captura la excepción sin abortar la página --%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 5 - c:catch</title>
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
        <div class="card shadow-lg p-5 m-3">
            <h1 class="text-center">Uso de la etiqueta c:catch</h1>

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

            <div class="d-flex flex-row flex-wrap">
                <form role="form" action="Ejercicio5.jsp">
                    <input type="hidden" name="parametro" value="prueba"/>
                    <input type="submit" class="btn btn-outline-dark m-2 rounded-pill" value="Enviar 'prueba'"/>
                </form>
                <form role="form" action="Ejercicio5.jsp">
                    <input type="hidden" name="parametro" value="1234"/>
                    <input type="submit" class="btn btn-outline-success m-2 rounded-pill" value="Enviar '1234'"/>
                </form>
                <form role="form" action="Ejercicio5.jsp">
                    <input type="submit" class="btn btn-outline-danger m-2 rounded-pill" value="No enviar el parámetro"/>
                </form>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 5 || c:catch</p>
    </footer>
</body>
</html>