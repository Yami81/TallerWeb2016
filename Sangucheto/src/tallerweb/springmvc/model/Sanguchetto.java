package tallerweb.springmvc.model;

import java.util.LinkedList;
import java.util.List;

public class Sanguchetto {

	private static Sanguchetto instance = new Sanguchetto();
	private List<Ingrediente> ingredientes = new LinkedList<Ingrediente>();
	
	//Constructor
	private Sanguchetto(){}
	
	// Método para obtener la instancia de nuestra clase
	public static Sanguchetto getInstance(){
		return instance;
	}
	
	/**
	 * Elimina todos los ingredientes del sanguchetto.<br>
	 */
	public void vaciar(){
		// Implementar
		
		this.ingredientes.clear();
	}
	
	public List<Ingrediente> ObtenerCarrito(){
		
		
		return ingredientes;
	}
	
	/**
	 * Agrega un ingrediente al carrito.<br>
	 * @param ingrediente
	 */
	public void agregarIngrediente(Ingrediente ingrediente){
		// Implementar
		this.ingredientes.add(ingrediente);
	}
	
	/**
	 * Lista todos los ingredientes que forman parte del sanguchetto.<br>
	 * @return
	 */
	public List<Ingrediente> verIngredientes(){
		// Implementar
		List<Ingrediente> listaMostrarIngredientes = new LinkedList<Ingrediente>();
		for(Ingrediente ingrediente : this.ingredientes) {
           if(ingrediente.getTipo().equals(TipoIngrediente.INGREDIENTE)){
        	   listaMostrarIngredientes.add(ingrediente);
           }
        }
		return listaMostrarIngredientes;
	}
	
	/**
     * Lista todos los condimentos que forman parte del sanguchetto.<br>
     * @return
     */
    public List<Ingrediente> verCondimentos(){
        // Implementar
    	
		List<Ingrediente> listaMostrarCondimentos = new LinkedList<Ingrediente>();
		for(Ingrediente ingrediente : this.ingredientes) {
           if(ingrediente.getTipo().equals(TipoIngrediente.CONDIMENTO)){
        	   listaMostrarCondimentos.add(ingrediente);
           }
        }
		return listaMostrarCondimentos;
    }
	
	/**
	 * Devuelve el precio total del sanguchetto.<br>
	 * @return
	 */
	/*public Double getPrecio(){
		// Implementar
		
		double precio = 0;
		double precioTotal = 0;
		
		for(Ingrediente ingrediente : ingredientes) {
           precio = ingrediente.getPrecio();
           precioTotal = precioTotal + precio;
		}
		return precioTotal;
	}*/
}
