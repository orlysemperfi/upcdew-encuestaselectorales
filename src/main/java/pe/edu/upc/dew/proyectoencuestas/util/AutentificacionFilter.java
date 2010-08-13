package pe.edu.upc.dew.proyectoencuestas.util;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import pe.edu.upc.dew.proyectoencuestas.model.dto.Usuario;
/**
 * Valida que el usuario se haya autentificado primero antes de llamar
 * a cualquier recurso.
 * 
 *
 */
public class AutentificacionFilter implements Filter {
	private static final String LOGIN_PAGE = "/login.jsp";
	private static final String SESSION_PAGE = "/sesionExpirada.jsp";

	
	private FilterConfig filterConfig = null;

	public void destroy() {}
	
	/**
	 * 
	 */
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) 
	throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpSession httpSession = httpServletRequest.getSession(false);
		String contexto = httpServletRequest.getContextPath();
		String uri = httpServletRequest.getRequestURI();
		
		try {
			String action = this.getAction(uri, contexto);
			String extension = this.getExtension(uri);

		 // verificamos si requiere autentificación

                if (this.requiereAutentificacion(action, extension)) {
                          // si la session a caducado
			 if (httpSession == null) {
				 filterConfig.getServletContext().getRequestDispatcher(SESSION_PAGE).forward(request, response);
					} else {
						// Validar si el usuario esta registrado
						Usuario usuario = (Usuario) httpSession.getAttribute("usuario");
						if (usuario != null) {
							chain.doFilter(request, response);
						} else { // ir a la pagina de logeo
							filterConfig.getServletContext().getRequestDispatcher(SESSION_PAGE).forward(request, response);
						}
					}
                } else {
                        chain.doFilter(request, response);
                                        }
		} catch (Exception e) {
			//log.error(e.getMessage(),e);
		}
	}
	
	/**
	 * 
	 */
	public void init(FilterConfig pFilterConfig) throws ServletException {
		 this.filterConfig = pFilterConfig;
	}

	/**
	 * Valida si la acción y la extención son necesarios que esten logeados.
	 * Si retorna verdadero significa que requerie que este logeado. En caso
	 * contrario no requiere.
	 * 
	 * @param pAction nombre del recurso (/<nombre>.<Extensión>)
	 * @param pExtension Extensión del recurso
	 * @return verdadero o falso
	 */
	private boolean requiereAutentificacion(String pAction, String pExtension) {
		
	
		//ingreso al sistema, se muestra la pagina por default 
		//establecida en el web.xml
		if (pAction.equals("/")) {
			return false;
		}
		if (pAction.equals("/login.jsp")) {
			return false; //pagina de logeo
		}
		if (pAction.equals("/header.jsp")) {
			return false; //páginas que conforman el frame principal.jsp
		}

		if (pExtension.equalsIgnoreCase("jsp")) {
			return true; //paginas jsp que se quieren acceder directamente
		}
	
		if (pAction.equals("/Usuario.do")) {
			return false; //action que sube a sesion TmuserVO
		}
		
		if (pAction.equals("/loginAction.do")) {
			return false; //action que sube a sesion TmuserVO
		}
		if (pAction.equals("/logoutAction.do")) {
			return false; //action para salir del sistema
		}	

		
		if (pExtension.equalsIgnoreCase("do")) {
			return true; //actions que se tienen que validar
		}
		return false;
		//todos los elementos que forman parte de las páginas como .gif, .jpg, .js, .css, etc.
	}
	
	/**
	 * Obtiene el nombre del recurso web que se esta solicitando.
	 * 
	 * @param uri nombre del recurso. Este incluye el contexto.
	 * @param contexto nombre del contexto de la aplicación.
	 * @return
	 * @throws Exception
	 */
	private String getAction(String uri, String contexto) throws Exception {

		String action = null;
		int lengthContexto = 0;

		try {
			lengthContexto = contexto.length();
			action = uri.substring(lengthContexto);

		} catch (Exception ex) {
			throw (ex);
		}
		return action;
	}
	
	/**
	 * Obtiene la extención del recurso.
	 * //<contexto>//<nombre del recurso>.<extensión>
	 * 
	 * @param uri
	 * @return una cadena con la extensión del recurso(gif, jsp, do, etc)
	 * @throws Exception
	 */
	private String getExtension(String uri) throws Exception {

		String extension = null;
		int lastPoint = 0;

		try {
			lastPoint = uri.lastIndexOf(".");

			if (lastPoint != -1) {
				extension = uri.substring(lastPoint + 1);
				extension.trim();
			}

		} catch (Exception ex) {
			throw (ex);
		}
		return extension;
	}
	
	/**
	 * Obtenemos los parámetros de configuración.
	 * @return
	 */
	public FilterConfig getFilterConfig() {
		return filterConfig;
	}
	
	/**
	 * Establecemos la configuración.
	 * @param pFilterConfig
	 */
	public void setFilterConfig(FilterConfig pFilterConfig) {
		this.filterConfig = pFilterConfig;
	}	
}
