/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Logica.PaqueteTuristico;
import Logica.Servicio;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author villa
 */
public class ServicioJpaController implements Serializable {

    public ServicioJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;
    
     public ServicioJpaController(){
        emf = Persistence.createEntityManagerFactory("AgenciaTurismoPU");
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Servicio servicio) {
        if (servicio.getListaPaquete() == null) {
            servicio.setListaPaquete(new ArrayList<PaqueteTuristico>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<PaqueteTuristico> attachedListaPaquete = new ArrayList<PaqueteTuristico>();
            for (PaqueteTuristico listaPaquetePaqueteTuristicoToAttach : servicio.getListaPaquete()) {
                listaPaquetePaqueteTuristicoToAttach = em.getReference(listaPaquetePaqueteTuristicoToAttach.getClass(), listaPaquetePaqueteTuristicoToAttach.getCodigo_paquete());
                attachedListaPaquete.add(listaPaquetePaqueteTuristicoToAttach);
            }
            servicio.setListaPaquete(attachedListaPaquete);
            em.persist(servicio);
            for (PaqueteTuristico listaPaquetePaqueteTuristico : servicio.getListaPaquete()) {
                listaPaquetePaqueteTuristico.getListaServicios().add(servicio);
                listaPaquetePaqueteTuristico = em.merge(listaPaquetePaqueteTuristico);
            }
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Servicio servicio) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Servicio persistentServicio = em.find(Servicio.class, servicio.getCodigo_servicio());
            List<PaqueteTuristico> listaPaqueteOld = persistentServicio.getListaPaquete();
            List<PaqueteTuristico> listaPaqueteNew = servicio.getListaPaquete();
            List<PaqueteTuristico> attachedListaPaqueteNew = new ArrayList<PaqueteTuristico>();
            for (PaqueteTuristico listaPaqueteNewPaqueteTuristicoToAttach : listaPaqueteNew) {
                listaPaqueteNewPaqueteTuristicoToAttach = em.getReference(listaPaqueteNewPaqueteTuristicoToAttach.getClass(), listaPaqueteNewPaqueteTuristicoToAttach.getCodigo_paquete());
                attachedListaPaqueteNew.add(listaPaqueteNewPaqueteTuristicoToAttach);
            }
            listaPaqueteNew = attachedListaPaqueteNew;
            servicio.setListaPaquete(listaPaqueteNew);
            servicio = em.merge(servicio);
            for (PaqueteTuristico listaPaqueteOldPaqueteTuristico : listaPaqueteOld) {
                if (!listaPaqueteNew.contains(listaPaqueteOldPaqueteTuristico)) {
                    listaPaqueteOldPaqueteTuristico.getListaServicios().remove(servicio);
                    listaPaqueteOldPaqueteTuristico = em.merge(listaPaqueteOldPaqueteTuristico);
                }
            }
            for (PaqueteTuristico listaPaqueteNewPaqueteTuristico : listaPaqueteNew) {
                if (!listaPaqueteOld.contains(listaPaqueteNewPaqueteTuristico)) {
                    listaPaqueteNewPaqueteTuristico.getListaServicios().add(servicio);
                    listaPaqueteNewPaqueteTuristico = em.merge(listaPaqueteNewPaqueteTuristico);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = servicio.getCodigo_servicio();
                if (findServicio(id) == null) {
                    throw new NonexistentEntityException("The servicio with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Servicio servicio;
            try {
                servicio = em.getReference(Servicio.class, id);
                servicio.getCodigo_servicio();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The servicio with id " + id + " no longer exists.", enfe);
            }
            List<PaqueteTuristico> listaPaquete = servicio.getListaPaquete();
            for (PaqueteTuristico listaPaquetePaqueteTuristico : listaPaquete) {
                listaPaquetePaqueteTuristico.getListaServicios().remove(servicio);
                listaPaquetePaqueteTuristico = em.merge(listaPaquetePaqueteTuristico);
            }
            em.remove(servicio);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Servicio> findServicioEntities() {
        return findServicioEntities(true, -1, -1);
    }

    public List<Servicio> findServicioEntities(int maxResults, int firstResult) {
        return findServicioEntities(false, maxResults, firstResult);
    }

    private List<Servicio> findServicioEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Servicio.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Servicio findServicio(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Servicio.class, id);
        } finally {
            em.close();
        }
    }

    public int getServicioCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Servicio> rt = cq.from(Servicio.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
