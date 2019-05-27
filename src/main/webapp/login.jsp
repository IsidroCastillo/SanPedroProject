<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="sj" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login - Clinica San Pedro</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link  rel="stylesheet" href="css/style.css">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 mx-auto">
				<s:form class="form" action="validarLogin" theme="simple">
				<h4 class="text-center">Ingresar al Sistema</h4>
					<div class="form-group">
						<s:textfield name="usuario" label="Usuario" class="form-control input-sm"/>
					</div>
					<div class="form-group">
						<s:password name="password" label="Contraseña" class="form-control input-sm"/>
					</div>
					<s:submit value="Ingresar" class="btn btn-primary btn-sm btn-block" />
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>