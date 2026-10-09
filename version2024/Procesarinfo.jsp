<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../WEB-INF/jspf/conexion2024.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 9 - Procesarinfo</title>
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
                <button class="btn btn-success" type="button" onclick="window.location.href='Informacion.jsp'">Atras</button>
            </form>
        </div>
    </nav>

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
                <table id="tablita" class="table table-success table-striped">
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

    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap bg-dark text-white">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
