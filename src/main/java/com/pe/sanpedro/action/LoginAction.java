package com.pe.sanpedro.action;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.dispatcher.SessionMap;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pe.sanpedro.model.Usuario;
import com.pe.sanpedro.service.UsuarioService;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String usuario, password;
	
	private String pass;
	

	private static final Logger logger = LogManager.getLogger(LoginAction.class);
	private SessionMap<String, Object> session = (SessionMap<String, Object>) ActionContext.getContext().getSession();
	public String validar() {
		logger.info("Ingreso al sistema");
		UsuarioService service = new UsuarioService();
		Usuario user = service.login(usuario, password);
		
		
		if (user instanceof Usuario) {
			session.put("idUsu", user.getUsuario());
			session.put("user", user.getUsuario());
			session.put("pass", user.getPassword());
			session.put("nombre", user.getNombre());
			session.put("correo",user.getCorreo());
			session.put("direccion", user.getDireccion());
			session.put("fechaNac", user.getFecha_nac());
			session.put("cel", user.getCelular());
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String logout() {
        session.invalidate();
        return SUCCESS;
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

	public SessionMap<String, Object> getSession() {
		return session;
	}

	public void setSession(SessionMap<String, Object> session) {
		this.session = session;
	}

	public static Logger getLogger() {
		return logger;
	}
	
	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
}
