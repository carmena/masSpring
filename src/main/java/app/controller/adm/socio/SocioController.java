
package app.controller.adm.socio;

import app.model.Persona;
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
@RequestMapping("adm/socio")
public class SocioController {
    
    
    @Autowired
    SocioService service;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        model.addAttribute("socios",service.list());
        model.addAttribute("persona", persona);
        return "adm/socio/socio";
    }
    
    @RequestMapping("new")
    public String nuevo(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        model.addAttribute("socio", new Persona());
        model.addAttribute("persona", persona);
        return "adm/socio/socioForm";
    }
    
    @RequestMapping("update/{id}")
    public String update(@PathVariable long id, Model model) {
        Persona persona = service.get(new Persona(id));
        
        if(persona==null){
            return "redirect:/adm/socio";
        }
        
        model.addAttribute("socio",persona);
        
        return "adm/socio/socioForm";
    }
    
    @RequestMapping(value="save", method= RequestMethod.POST)
    public String save(@ModelAttribute Persona persona) {
         if (persona.getId()== null){
             service.save(persona);
         }else {
             service.update(persona);
         }
        
        return "redirect:/adm/socio";
    }
    
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable long id) {
                
       service.delete(new Persona(id));
           
       return "redirect:/adm/socio";
    }
    
    
    
    
}
