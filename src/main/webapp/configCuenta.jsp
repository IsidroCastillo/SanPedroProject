<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Configurar Cuenta</title>
<%@include file="estructura/urlsEstilos.jsp" %>
</head>
<body>

<!--================ Start Header Menu Area =================-->
	<%@include file="estructura/header.jsp" %>
<!--================ End Header Menu Area =================-->
<section class="sample-text-area">
		<div class="container">
		
    <div class="view-account">
        <section class="module">
            <div class="module-inner">

                <div class="content-panel">

                    <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                        <fieldset class="fieldset">
                            <h3 class="fieldset-title">Informacion Personal</h3>
                           
                          

                            <div class="form-group">
                                <label class="col-md-2 col-sm-3 col-xs-12 control-label">Nombre</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input name="txt_nombre" type="text" class="form-control" value="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 col-sm-3 col-xs-12 control-label">Apellidos</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input name="txt_apellidos" type="text" class="form-control" value="">
                                </div>
                            </div>

                            <div class="form-row">

                            <div class="form-group">
                                <label class="col-md-10 col-sm-3 col-xs-12 control-label">Contraseña</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input  id="idContra" type="password" class="form-control" value="" >
                                </div>

                            </div>

                            <div class="form-group">
                                <label class="col-md-10 col-sm-3 col-xs-12 control-label">Nueva Contraseña</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input id="checkNueva" type="password" class="form-control" disabled>
                                </div>

                            </div>

                          </div>
                          <div class="form-group">
                            <input id="checkContra" name="cambiarContra" type="checkbox" class="filled-in chk-col-light-blue" onclick="condicion ()">
                            <label for="checkbox-signup" style="color:brown;"> Cambiar Contraseña </label>

                          </div>


                        </fieldset>
                        <fieldset class="fieldset">
                            <h3 class="fieldset-title">Informacion de Contacto</h3>
                            <div class="form-group">
                                <label class="col-md-2  col-sm-3 col-xs-12 control-label">Email</label>
                                <div class="col-md-10 col-sm-9 col-xs-12" >
                                    <input name="txt_email" type="email" class="form-control" value="">

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2  col-sm-3 col-xs-12 control-label">Celular</label>
                                <div class="col-md-10 col-sm-9 col-xs-12" >
                                    <input name="txt_celular" type="text" class="form-control" value="">

                                </div>
                            </div>

                        </fieldset>
                        <hr>
                        <div class="form-group">
                            <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                <input class="btn btn-primary" type="submit" value="Actualizar Datos">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
                <script>
                  function condicion(){

                      document.getElementById("checkNueva").disabled = false;
                      document.getElementById("idContra").value="";
                    }



        </script>
    </div>
</div>

</section>
	<!--================ Start footer Area  =================-->
		<%@include file="estructura/footer.jsp" %>
	<!--================ End footer Area  =================-->

<%@include file="estructura/urlScripts.jsp" %>
</body>
</html>