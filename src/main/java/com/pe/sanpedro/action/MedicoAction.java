package com.pe.sanpedro.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.Especialidad;
import com.pe.sanpedro.service.EspecialidadService;
@ParentPackage(value="default")
public class MedicoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private EspecialidadService es = new EspecialidadService();
	
	private List<Especialidad> lstEspecialidades = new ArrayList<>() ;

	@Action(value="/listarEsp", results= { @Result(name="success", type="json") })
	public String listarEspecialidad() throws Exception {
		try {
			lstEspecialidades = es.listaEspecialidades();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public EspecialidadService getEs() {
		return es;
	}

	public void setEs(EspecialidadService es) {
		this.es = es;
	}

	public List<Especialidad> getLstEspecialidades() {
		return lstEspecialidades;
	}

	public void setLstEspecialidades(List<Especialidad> lstEspecialidades) {
		this.lstEspecialidades = lstEspecialidades;
	}


}
