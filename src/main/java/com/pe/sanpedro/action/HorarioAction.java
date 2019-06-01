package com.pe.sanpedro.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.HorarioMedico;
import com.pe.sanpedro.service.HorarioMedicoService;

public class HorarioAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<HorarioMedico> lstHorario;
	private String fechaIni;
	private String fechaFin;

	public String listar() {
		HorarioMedicoService servicio = new HorarioMedicoService();

		lstHorario = servicio.listado();

		// for (Horariomed horariomed : lstHorario) {
		//// fechaIni.sethorariomed.getFecha_fin();
		//// horariomed.getFecha_fin();
		// }

		if (lstHorario == null) {
			addActionError("Listado Vacío");
			return ERROR;
		} else {
			return SUCCESS;
		}
	}

	public List<HorarioMedico> getLstHorario() {
		return lstHorario;
	}

	public void setLstHorario(List<HorarioMedico> lstHorario) {
		this.lstHorario = lstHorario;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getFechaIni() {
		return fechaIni;
	}

	public void setFechaIni(String fechaIni) {
		this.fechaIni = fechaIni;
	}

	public String getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(String fechaFin) {
		this.fechaFin = fechaFin;
	}
}
