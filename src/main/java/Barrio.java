import jakarta.persistence.*;

@Entity
@Table (name = "Barrio")
public class Barrio {
    @Id
    @Column (name = "codigo")
    private int codBarrio;
    @Basic
    @Column (name = "barrio")
    private String barrio;
    @Basic
    @Column (name = "parroquia")
    private String parroquia;

    public Barrio() {

    }

    public String getBarrio() {
        return barrio;
    }

    public void setBarrio(String nombre) {
        this.barrio = nombre;
    }

    public int getCodBarrio() {
        return codBarrio;
    }

    public void setCodBarrio(int codBarrio) {
        this.codBarrio = codBarrio;
    }

    public String getParroquia() {
        return parroquia;
    }

    public void setParroquia(String parroquia) {
        this.parroquia = parroquia;
    }

    @Override
    public String toString() {
        return "Barrio{" +
                "codBarrio=" + codBarrio +
                ", nombre='" + barrio + '\'' +
                ", parroquia='" + parroquia + '\'' +
                '}';
    }
}
