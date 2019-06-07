<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--==================================estilos Login =============================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--================ estilos  =================-->
		<%@include file="estructura/urlsEstilos.jsp" %>

<body>

<!--================ Start Header Menu Area =================-->
	<%@include file="estructura/header.jsp" %>
<!--================ End Header Menu Area =================-->

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form action="registro" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-49">
						Registro 
					</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Ingrese Usuario">
						<span class="label-input100">Nombre Completo</span>
						<input class="input100" type="text" name="nombreCompleto" placeholder="Nombre">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Ingrese sus Apellidos">
						<span class="label-input100">DNI</span>
						<input class="input100" type="text" name="dni" placeholder="DNI">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Ingrese su Correo">
						<span class="label-input100">Correo</span>
						<input class="input100" type="text" name="correo" placeholder="example@gmail.com">
						<span class="focus-input100" data-symbol="&#x2709;"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Ingrese su Celular">
						<span class="label-input100">Direccion</span>
						<input class="input100" type="text" name="direccion" placeholder="Celular">
						<span class="focus-input100" data-symbol="&#x2706;"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Ingrese su Celular">
						<span class="label-input100">Fecha Nacimiento</span>
						<input class="input100" type="date" name="fechaNac" >
						<span class="focus-input100" data-symbol="&#x2706;"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Ingrese su Celular">
						<span class="label-input100">Celular</span>
						<input class="input100" type="text" name="celular" placeholder="Celular">
						<span class="focus-input100" data-symbol="&#x2706;"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Ingrese su Contraseña">
						<span class="label-input100">Contraseña</span>
						<input class="input100" type="password" name="clave" placeholder="Contraseña">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<input class="input100" type="hidden" name="" value="H">
					<div class="text-right p-t-8 p-b-31">
						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Registrarse
							</button>
						</div>
					</div>

					<div class="txt1 text-center p-t-54 p-b-20">
						<span>
							Redes Sociales
						</span>
					</div>

					<div class="flex-c-m">
						<a href="#" class="login100-social-item bg1">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="login100-social-item bg2">
							<i class="fa fa-twitter"></i>
						</a>

						<a href="#" class="login100-social-item bg3">
							<i class="fa fa-google"></i>
						</a>
					</div>

					<div class="flex-col-c p-t-155">
						<span class="txt1 p-b-17">
							ya tienes una cuenta?
						</span>

						<a href="login.jsp" class="txt2">
							Inicia Sesion
						</a>
						
					</div>


				</form>
			</div>
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
	
		<!--================ Start footer Area  =================-->
		<%@include file="estructura/footer.jsp" %>
	<!--================ End footer Area  =================-->
	<!--===============================================================================================-->
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
	<%@include file="estructura/urlScripts.jsp" %>
</body>
</html>