package libreria.persistencia;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import libreria.entidades.Autor;

public class AutorDAO {

    EntityManager em
            = Persistence.createEntityManagerFactory("LibreriaPU").createEntityManager();

    public void guardar(Autor a) throws Exception {
        try {
            if (a == null) {
                throw new Exception("Autor nulo");
            }
            em.getTransaction().begin();
            em.persist(a);
            em.getTransaction().commit();

        } catch (Exception e) {
            throw e;
        }
    }

    public Autor autorNom(String nom) throws Exception {
        try {
            if (nom == null) {
                throw new Exception("Autor nulo");
            }
            Autor a = (Autor) em.createQuery("Select a"
                    + "From Autor a "
                    + "Where a.nombre like :nombre").setParameter("nombre", nom).getSingleResult();
            return a;
        } catch (NoResultException e) {
            return null;
        }
    }
    
     public void altaBaja(Integer id, Boolean alta) throws Exception {
        try {
            if (id == null) {
                throw new Exception("Autor nulo");
            }
            Autor a = em.find(Autor.class,id);
            a.setAlta(alta);
            em.getTransaction().begin();
            em.merge(a);
            em.getTransaction().commit();

        } catch (Exception e) {
            throw e;
        }
    }
     public void modificar(Autor au) throws Exception {
        try {
            if (au == null) {
                throw new Exception("Autor nulo");
            }
            Autor a = em.find(Autor.class,au.getId());
            em.getTransaction().begin();
            em.merge(a);
            em.getTransaction().commit();

        } catch (Exception e) {
            throw e;
        }
    }
}
