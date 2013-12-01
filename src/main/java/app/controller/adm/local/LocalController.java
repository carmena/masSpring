package app.controller.adm.local;

import app.model.Local;
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
@RequestMapping("adm/local")
public class LocalController {
    
    @Autowired
    LocalService service;
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);
        model.addAttribute("locales",service.list());
        model.addAttribute("persona", persona);
        return "adm/local/local";
    }
    
    @RequestMapping("new")
    public String nuevo(Model model) {
        
        model.addAttribute("local", new Local());
        
        return "adm/local/localForm";
    }
    
    @RequestMapping("update/{id}")
    public String update(@PathVariable long id, Model model) {
        Local local = service.get(new Local(id));
        
        if(local==null){
            return "redirect:/adm/local";
        }
        
        model.addAttribute("local",local);
        
        return "adm/local/localForm";
    }
    
    @RequestMapping(value="save", method= RequestMethod.POST)
    public String save(@ModelAttribute Local local) {
         if (local.getId()== null){
             service.save(local);
         }else {
             service.update(local);
         }
        
        return "redirect:/adm/local";
    }
    
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable long id) {
                
       service.delete(new Local(id));
           
       return "redirect:/adm/local";
    }
    
    
    
    
}
