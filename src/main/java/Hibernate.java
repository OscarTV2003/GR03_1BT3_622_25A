import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import java.io.Serializable;
import java.util.List;

public class Hibernate {
    public static <T> void guardarEnBaseDeDatos(T entidad) throws Exception {
        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(entidad.getClass());
        configuration.configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = null;


        try {
            transaction = session.beginTransaction();
            // Se guarda en la BD
            session.persist(entidad);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new Exception("Error al guardar el emprendimiento", e);
        } finally {
            session.close();
            sessionFactory.close();
        }
    }

    //Traer todos los registros de una clase
    public static <T> List<T> obtenerTodos(Class<T> claseEntidad) {
        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(claseEntidad);
        configuration.configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();

        List<T> lista = session.createQuery("FROM " + claseEntidad.getSimpleName(), claseEntidad).list();

        session.close();
        sessionFactory.close();

        return lista;
    }

    //Buscar por ID
    public static <T> T obtenerPorId(Class<T> claseEntidad, Object id) {
        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(claseEntidad);
        configuration.configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();

        T entidad = session.get(claseEntidad, (Serializable) id);

        session.close();
        sessionFactory.close();

        return entidad;
    }
}
