package com.pe.sanpedro.mybatis.mapper;

import java.util.HashMap;

public interface PacienteMapper {

	//public int registrar(String usuario,String clave,String estado,int idTipo,String nombreCompleto,String dni,String correo,String direccion,String fechaNac,String celular,String est) throws Exception;
	public int registrar(HashMap<Object, Object>params) throws Exception;
	
}
