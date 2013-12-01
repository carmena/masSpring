
package app.controller.adm.campo;

import app.controller.adm.local.LocalService;
import app.model.Campo;
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
@RequestMapping("adm/campo")
public class CampoController {
    
    
    @Autowired
    CampoService service;
    LocalService serviceLocal;
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        model.addAttribute("campos",service.list());
        model.addAttribute("persona", persona);
        return "adm/campo/campo";
    }
    
    @RequestMapping("new")
    public String nuevo(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        model.addAttribute("campo", new Campo());
        model.addAttribute("locales",serviceLocal.list());
        model.addAttribute("persona", persona);
        return "adm/campo/campoForm";
    }
    
    @RequestMapping("update/{id}")
    public String update(@PathVariable long id, Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        Campo campo = service.get(new Campo(id));
        
        if(campo==null){
            return "redirect:/adm/campo";
        }
        model.addAttribute("locales",serviceLocal.list());
        model.addAttribute("campo",campo);
        model.addAttribute("persona", persona);
        return "adm/campo/campoForm";
    }
    
    @RequestMapping(value="save", method= RequestMethod.POST)
    public String save(@ModelAttribute Campo campo) {
         if (campo.getId()== null){
             service.save(campo);
         }else {
             service.update(campo);
         }
        
        return "redirect:/adm/campo";
    }
    
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable long id) {
                
       service.delete(new Campo(id));
           
       return "redirect:/adm/campo";
    }
    
    
    
    
    
}
