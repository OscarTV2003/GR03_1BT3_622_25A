import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/RegistroBarrio")
public class RegistroBarrioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String parroquia = request.getParameter("parroquia");
        int codBarrio = Integer.parseInt(request.getParameter("codigoBarrio"));

        Barrio barrio = new Barrio();
        barrio.setBarrio(nombre);
        barrio.setParroquia(parroquia);
        barrio.setCodBarrio(codBarrio);

        try {
            Hibernate.guardarEnBaseDeDatos(barrio);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("index.jsp");
    }
}
