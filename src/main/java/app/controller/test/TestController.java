
package app.controller.test;


import app.dao.CampoDAO;
import app.dao.hibernate.CampoDAOH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class TestController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("mensaje", "METODO INDEX");
        return "test";
    }
    
    @RequestMapping ("ejemplo")
    public String ejemplo(Model model) {
        model.addAttribute("mensaje", "METODO EJEMPLO");
        return "test";
    }
    
    //no funciona porque dee ser GET
    @RequestMapping(value="ejemplopost", method = RequestMethod.POST)
    public String ejemploPost(Model model){
        model.addAttribute("mensaje", "METODO POST");
        return "test";
    }
    
    
    
    
    @RequestMapping("actualizar/{id}")
    public String parametroUrl(Model model, @PathVariable("id") String id){
        model.addAttribute("mensaje", "PARAMERO EN URL "+ id);
        return "test";
    }
    
    
    
    @RequestMapping ("guardar")
    public String guardarParamether(Model model, @RequestParam String nombres, @RequestParam String apellidos) {
        model.addAttribute("mensaje", nombres + " " + apellidos);
        return "test";
    }
    
            
    @RequestMapping ("guardarDos")
    public String guardarAttribute(Model model,@ModelAttribute PersonaTest persona) {
        model.addAttribute("mensaje", persona.getNombres() + " " + persona.getApellidos());
        return "test";
    }
    
    
    @Autowired
    CampoDAO campoDAO;
    @RequestMapping ("campos")
    public String listaCampos(Model model, @ModelAttribute CampoDAOH campoDAOH) {
        model.addAttribute("campos", campoDAO.list());
        return "campos";
    }
}
