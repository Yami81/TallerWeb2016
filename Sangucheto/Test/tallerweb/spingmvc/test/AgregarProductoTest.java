package tallerweb.spingmvc.test;

import static org.junit.Assert.*;

import org.junit.Test;

import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.TipoIngrediente;
import tallerweb.springmvc.model.Stock;

public class AgregarProductoTest {

	@Test 
	public void AgregarUnProducto (){
		
		Ingrediente tomate = new Ingrediente();
		{
			tomate.setNombre("tomate");
			tomate.setPrecio(5.00);
			tomate.setTipo(TipoIngrediente.INGREDIENTE);
		}
		
		
		assertEquals(true,Stock.getInstance().agregarIngrediente(tomate));
		
		
	}
	
	
	@Test 
	public void EliminarUnProducto (){
		
		Ingrediente tomate = new Ingrediente();
		{
			tomate.setNombre("tomate");
			tomate.setPrecio(5.00);
			tomate.setTipo(TipoIngrediente.INGREDIENTE);
		}
		
		Stock.getInstance().agregarIngrediente(tomate);
		
		assertEquals(true,Stock.getInstance().eliminarIngrediente(tomate));
		
		
	}
	
	
	
}
