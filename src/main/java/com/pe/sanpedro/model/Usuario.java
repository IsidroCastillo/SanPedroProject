package com.pe.sanpedro.model;

public class Usuario {

	private int idUsuario;
	private String usuario;
	private String password;
	private String estado;
	private int id_tipo_usuario;
	
	
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getId_tipo_usuario() {
		return id_tipo_usuario;
	}
	public void setId_tipo_usuario(int id_tipo_usuario) {
		this.id_tipo_usuario = id_tipo_usuario;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	
}