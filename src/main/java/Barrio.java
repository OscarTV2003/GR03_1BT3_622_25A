import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name = "Barrio")
public class Barrio {
    @Id
    private int codBarrio;
    private String nombre;

    public Barrio(String nombre, int codBarrio) {
        this.nombre = nombre;
        this.codBarrio = codBarrio;
    }

    public Barrio() {

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCodBarrio() {
        return codBarrio;
    }

    public void setCodBarrio(int codBarrio) {
        this.codBarrio = codBarrio;
    }
}
