
package app.controller.adm.solicitud;

import app.dao.SolicitudAlquilerDAO;
import app.model.SolicitudAlquiler;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SolicitudServiceImp implements SolicitudService{
    
    @Autowired
    SolicitudAlquilerDAO solicitudAlquilerDAO;
    
    @Override
    public List<SolicitudAlquiler> list() {
        return solicitudAlquilerDAO.list();
    }

    @Override
    public SolicitudAlquiler get(SolicitudAlquiler t) {
        return solicitudAlquilerDAO.get(t);
    }

    @Override
    public void save(SolicitudAlquiler t) {
        solicitudAlquilerDAO.save(t);
    }

    @Override
    public void update(SolicitudAlquiler t) {
        solicitudAlquilerDAO.update(t);
    }

    @Override
    public void delete(SolicitudAlquiler t) {
        solicitudAlquilerDAO.delete(t);
    }
    
    
    
}
