<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cl�nica San Pedro</title>
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--================ estilos  =================-->
<%@include file="estructura/urlsEstilos.jsp"%>
<style>
		.btn-brand{
			background-color: #9043FF;
			color: white;	
		}
		.btn-brand:hover{
			background-color:#7734FE;
			color: white;
		}
	</style>
<body>
	<header class="header_area">
	<div class="header-top">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-3 col-sm-6 col-4 header-top-left">
					<select class="default-select">
						<option data-display="English">English</option>
						<option value="1">Germany</option>
						<option value="2">Spanish</option>
					</select>
				</div>
				<div class="col-lg-9 col-sm-6 col-8 header-top-right">
					<a href="tel:+9530123654896"><span
						class="lnr lnr-phone-handset"></span> <span class="text"><span
							class="text">+953 012 3654 896</span></span></a> <a
						href="mailto:support@colorlib.com"><span
						class="lnr lnr-envelope"></span> <span class="text"><span
							class="text">support@colorlib.com</span></span></a>
				</div>
			</div>
		</div>
	</div>
	<div class="main_menu">
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input"
						placeholder="Search Here">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-light">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<a class="navbar-brand logo_h" href="dashboard.jsp"><img
				src="img/logo.png" alt=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse offset"
				id="navbarSupportedContent">
				<ul class="nav navbar-nav menu_nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="dashboard.jsp" >Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="about-us.html">Tarjeta
							de Salud San Pedro</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="reservarCita.jsp">Reservar Cita</a></li>

					<li class="nav-item submenu dropdown"><a href="#"
						class="nav-link dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">Novedades</a>
						<ul class="dropdown-menu">
							<li class="nav-item"><a class="nav-link" href="blog.html">Promociones</a></li>
							<li class="nav-item"><a class="nav-link"
								href="single-blog.html">Noticios</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="contact.html">Cont�ctanos</a></li>
					<li class="nav-item submenu dropdown" style="margin-left: 45px;">
						<a class="nav-link dropdown-toggle dropbtn" data-toggle="dropdown">
							<s:property value="#session.user" />
					</a>
						<div class="dropdown-content">
							<ul class="dropdown-menu">
								<li class="nav-item"><s:a class="nav-link" href="#">Actualizar mi cuenta</s:a></li>
								<li class="nav-item"><s:a class="nav-link" href="#">Cambiar mi clave</s:a></li>
								<li class="nav-item"><s:a class="nav-link" href="logout">Cerrar sesi�n</s:a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="nav navbar-nav ml-auto">

				</ul>

			</div>
		</div>
	</div>
	</header>

	<h2 class="text-center">Reservar Cita</h2>
	<br>
	<div class="container" >
		<form action="" style=" background-color:#F2F2F2; padding: 5%; ">
			<!-- primera fila -->
			<div class="form-group">
				<div class="row">
					<div class="col-md-4">
						<input  class="form-control"type="text" name="nombres" placeholder="Nombres">
					</div>
					<div class="col-md-4">
						<input  class="form-control"type="text" name="apellidos" placeholder="Apellidos">
					</div>
					<div class="col-md-4">
						<input  class="form-control"type="date" name="nacimiento" placeholder="Fecha de nacimiento">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-4">
						<select class="form-control">
							<option>Femenino</option>
							<option>Masculino</option>
						</select>
					</div>
					<div class="col-md-4">
						<input  class="form-control" type="text" name="rh" placeholder="RH">
					</div>
					<div class="col-md-4">	
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-4">
						<select  class="form-control">
							<option>Registro civil</option>
							<option>Tarjeta de identidad</option>
							<option>Cedula</option>
						</select>
					</div>
					<div class="col-md-4">
						<input  class="form-control"type="number" name="ndocumento" placeholder="Numero de document�">
					</div>
					<div class="col-md-4">
						<input class="form-control" type="date" name="expedicion" placeholder="Expedici�n">
					</div>
				</div>
			</div>
			<button class="btn btn-brand" type="submit">Guardar</button>
		</form>
	</div>
<!-- g -->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!--================ scripts  =================-->
	<%@include file="estructura/urlScripts.jsp"%>
</body>
</html>