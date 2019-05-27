package com.pe.sanpedro.action;

import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.Usuario;
import com.pe.sanpedro.service.UsuarioService;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String usuario, password;
	private static final Logger logger = LogManager.getLogger(LoginAction.class);
	private Map<String, Object> session = ActionContext.getContext().getSession();

	public String validar() {
		logger.info("Ingreso al sistema");
		UsuarioService service = new UsuarioService();
		Usuario user = service.validarLogin(usuario, password);
		if (user instanceof Usuario) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String logout() {
//		sessionMap.remove("idUsuario");
//		sessionMap.invalidate();
		return "SUCCESS";
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

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	
}
