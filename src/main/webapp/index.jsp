<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.primerparcialmodelo.Persona"%>
<%
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <table border="1">
            <tr>
                <td>
            <h1>PRIMER PARCIAL TEM-742</h1>
            <br>
            <p>Nombre: Abad Segio Yujra Quispe</p>
            <p>Carnet: 9954318</p>
            </td>
            </tr>  
            
            
            
        </table>
        

        <h1>PRODUCTOS</h1>
        <a href="Maincontroller?op=nuevo">Nuevo Producto</a>
       
        <table border="1"> 



            <%
                if (lista != null) {
                    for (Persona item : lista) {
            %>
            
            <th>Id</th>
            <th>Descripcion</th>
            <th>Cantidad</th>
            <th>Precion</th>
            <th>Categorio</th>
            <th>Editar</th>
            <th>Eliminar</th>
            <tr>
                <td><%= item.getId()%></td> 
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>

                <td><a href="Maincontroller?op=editar&id=<%=item.getId()%>" >Modificar</a></td> 
                <td><a href="Maincontroller?op=eliminar&id=<%=item.getId()%>"
                       onclick="return confirm('Esta seguro de eliminar el registro?');">Eliminar</a></td> 
            </tr>
            <%
                    }
                }
            %>
        </table> 
    </body>
</html>