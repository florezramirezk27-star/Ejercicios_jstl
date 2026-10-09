# Ejercicios JSTL

Proyecto web en **JavaServer Pages (JSP)** con la **JavaServer Pages Standard Tag Library (JSTL)**.
Reúne la solución de dos guías de ejercicios:

- **Guía 2006** → 8 ejercicios
- **Guía 2024** → 10 ejercicios

Autor: **Kevin Flórez** — Programación en Java.

---

## Tecnologías

| Componente        | Versión / Detalle                                        |
| ----------------- | -------------------------------------------------------- |
| JSP / Servlet API | Java EE (namespace `javax`)                               |
| JSTL              | 1.2 (`jstl-1.2.jar`, prefijos `c`, `fmt`, `sql`, `x`)     |
| Servidor          | Apache Tomcat 8.5                                         |
| JDK               | Java 8                                                    |
| Base de datos     | MySQL (base de datos `empleados`)                         |
| Driver JDBC       | `mysql-connector-java-5.1.49.jar`                         |
| Front-end         | Bootstrap 5, Font Awesome 5, CSS propio (`css/estilo.css`) |

---

## Estructura del proyecto

```
trabajo_jstl/
├── index.jsp                     # Página de inicio (portada con enlaces a ambas guías)
├── css/
│   └── estilo.css                # Estilos personalizados
├── img/
│   └── javalog2.png              # Logo
├── version2006/                  # Guía 2006 (8 ejercicios)
│   ├── index.jsp
│   └── Ejercicio1.jsp ... Ejercicio8.jsp
├── version2024/                  # Guía 2024 (10 ejercicios)
│   ├── index.jsp
│   └── Eje1.jsp, Datos.jsp, set1.jsp, ...
├── lib-2024/
│   └── jstl-1.2.jar
├── WEB-INF/
│   ├── web.xml                   # Descriptor de despliegue (welcome-file: index.jsp)
│   ├── lib/                      # Librerías de la app (jstl-1.2.jar, mysql-connector)
│   └── jspf/
│       ├── conexion.jspf         # DataSource JSTL para la Guía 2006
│       └── conexion2024.jspf     # DataSource JSTL para la Guía 2024
├── jstl-1.2.jar
└── mysql-connector-java-5.1.49.jar
```

---

## Ejercicios — Guía 2006

| # | Ejercicio | Etiqueta / tema |
| - | --------- | --------------- |
| 1 | `Ejercicio1.jsp` | `c:out` |
| 2 | `Ejercicio2.jsp` | `c:set` y parámetros |
| 3 | `Ejercicio3.jsp` | `c:if` y `c:redirect` |
| 4 | `Ejercicio4.jsp` | `c:choose`, `c:when`, `c:otherwise` |
| 5 | `Ejercicio5.jsp` | `c:catch` |
| 6 | `Ejercicio6.jsp` | `c:forEach` |
| 7 | `Ejercicio7.jsp` | `c:forTokens` |
| 8 | `Ejercicio8.jsp` | SQL JSTL (`sql:*`) |

## Ejercicios — Guía 2024

| # | Ejercicio | Etiqueta / tema |
| - | --------- | --------------- |
| 1 | `Eje1.jsp` | `c:out` |
| 2 | `Datos.jsp` | Captura de datos |
| 3 | `set1.jsp` | `c:set` y ámbitos |
| 4 | `Datosif.jsp` | `c:if` |
| 5 | `lenguaje.jsp` | `c:choose` / `c:otherwise` |
| 6 | `catch.jsp` | `c:catch` |
| 7 | `foreach.jsp` | `c:forEach` |
| 8 | `ForTokens.jsp` | `c:forTokens` |
| 9 | `Informacion.jsp` | SQL JSTL con `sql:param` |
| 10 | `internacionalizacion.jsp` | Formato i18n con la librería `fmt` |

---

## Requisitos previos

- JDK 8
- Apache Tomcat 8.5
- MySQL en ejecución

## Cómo ejecutar

1. **Clonar el repositorio**

   ```bash
   git clone https://github.com/florezramirezk27-star/Ejercicios_jstl.git
   ```

2. **Ubicar el proyecto en Tomcat**
   Copia la carpeta del proyecto dentro de `webapps/` de Tomcat (por ejemplo como `trabajo_jstl`), o impórtalo como *Dynamic Web Project* en tu IDE.

3. **Librerías**
   Verifica que `jstl-1.2.jar` y `mysql-connector-java-5.1.49.jar` estén en `WEB-INF/lib/`. Deben estar también disponibles para Tomcat.

4. **Configurar la base de datos**
   En `WEB-INF/jspf/conexion.jspf` y `WEB-INF/jspf/conexion2024.jspf` ajusta los datos de conexión:

   ```jsp
   <sql:setDataSource var="empleados"
                      driver="com.mysql.jdbc.Driver"
                      url="jdbc:mysql://localhost:3306/empleados"
                      user="root"
                      password="" />
   ```

   > Crea previamente la base de datos `empleados` con la tabla que usan los ejercicios de SQL.

5. **Ejecutar**
   Abre en el navegador:

   ```
   http://localhost:8080/trabajo_jstl/
   ```

   El `index.jsp` sirve como página de inicio y enlaza con las dos guías.

---

## Notas

- Ambas guías usan JSTL 1.2 (namespace `javax`) y están pensadas para ejecutarse en **Tomcat 8.5**.
- Los archivos `conexion.jspf` están en `WEB-INF/jspf/` y se incluyen desde los JSP que usan SQL.

---

## Licencia

Proyecto académico — Kevin Flórez © Derechos reservados.
