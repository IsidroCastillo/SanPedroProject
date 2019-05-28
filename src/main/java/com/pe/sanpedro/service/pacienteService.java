package com.pe.sanpedro.service;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.paciente;
import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.PacienteMapper;


public class pacienteService {
	
	public int registrarPaciente(paciente p) {
		int registro = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			 PacienteMapper um = session.getMapper(PacienteMapper.class);
			 registro= um.registrar(p);
			 session.commit();
		} catch (Exception e) {
			System.out.println("Error:" +e.getMessage());
			session.rollback();
		}
		return registro;
	}
	

	
}
