import eventos.Evento;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/CrearEvento")
public class CrearEvento extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombreEvento = request.getParameter("nombreEvento");
        String fechaInicio = request.getParameter("fechaInicio");
        String descripcion = request.getParameter("descripcion");
        String hora = request.getParameter("hora");
        String imagen = request.getParameter("imagen");

        Evento evento = new Evento();

        evento.setNombreEvento(nombreEvento);
        evento.setFechaInicio(fechaInicio);
        evento.setDescripcion(descripcion);
        evento.setHora(hora);
        evento.setImagen(imagen);

        try {
            Hibernate.guardarEnBaseDeDatos(evento);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("index.jsp");

    }
}
