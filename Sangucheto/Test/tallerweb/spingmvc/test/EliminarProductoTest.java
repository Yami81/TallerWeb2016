package tallerweb.spingmvc.test;

import org.junit.Test;
import java.util.HashMap;

import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

public class EliminarProductoTest {

	
	@Test
	public void EliminarProducto (Stock miStock, String palabra){
		
		miStock = Stock.getInstance();
		
		
		
		Ingrediente tomate = new Ingrediente();
		
		tomate.setNombre("papa");
		tomate.setPrecio(12.00);
		tomate.setTipo(TipoIngrediente.INGREDIENTE);
		
		miStock.agregarIngrediente(tomate);
		

		
	}
}
