import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

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
}
