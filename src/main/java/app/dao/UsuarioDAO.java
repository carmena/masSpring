
package app.dao;

import app.model.Persona;
import app.model.Usuario;
import app.zelper.GenericCrud;


public interface UsuarioDAO extends GenericCrud<Usuario>{
    
    Usuario getByPersona(Persona persona);
    Usuario getByUserName (String usuario);            
}
