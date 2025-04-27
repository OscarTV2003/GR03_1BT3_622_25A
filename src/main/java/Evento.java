import jakarta.persistence.*;

@Entity
@Table (name = "Evento")
public class Evento {
    @Id
    @Column (name = "nombreEvento")
    private String nombreEvento;
    @Basic
    @Column (name = "fechaInicio")
    private String fechaInicio;
    @Basic
    @Column (name = "descripcion")
    private String descripcion;
    @Basic
    @Column (name = "hora")
    private String hora;
    @Basic
    @Column (name = "imagen")
    private String imagen;

    public Evento() {

    }


    public String getNombreEvento() {return nombreEvento;}

    public void setNombreEvento(String nombreEvento) {this.nombreEvento = nombreEvento;}

    public String getFechaInicio() {return fechaInicio;}

    public void setFechaInicio(String fecha) {this.fechaInicio = fecha;}

    public String getDescripcion() {return descripcion;}

    public void setDescripcion(String descripcion) {this.descripcion = descripcion;}

    public String getHora() {return hora;}

    public void setHora(String hora) {this.hora = hora;}

    public String getImagen() {return imagen;}

    public void setImagen(String imagen) {this.imagen = imagen;}

    @Override
    public String toString() {
        return "Evento{" +
                "nombreEvento=" + nombreEvento +
                ", fechaInicio='" + fechaInicio + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", hora='" + hora + '\'' +
                ", imagen='" + imagen + '\'' +
                '}';
    }
}
