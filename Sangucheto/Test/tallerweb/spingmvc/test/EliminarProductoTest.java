package tallerweb.spingmvc.test;

import org.junit.Test;
import java.util.HashMap;

import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.Sanguchetto;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

public class EliminarProductoTest {

	
	@Test
	public void EliminarProducto (){
		
	
		
		Ingrediente tomate = new Ingrediente();
		
		tomate.setNombre("papa");
		tomate.setPrecio(12.00);
		tomate.setTipo(TipoIngrediente.INGREDIENTE);
		
Ingrediente tomate2 = new Ingrediente();
		
		tomate2.setNombre("papa2");
		tomate2.setPrecio(12.00);
		tomate2.setTipo(TipoIngrediente.INGREDIENTE);
		
		
		Sanguchetto.getInstance().agregarIngrediente(tomate);
		Sanguchetto.getInstance().agregarIngrediente(tomate2);
		
		
		
		for(Ingrediente ingrediente : Sanguchetto.getInstance().ObtenerCarrito() )
		{ if (ingrediente.getNombre().equals(Stock.getInstance().obtenerStock()))
			{}}
		

		
	}
}
