
package app.controller.adm;

import app.model.Persona;
import app.zelper.Constantes;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/socio")
public class SocController {
    
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET)
    public String index(HttpSession session){
    
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        
        return "SOCIO: " + persona.getFullName();
    }
    
    
}
