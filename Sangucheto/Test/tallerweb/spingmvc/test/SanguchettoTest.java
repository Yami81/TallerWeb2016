package tallerweb.spingmvc.test;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.Sanguchetto;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

public class SanguchettoTest {


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

	@Before
	public void init(){ 
		Sanguchetto.getInstance().vaciar();
	}
	
	@Test
    public void testVaciar() {
    	
    	Assert.assertEquals(0, Sanguchetto.getInstance().verCondimentos().size());
    	Assert.assertEquals(0, Sanguchetto.getInstance().verIngredientes().size());
    }
	
	@Test
    public void testVerIngredientes() {

    	Ingrediente ingrediente1 = new Ingrediente();
    	ingrediente1.setNombre("PAN");
    	ingrediente1.setPrecio(10.00);
    	ingrediente1.setTipo(TipoIngrediente.INGREDIENTE);
    	
    	Ingrediente ingrediente2 = new Ingrediente();
    	ingrediente2.setNombre("MAYONESA");
    	ingrediente2.setPrecio(10.00);
    	ingrediente2.setTipo(TipoIngrediente.CONDIMENTO);
    	
    	Ingrediente ingrediente3 = new Ingrediente();
    	ingrediente3.setNombre("LECHUGA");
    	ingrediente3.setPrecio(10.00);
    	ingrediente3.setTipo(TipoIngrediente.INGREDIENTE);
    	
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente1);
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente2);
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente3);
       	
    	Assert.assertEquals(2, Sanguchetto.getInstance().verIngredientes().size());
    }
	
	@Test
    public void testVerCondimentos() {
    	
    	Ingrediente ingrediente1 = new Ingrediente();
    	ingrediente1.setNombre("PAN");
    	ingrediente1.setPrecio(10.00);
    	ingrediente1.setTipo(TipoIngrediente.INGREDIENTE);
    	
    	Ingrediente ingrediente2 = new Ingrediente();
    	ingrediente2.setNombre("MAYONESA");
    	ingrediente2.setPrecio(10.00);
    	ingrediente2.setTipo(TipoIngrediente.CONDIMENTO);
    	
    	Ingrediente ingrediente3 = new Ingrediente();
    	ingrediente3.setNombre("LECHUGA");
    	ingrediente3.setPrecio(10.00);
    	ingrediente3.setTipo(TipoIngrediente.INGREDIENTE);
    	
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente1);
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente2);
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente3);
    	
    	Assert.assertEquals(1, Sanguchetto.getInstance().verCondimentos().size());
    }
	
	@Test
    public void testGetPrecio() {
    	
    	Ingrediente ingrediente1 = new Ingrediente();
    	ingrediente1.setNombre("PAN");
    	ingrediente1.setPrecio(10.00);
    	ingrediente1.setTipo(TipoIngrediente.INGREDIENTE);
    	
    	Ingrediente ingrediente2 = new Ingrediente();
    	ingrediente2.setNombre("MAYONESA");
    	ingrediente2.setPrecio(25.50);
    	ingrediente2.setTipo(TipoIngrediente.CONDIMENTO);
    	
    	Ingrediente ingrediente3 = new Ingrediente();
    	ingrediente3.setNombre("LECHUGA");
    	ingrediente3.setPrecio(10.00);
    	ingrediente3.setTipo(TipoIngrediente.INGREDIENTE);    
    	
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente1);
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente2);
    	Sanguchetto.getInstance().agregarIngrediente(ingrediente3);
    	
    	Assert.assertTrue(45.50 == Sanguchetto.getInstance().getPrecio());

    }

}
