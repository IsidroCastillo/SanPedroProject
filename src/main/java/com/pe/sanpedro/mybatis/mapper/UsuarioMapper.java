package com.pe.sanpedro.mybatis.mapper;

import java.util.HashMap;

import com.pe.sanpedro.model.Usuario;

public interface UsuarioMapper {

	public Usuario validarLogin(HashMap<Object, Object>params) throws Exception;
}
