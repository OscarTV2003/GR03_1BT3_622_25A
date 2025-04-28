import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/RegistroMiembroBarrial")
public class RegistroMiembroBarrialServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int cedula = Integer.parseInt(request.getParameter("cedula"));
        String nombre = request.getParameter("nombre");
        String contrasena = request.getParameter("contrasena");
        int codBarrio = Integer.parseInt(request.getParameter("codigoBarrio"));

        MiembroBarrial miembroBarrial = new MiembroBarrial();

        miembroBarrial.setCedula(cedula);
        miembroBarrial.setNombre(nombre);
        miembroBarrial.setContrasena(contrasena);
        miembroBarrial.setCodBarrio(codBarrio);

        try {
            Hibernate.guardarEnBaseDeDatos(miembroBarrial);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("index.jsp");

    }
}
