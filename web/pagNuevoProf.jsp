<%-- 
    Document   : pagNuevoProf
    Created on : 23/05/2022, 04:02:19 PM
    Author     : Claudio
--%>
<%@page import="dao.Negocio,modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminlte.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrapValidator.css" rel="stylesheet" type="text/css"/>
 
    </head>
    <body>
        
        <% Negocio obj=new Negocio();
        
        %>
        
        <div> <a href="pag.jsp" class="btn btn-primary" title="Retorno"><i class="fa fa-user"></i>Retornar</a> </div>
        
   <div class="container">
   <legend>Registre Profesor</legend>

   <form action="ProfesorCO" id="id_form"> 
			<input type="hidden" name="opc" value="1">	
                        
                        <div class="form-group">
                            <label class="control-label" for="id_cargo">Cargo</label>
                            <select class="form-control" name="cargo">
                                <option value="0">Seleccionar</option>
                                <option value="Docente">Docente</option>
                                <option value="Administrador">Administrador</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                         <label class="control-label">Horario</label>
                           <select class="form-control" name="cbh">
                             <option>Elegir</option>
                               <%
                                   for(horarios x:obj.listaHora()){
                                      out.print("<option value="+x.getIdHorario()+">"+x.getDescripHora());
                                   }
                                %>
                          </select>
                          
                        </div>
                          
                        <div class="form-group">
                            <label class="control-label" for="id_genero">Genero</label>
                            <select class="form-control" name="genero">
                                <option value="0">Seleccionar</option>
                                <option value="Masculino">Masculino</option>
                                <option value="Femenino">Femenino</option>
                            </select>
                        </div>
                          
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellido">Apellidos</label>
                                <div class="input-group">
                                <input class="form-control" type="text" id="id_apellidop" name="apellidop" placeholder="Paterno" >
                                 <span class="input-group-addon">-</span>
				<input class="form-control" type="text" id="id_apellidom" name="apellidom" placeholder="Materno">
                                </div>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_documento">Nro Documento</label>
				<input class="form-control" type="text" id="id_documento" name="documento" placeholder="Ingrese  nro documento">
			</div>
                        <div class="form-group"> 
                             <label class="control-label" for="id_telf">Teléfono</label>
                             <input class="form-control" type="text" id="id_telef" name="telf" placeholder="Ingrese nro de teléfono">
                        </div>
                        <div class="form-group"> 
                             <label class="control-label" for="id_correo">Correo electrónico</label>
                             <input class="form-control" type="text" id="id_correo" name="correo" placeholder="Ingrese su correo">
                        </div>
                          
                          <div class="form-group">
                         <label class="control-label">Curso</label>
                           <select class="form-control" name="cbc">
                             <option>Elegir</option>
                               <%
                                   for(cursos x:obj.listaCur()){
                                      out.print("<option value="+x.getNom_curso()+">"+x.getNom_curso());
                                   }
                                %>
                          </select>
                          
                        </div>
                          
                       
                             <div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Alumno</button>  
			     </div>
                             
                         
			
                    
	</form>
</div>
    </body>
</html>
