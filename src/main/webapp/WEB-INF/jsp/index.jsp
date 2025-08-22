<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <title>Sistema de Empleados</title>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg bg-primary"
         data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/empleados">Sistema de Empleados</a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav" aria-controls="navbarNav"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active"
                           aria-current="page" href="/empleados">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/empleados/agregar">Agregar Empleado</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Sistema de Empleados</h3>
    </div>
    <div class="container">
        <table class="table table-striped table-hover table-bordered align-middle">
            <thead class="table-dark text-center">
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Nombre</th>
                <th scope="col">Departamento</th>
                <th scope="col">Sueldo</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="empleado" items="${empleados}">
                <tr>
                    <th scope="row">${empleado.idEmpleado}</th>
                    <td>${empleado.nombreEmpleado}</td>
                    <td>${empleado.departamento}</td>
                    <td>
                        <fmt:setLocale value="en_US"/>
                        <fmt:formatNumber type="currency"
                                          value="${empleado.sueldo}"/>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q"
        crossorigin="anonymous"></script>
</body>
</html>