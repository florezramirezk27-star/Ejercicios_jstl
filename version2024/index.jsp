<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Guía 2024 - Ejercicios JSTL</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <header class="container-fluid bg-danger d-flex justify-content-center">
        <p class="text-light mb-0 p-2 fs-6">Ejercicios JSTL - Guía 2024</p>
    </header>
    <nav class="navbar navbar-expand-lg navbar-light p-3" id="menu">
        <div class="container">
            <a class="navbar-brand" href="#">
                <span class="fs-5 text-black fw-bold">Ejercicios JSTL</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link" href="../index.jsp">Inicio</a></li>
                </ul>
                <form class="d-flex">
                    <button class="btn btn-success" type="button" onclick="window.location.href='../index.jsp'">KEVIN FLOREZ</button>
                </form>
            </div>
        </div>
    </nav>

    <section class="w-100 py-4">
        <div class="row w-75 mx-auto" id="seccion-ejercicios">
            <center><h1 class="p-3 fs-2">Ejercicios</h1></center>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">1. Primer ejemplo</h3>
                    <p class="text-muted">c:out con JSTL</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='Eje1.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">2. Datos</h3>
                    <p class="text-muted">Capturar datos usando JSTL</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='Datos.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">3. Uso del set</h3>
                    <p class="text-muted">Etiqueta c:set con JSTL</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='set1.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">4. Datosif</h3>
                    <p class="text-muted">Capturar datos con c:if</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='Datosif.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">5. Lenguaje</h3>
                    <p class="text-muted">Uso de c:when / c:otherwise</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='lenguaje.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">6. Catch</h3>
                    <p class="text-muted">Sentencia c:catch con JSTL</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='catch.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">7. Foreach</h3>
                    <p class="text-muted">Sentencia c:forEach con JSTL</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='foreach.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">8. ForTokens</h3>
                    <p class="text-muted">Uso de c:forTokens</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='ForTokens.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">9. Base de datos</h3>
                    <p class="text-muted">SQL con JSTL</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='Informacion.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 d-flex justify-content-start my-3">
                <div class="card card-ejercicio shadow-sm w-100 p-3">
                    <h3 class="fs-5">10. Internacionalización</h3>
                    <p class="text-muted">Formato I18N con librería fmt</p>
                    <button class="btn btn-success" type="button" onclick="window.location.href='internacionalizacion.jsp'">Visualizar Ejercicio</button>
                </div>
            </div>
        </div>
    </section>

    <footer class="w-100 d-flex align-items-center justify-content-center flex-wrap" id="Derechos">
        <p class="fs-5 px-3 pt-3 mb-0">KEVIN FLOREZ &copy; Derechos Reservados.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
