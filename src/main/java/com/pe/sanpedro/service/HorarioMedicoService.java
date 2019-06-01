package com.pe.sanpedro.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.pe.sanpedro.model.HorarioMedico;

import com.pe.sanpedro.mybatis.MyBatisUtil;
import com.pe.sanpedro.mybatis.mapper.HorarioMedicoMapper;

public class HorarioMedicoService {
	public List<HorarioMedico> listado() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<HorarioMedico> lista = null;

		try {
			HorarioMedicoMapper hm = session.getMapper(HorarioMedicoMapper.class);
			lista = hm.listado();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
}
