
package app.controller.adm.solicitud;

import app.model.Persona;
import app.model.SolicitudAlquiler;
import app.zelper.Constantes;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("adm/solicitud")
public class SolicitudController {
    
    
    @Autowired
    SolicitudService service;
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        model.addAttribute("solicitudes",service.list());
        model.addAttribute("persona", persona);
        return "adm/solicitud/solicitud";
    }
    
    @RequestMapping("new")
    public String nuevo(Model model) {
        
        model.addAttribute("solicitud", new SolicitudAlquiler());
        
        return "adm/solicitud/solicitudForm";
    }
    
    @RequestMapping("update/{id}")
    public String update(@PathVariable long id, Model model) {
        SolicitudAlquiler solicitud = service.get(new SolicitudAlquiler(id));
        
        if(solicitud==null){
            return "redirect:/adm/solicitud";
        }
        
        model.addAttribute("solicitud",solicitud);
        
        return "adm/solicitud/solicitudForm";
    }
    
    @RequestMapping(value="save", method= RequestMethod.POST)
    public String save(@ModelAttribute SolicitudAlquiler solicitud) {
         if (solicitud.getId()== null){
             service.save(solicitud);
         }else {
             service.update(solicitud);
         }
        
        return "redirect:/adm/solicitud";
    }
    
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable long id) {
                
       service.delete(new SolicitudAlquiler(id));
           
       return "redirect:/adm/solicitud";
    }
    
}
