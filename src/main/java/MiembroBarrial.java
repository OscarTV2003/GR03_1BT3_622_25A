import jakarta.persistence.*;

@Entity
@Table (name = "MiembroBarrial")
public class MiembroBarrial {
    @Id
    @Column (name = "cedula")
    private int cedula;
    @Basic
    @Column (name = "nombre")
    private String nombre;
    @Basic
    @Column (name = "contrasena")
    private String contrasena;
    @Basic
    @Column (name = "codBarrio")
    private int codBarrio;

    public MiembroBarrial() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCedula() {
        return cedula;
    }

    public void setCedula(int cedula) {
        this.cedula = cedula;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public int getCodBarrio() {
        return codBarrio;
    }

    public void setCodBarrio(int codBarrio) {
        this.codBarrio = codBarrio;
    }
}
