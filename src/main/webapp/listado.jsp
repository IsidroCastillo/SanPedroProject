<%@ taglib uri="/struts-tags" prefix="s"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<sb:head/>
</head>
<body class="container">



<div >
	<h1>Listado de Horarios</h1>
	<a class="btn btn-primary" href="listando">Ver Lista</a>

</div>

<br>
<br>


<div class="container">


	<table class="table" >
	
		<s:iterator value="lstProductos">
		<tr  bottom="middle">
					   
                       <th style="background-color: black; color:white" scope="col"><s:property value="diaSemana" /></th>
                      <td align="center" valign="center" ><s:property value="horario_inicio" />-<s:property value="horario_fin" /></td>					
                       
           </tr>

			
		</s:iterator>
		
	</table>

</div>


</body>
</html>