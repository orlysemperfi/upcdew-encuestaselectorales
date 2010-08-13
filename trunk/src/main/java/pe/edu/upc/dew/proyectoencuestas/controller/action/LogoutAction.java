package pe.edu.upc.dew.proyectoencuestas.controller.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;


 
public class LogoutAction extends DispatchAction {
	
  public ActionForward execute(
			ActionMapping mapping,
			ActionForm form,
			HttpServletRequest request,
			HttpServletResponse response)
			throws Exception {


		HttpSession session = request.getSession(true);

		try {
			if (session != null) {
                                session.removeAttribute("nombre");
			}
			request.getSession().invalidate();
		} catch (Exception e) {


		}

		return mapping.findForward("exito");
	}
}
