package testing;

import org.apache.struts2.StrutsTestCase;
import org.junit.Test;

import com.opensymphony.xwork2.ActionProxy;
import com.pe.sanpedro.action.LoginAction;

public class LoginTest extends StrutsTestCase {

	@Test
	public void test() throws Exception {
		request.addParameter("usuario", "isidro");
		request.addParameter("password", "abcd");
		ActionProxy proxy = getActionProxy("/login.action");
		LoginAction loginAction = (LoginAction) proxy.getAction(); 
		proxy.execute();
		assertEquals(loginAction.execute(), "success");
	}
	
	@Test
	public void tes() throws Exception {
		request.addParameter("usuario", "isidro");
		request.addParameter("password", "abc");
		ActionProxy proxy = getActionProxy("/login.action");
		LoginAction loginAction = (LoginAction) proxy.getAction(); 
		proxy.execute();
		assertEquals(loginAction.execute(), "error");
	}
}
