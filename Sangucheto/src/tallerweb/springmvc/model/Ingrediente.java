package tallerweb.springmvc.model;


public class Ingrediente {

    private String nombre;
    private Double precio;
    private TipoIngrediente tipo;
    
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Double getPrecio() {
        return precio;
    }
    public void setPrecio(Double precio) {
        this.precio = precio;
    }
    public TipoIngrediente getTipo() {
        return tipo;
    }
    public void setTipo(TipoIngrediente tipo) {
        this.tipo = tipo;
    }
    
    @Override
   	public int hashCode() {
   		return this.getNombre().length();
   	}

    @Override
	      public boolean equals(Object o){
	         if(o instanceof Ingrediente) 
	            return nombre.equals(((Ingrediente) o).getNombre());
	              else
	                return false;
	      }
}
