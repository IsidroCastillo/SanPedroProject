package com.pe.sanpedro.action;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.*;
import com.pe.sanpedro.service.pacienteService;

public class pacienteAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private paciente paciente;
	private String dni,clave;
	private String msj;
	private String respuesta ="";
	

	
	public String registrarPaciente() {
		
		try {
					
			pacienteService ps = new pacienteService();
			int registro = ps.registrarPaciente(paciente);
					
			if(registro != 0){
				//setMsj("Registrado");
				System.out.println("registrado");
				respuesta="exito";
				
			}else {
				//setMsj("Error al Agregar");
				System.out.println("no registrado");
				respuesta="error";
				
			}
			
				}catch(Exception ex) {
					ex.printStackTrace();
					respuesta="error";
				}
				
				return respuesta;
		
	}

	public paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(paciente paciente) {
		this.paciente = paciente;
	}

	public String getMsj() {
		return msj;
	}

	public void setMsj(String msj) {
		this.msj = msj;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getRespuesta() {
		return respuesta;
	}

	public void setRespuesta(String respuesta) {
		this.respuesta = respuesta;
	}
	
	
	
	
	
}
