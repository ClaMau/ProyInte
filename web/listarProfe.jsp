<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.profesor, java.util.*,dao.Negocio"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/config.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
        <script src="js/popper.min.js" type="text/javascript"></script>
    
       <%@include file="Profesor.jsp"%>
       </div>
         <%  
         Negocio obj=new Negocio();
        %>
      <div class="card mt-3">
               <div class="card-header" style="background-color: #96d7f8">
                   <h5 class="card-title text-center" >Lista de Profesores</h5>
              </div>
         <div class="card-body">
             <table class="table  table-striped" >
                 <thead class="table-dark">
                                <tr>
                                    <th>ID
                                    <th>ID Horario
                                    <th>Cargo
                                    <th>Genero
                                    <th>Documento
                                    <th>Nombres
                                    <th>Apellido paterno
                                    <th>Apellido materno
                                    <th>Teléfono
                                    <th>Correo
                                    <th>Curso
                            </thead>
                            <tbody>  
                                  <%
                
                                    for( profesor x:obj.listaProfe()){
                                      out.print("<tr><td>"+x.getIdProf()+"<td>"+x.getIdHorario()+"<td>"+x.getCargo()
                                      +"<td>"+x.getGenero()+"<td>"+x.getNroDocu()+"<td>"+x.getNombres()+"<td>"+x.getApePat()
                                      +"<td>"+x.getApeMat()+"<td>"+x.getTelf()+"<td>"+x.getCorreo()+"<td>"+x.getCurso()+"<td>");
                                    }
                                  %>
                            </tbody>
                        </table>
                    </div>
        </div>
   
      
    </body>
</html>
