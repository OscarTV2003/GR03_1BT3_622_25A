import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/crearEmprendimientoServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024, // 1MB
        maxFileSize = 1024 * 1024 * 5,    // 5MB por archivo
        maxRequestSize = 1024 * 1024 * 30 // 30MB en total
)
public class CrearEmprendimientoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Recoger los datos del formulario
        String nombre = request.getParameter("nombre");
        String descripcion = request.getParameter("descripcion");
        String precioStr = request.getParameter("precio"); // puede ser null o vacío
        double precio = 0.0;

        if (precioStr != null && !precioStr.trim().isEmpty()) {
            try {
                precio = Double.parseDouble(precioStr);
            } catch (NumberFormatException e) {
                // Si el precio no es válido, lo dejamos en 0 o manejamos error
                precio = 0.0;
            }
        }

        // Recoger las imágenes (pueden ser varias)
        /*List<Part> imagenes = new ArrayList<>();
        for (Part part : request.getParts()) {
            if (part.getName().equals("imagenes") && part.getSize() > 0) {
                imagenes.add(part);
            }
        }*/

        Emprendimiento emprendimiento = new Emprendimiento(nombre, descripcion, precio);
        try {
            Hibernate.guardarEnBaseDeDatos(emprendimiento);
            response.sendRedirect("emprendimientos.jsp");
            //response.getWriter().write("success");

        } catch (Exception e) {
            e.printStackTrace();
            response.setContentType("text/plain");
            response.getWriter().write("error");
        }

    }
}