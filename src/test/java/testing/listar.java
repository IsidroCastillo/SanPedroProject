package testing;

import com.pe.sanpedro.service.EspecialidadService;

public class listar {
	
	
	public static void listar2 () throws Exception {
		EspecialidadService es = new EspecialidadService(); 
		es.listaEspecialidades();
	}
	
	public static void main(String[] args) throws Exception {
		listar2();
	}
}
