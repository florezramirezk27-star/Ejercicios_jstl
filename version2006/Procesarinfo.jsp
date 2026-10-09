<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 8 - Resultado SQL</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <div id="encabezado" class="bg-dark p-3 mb-4 w-100 d-flex flex-row justify-content-between align-items-center">
        <div>
            <img src="../img/javalog2.png" width="180" alt="Java">
        </div>
        <div>
            <a href="Ejercicio8.jsp" class="btn btn-outline-light rounded-pill">Atras</a>
        </div>
    </div>

    <c:set var="nombres" value="${param.nombres}"/>
    <c:set var="apellido1" value="${param.apellido1}"/>
    <c:set var="apellido2" value="${param.apellido2}"/>
    <c:set var="edad" value="${param.edad}"/>

    <c:if test="${not empty nombres}">
        <sql:update var="insertar" dataSource="${empleados}">
            insert into empleados (nombres, apellido1, apellido2, edad)
            values (?, ?, ?, ?)
            <sql:param value="${nombres}"/>
            <sql:param value="${apellido1}"/>
            <sql:param value="${apellido2}"/>
            <sql:param value="${edad}"/>
        </sql:update>
    </c:if>

    <div class="container py-4">
        <div class="card shadow">
            <div class="card-header bg-primary text-white"><strong>Empleados registrados</strong></div>
            <div class="card-body">
                <table class="table table-dark table-striped">
                    <thead>
                        <tr>
                            <th width="100px">Id</th>
                            <th width="300px">Nombre</th>
                            <th width="100px">Apellidos</th>
                            <th width="100px">Edad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <sql:query var="result" scope="request" dataSource="${empleados}">
                            select * from empleados;
                        </sql:query>
                        <c:forEach var="fila" items="${result.rows}">
                            <tr>
                                <td><c:out value="${fila.id}"/></td>
                                <td><c:out value="${fila.nombres}"/></td>
                                <td><c:out value="${fila.apellido1} ${fila.apellido2}"/></td>
                                <td><c:out value="${fila.edad}"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <footer class="bg-dark text-white w-100 mt-4">
        <p class="text-center mb-0 p-3">Guía 2006 - Ejercicio 8 || sql:update + sql:query + c:forEach</p>
    </footer>
</body>
</html>