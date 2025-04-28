import eventos.Evento;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList; // <-- Importar esto también

@WebServlet("/mostrarEventos")
public class MostrarEventosServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Evento> eventos = Hibernate.obtenerTodos(Evento.class);

            // Verificar si la lista de eventos no es null o vacía
            if (eventos == null || eventos.isEmpty()) {
                System.out.println("No se encontraron eventos en la base de datos.");
                eventos = new ArrayList<>(); // <<<<<< AQUI EL CAMBIO: no dejes null, pon lista vacía
            } else {
                System.out.println("Se encontraron " + eventos.size() + " eventos.");
            }

            request.setAttribute("listaEventos", eventos); // Ahora siempre tienes algo que mandar
            request.getRequestDispatcher("/mostrarEventos.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al obtener eventos");
        }
    }
}
