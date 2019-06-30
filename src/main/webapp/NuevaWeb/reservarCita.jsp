<%@taglib uri="/struts-bootstrap-tags" prefix="sb"%>
<%@taglib uri="/struts-jquery-tags" prefix="sj"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clinica - San Pedro</title>
<link rel="icon" type="image/png" href="images/favicon.ico"/>
<sj:head jqueryui="true" jquerytheme="cupertino" locale="es" />
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="styles/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="NuevaWeb/styles/login.css">
<style type="text/css">
.reserva {
	fdisplay: block;
	position: relative;
	height: 100%;
	font-size: 13px;
	font-weight: 600;
	color: #FFFFFF;
	z-index: 1;
	text-transform: uppercase;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}

.reserva:hover {
	color: rgba(255, 255, 255, 0.75);
}
</style>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
	<header class="header" id="header">
	<div>
		<div class="header_top">
			<div class="container">
				<div class="row">
					<div class="col">
						<div
							class="header_top_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo">
								<a href="#">health<span>+</span></a>
							</div>
							<div
								class="header_top_extra d-flex flex-row align-items-center justify-content-start ml-auto">
								<div class="header_top_nav">
									<ul
										class="d-flex flex-row align-items-center justify-content-start">
										<li><a href="#">Factura Electrónica</a></li>
										<li><a href="#">Servicios de Emergencia</a></li>
										<li><a href="#">Web Médica</a></li>
									</ul>
								</div>
								<div class="header_top_phone">
									<i class="fa fa-phone" aria-hidden="true"></i> <span>+34
										586 778 8892</span>
								</div>
							</div>
							<div class="hamburger ml-auto">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="header_nav" id="header_nav_pin">
			<div class="header_nav_inner">
				<div class="header_nav_container">
					<div class="container">
						<div class="row">
							<div class="col">
								<div
									class="header_nav_content d-flex flex-row align-items-center justify-content-start">
									<nav class="main_nav">
									<ul
										class="d-flex flex-row align-items-center justify-content-start">
										<li class="active"><a href="index.html">Inicio</a></li>
										<li><a href="about.html">Tarjeta Salud San Pedro</a></li>
										<li><a href="reservarCita.jsp">Reservar Cita</a></li>
										<li><a href="news.html">Contactanos</a></li>
										<li><a href="contact.html">Mis Resultados</a></li>
									</ul>
									</nav>
									<div
										class="search_content d-flex flex-row align-items-center
														 justify-content-end ml-auto">
										<ul>
											<li><a href="reservarCita.jsp"
												class="reserva text-uppercase">Usuario</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- 	WIZARD -->
	<br>
	<br>
	<br>
	<div class="top-content border-0">
		<div class="container">
			<div class="row">
				<div
					class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
					<form role="form" action="" method="post" class="f1">

						<h3>Register To Our App</h3>
						<p>Fill in the form to get instant access</p>
						<div class="f1-steps">
							<div class="f1-progress">
								<div class="f1-progress-line" data-now-value="16.66"
									data-number-of-steps="3" style="width: 16.66%;"></div>
							</div>
							<div class="f1-step active">
								<div class="f1-step-icon">
									<i class="fa fa-user"></i>
								</div>
								<p>about</p>
							</div>
							<div class="f1-step">
								<div class="f1-step-icon">
									<i class="fa fa-key"></i>
								</div>
								<p>account</p>
							</div>
							<div class="f1-step">
								<div class="f1-step-icon">
									<i class="fa fa-twitter"></i>
								</div>
								<p>social</p>
							</div>
						</div>

						<fieldset>
							<h4>Tell us who you are:</h4>
							<div class="form-group">
								<sj:select class="info_form_dep info_input info_select"
									id="idMantEspecialidad" href="listarEsp.action"
									label="Especialidad" name="cita.idEspecialidad"
									list="lstEspecialidades" listKey="id" listValue="descripcion"
									headerKey="-1" headerValue="Seleccionar Especialidad">
								</sj:select>
							</div>
							<div class="form-group">
								<label class="sr-only" for="f1-first-name">First name</label> <input
									type="text" name="f1-first-name" placeholder="First name..."
									class="f1-first-name form-control" id="f1-first-name">
							</div>
							
							<div class="form-group">
								<label class="sr-only" for="f1-last-name">Last name</label> <input
									type="text" name="f1-last-name" placeholder="Last name..."
									class="f1-last-name form-control" id="f1-last-name">
							</div>
							<div class="form-group">
								<label class="sr-only" for="f1-about-yourself">About
									yourself</label>
								<textarea name="f1-about-yourself"
									placeholder="About yourself..."
									class="f1-about-yourself form-control" id="f1-about-yourself"></textarea>
							</div>
							<div class="f1-buttons">
								<button type="button" class="btn btn-next">Next</button>
							</div>
						</fieldset>

						<fieldset>
							<h4>Set up your account:</h4>
							
							<div class="form-group">
								<label class="sr-only" for="f1-email">Email</label> <input
									type="text" name="f1-email" placeholder="Email..."
									class="f1-email form-control" id="f1-email">
							</div>
							<div class="form-group">
								<label class="sr-only" for="f1-password">Password</label> <input
									type="password" name="f1-password" placeholder="Password..."
									class="f1-password form-control" id="f1-password">
							</div>
							<div class="form-group">
								<label class="sr-only" for="f1-repeat-password">Repeat
									password</label> <input type="password" name="f1-repeat-password"
									placeholder="Repeat password..."
									class="f1-repeat-password form-control" id="f1-repeat-password">
							</div>
							<div class="f1-buttons">
								<button type="button" class="btn btn-previous">Previous</button>
								<button type="button" class="btn btn-next">Next</button>
							</div>
						</fieldset>

						<fieldset>
							<h4>Social media profiles:</h4>
							<div class="form-group">
								<label class="sr-only" for="f1-facebook">Facebook</label> <input
									type="text" name="f1-facebook" placeholder="Facebook..."
									class="f1-facebook form-control" id="f1-facebook">
							</div>
							<div class="form-group">
								<label class="sr-only" for="f1-twitter">Twitter</label> <input
									type="text" name="f1-twitter" placeholder="Twitter..."
									class="f1-twitter form-control" id="f1-twitter">
							</div>
							<div class="form-group">
								<label class="sr-only" for="f1-google-plus">Google plus</label>
								<input type="text" name="f1-google-plus"
									placeholder="Google plus..."
									class="f1-google-plus form-control" id="f1-google-plus">
							</div>
							<div class="f1-buttons">
								<button type="button" class="btn btn-previous">Previous</button>
								<button type="submit" class="btn btn-submit">Submit</button>
							</div>
						</fieldset>

					</form>
				</div>
			</div>

		</div>
	</div>

	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/retina-1.1.0.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>