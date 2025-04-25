import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Main {
    public static void main(String[] args) {
        Barrio barrio = new Barrio("Guambi", 123);

        Configuration configuration = new Configuration();
        configuration.addAnnotatedClass(Barrio.class);
        configuration.configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();

        Transaction transaction = session.beginTransaction();
        // Se guarda en la BD
        session.persist(barrio);
        transaction.commit();

        session.close();
        sessionFactory.close();





    }
}
