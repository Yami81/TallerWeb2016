package tallerweb.springmvc.controllers;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

//agrego los import
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tallerweb.springmvc.model.Ingrediente;
import tallerweb.springmvc.model.Sanguchetto;
//import tallerweb.springmvc.model.Persona;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

/*La anotación @Controller indica que la clase es un bean controlador y nos ahorra el trabajo 
 * de definir en XML el bean correspondiente.*/
@Controller
public class SanguchetoController 
{
	
	private Stock miStock = Stock.getInstance();
	private Sanguchetto miSanguchetto = Sanguchetto.getInstance();
	
	/* Con @RequestMapping asociamos una URL al controlador.*/
	@RequestMapping("formulario")
	public ModelAndView altaProducto()
	{
		return new ModelAndView("altaProducto","comand", new Ingrediente());
	}
	
	/*Con este ModelAttribute carga el contenido de la clase (public emun tipoIngr..) definida en el modelo */
	@ModelAttribute("listaTipo")
	public TipoIngrediente[] cargarTipoIngrediente()
	{
		return TipoIngrediente.values(); 
	}
	
	
	
	/*Spring hace accesible el modelo a la vista como un atributo de la petición y al 
	 * controlador si le pasamos un parámetro de tipo ModelMap.*/
	@RequestMapping(value="/productoAgregado", method=RequestMethod.POST )
	public ModelAndView agregarProducto(@RequestParam("nombre") String nombre, @RequestParam("precio") Double precio ,@RequestParam("tipo") TipoIngrediente tipo , ModelMap model )throws NullPointerException 
	{
		try
		{
			if ( precio>0 )
			{
				Ingrediente miIngrediente = new Ingrediente();
	
				miIngrediente.setNombre(nombre);
				miIngrediente.setPrecio(precio);
				miIngrediente.setTipo(tipo);
		
				if(miStock.agregarIngrediente(miIngrediente)==true)
				{
					model.addAttribute("ingrediente",miIngrediente);
					return new ModelAndView("productoAgregado");
				}
				else
				{
					return new ModelAndView("errorAltaProducto");
				}
			}
			else
			{
				return new ModelAndView("errorAltaProducto");
			}
		}
		
		catch (Exception NullPointerException)
		{
			return new ModelAndView("errorAltaProducto");
		}
	}
	
	@RequestMapping(value = "/altaProducto", method = RequestMethod.POST)
	public ModelAndView mostrar( ModelMap model)
	{
		return new ModelAndView("productoAgregado");
	}
	
	@RequestMapping(value = "/verProducto", method = RequestMethod.GET)
	public ModelAndView mostrarstock( ModelMap model)
	{
		model.addAttribute("listaStock",miStock.obtenerStock());
		return new ModelAndView("stockProducto");
	}
	
    
	@RequestMapping("agregarStock")
	public ModelAndView agregarStock()
	{
		return new ModelAndView("agregarStockIngrediente");
	}
	
	@RequestMapping("irEliminarProducto")
	public ModelAndView eliminarProducto()
	{
		return new ModelAndView("eliminarProducto");
	}
	
	@ModelAttribute("listaIngrediente")
	public Set<Ingrediente> ingredienteDisponible()
	{
		return miStock.listarIngredientesDisponibles();
	}
	
	@RequestMapping(value="/mostrarAgregadoStock", method = RequestMethod.POST)
	public ModelAndView agregar(@RequestParam("nombre") String nombre, @RequestParam("cantidad") Integer cantidad, ModelMap model )throws NullPointerException 
	{
		try
		{
			if ( cantidad>0 )
			{
				Ingrediente miIngrediente = new Ingrediente();
				Set<Ingrediente> miListaIngrediente = miStock.listarIngredientesDisponibles();
				
				for(Ingrediente ingrediente:miListaIngrediente)
				{
					if(ingrediente.getNombre().equals(nombre))
					{
						miIngrediente = ingrediente;
					}
				}
		
				miStock.agregarStock(miIngrediente, cantidad);
		
				model.addAttribute("ingrediente",miIngrediente);
		
				//return "redirect:verProducto.do";
				return new ModelAndView("mostrarAgregadoStock");}
		
			else
			{
				return new ModelAndView("errorAltaProducto");
			}
		}
		
		catch (Exception NullPointerException)
		{
			return new ModelAndView("errorAltaProducto");
		}
		
	}
	
	@RequestMapping(value="/mostrarProductoEliminado", method = RequestMethod.POST)
	public ModelAndView agregar(@RequestParam("nombre") String nombre,  ModelMap model)throws NullPointerException
	{
		try
		{
			Ingrediente miIngrediente = new Ingrediente();
			Set<Ingrediente> miListaIngrediente = miStock.listarIngredientesDisponibles();
		
			for(Ingrediente ingrediente:miListaIngrediente)
			{
				if(ingrediente.getNombre().equals(nombre))
				{
				miIngrediente = ingrediente;
				}
			}
		
			miStock.eliminarIngrediente(miIngrediente);
		
			model.addAttribute("ingrediente",miIngrediente);
		
			//return "redirect:verProducto.do";
			return new ModelAndView("mostrarEliminado");
		}
		
		catch (Exception NullPointerException)
		{
			return new ModelAndView("errorAltaProducto");
		}
	}
	
	
	@RequestMapping("irIndex")
	public ModelAndView volverIndex()
	{
		return new ModelAndView("inicio");
	}

	//Proceso para Carrito
	@RequestMapping("carrito")
	public ModelAndView inicioCarrito(Model miModelo, String mensaje){
		mensaje="";
		miModelo.addAttribute("mensaje",mensaje);
		miModelo.addAttribute("precioFinal",miSanguchetto.getPrecio());
		miModelo.addAttribute("ingredientesSanguchetto", miSanguchetto.verIngredientes());
		miModelo.addAttribute("condimentosSanguchetto", miSanguchetto.verCondimentos());
		return new ModelAndView("carritoSanguchetto");
	}
	
	@RequestMapping("stockVacio")
	public ModelAndView stockVacio(Model miModelo, String mensaje){
		mensaje="No hay stock de ese producto en este momento.";
		miModelo.addAttribute("mensaje",mensaje);
		miModelo.addAttribute("precioFinal",miSanguchetto.getPrecio());
		miModelo.addAttribute("ingredientesSanguchetto", miSanguchetto.verIngredientes());
		miModelo.addAttribute("condimentosSanguchetto", miSanguchetto.verCondimentos());
		return new ModelAndView("carritoSanguchetto");
	}
	
	@RequestMapping("stockInsuficiente")
	public ModelAndView stockInsuficiente(Model miModelo, String mensaje){
		mensaje="No hay suficiente stock de ese producto en este momento.";
		miModelo.addAttribute("mensaje",mensaje);
		miModelo.addAttribute("precioFinal",miSanguchetto.getPrecio());
		miModelo.addAttribute("ingredientesSanguchetto", miSanguchetto.verIngredientes());
		miModelo.addAttribute("condimentosSanguchetto", miSanguchetto.verCondimentos());
		return new ModelAndView("carritoSanguchetto");
	}
	
	@ModelAttribute("ingredienteEnLista")
	public HashSet<Ingrediente> devuelveIngrediente(){
		Set<Ingrediente> miLista = miStock.listarIngredientesDisponibles();
		HashSet<Ingrediente> nuevaLista = new HashSet<Ingrediente>();
		
		for(Ingrediente ingrediente : miLista){
			if(ingrediente.getTipo().equals(TipoIngrediente.INGREDIENTE)){
				nuevaLista.add(ingrediente);
			}
		}
		
		return nuevaLista;
	}
	
	@ModelAttribute("condimentoEnLista")
	public HashSet<Ingrediente> devuelveCondimento(){
		Set<Ingrediente> miLista2 = miStock.listarIngredientesDisponibles();
		HashSet<Ingrediente> nuevaLista2 = new HashSet<Ingrediente>();
		
		for(Ingrediente ingrediente : miLista2){
			if(ingrediente.getTipo().equals(TipoIngrediente.CONDIMENTO)){
				nuevaLista2.add(ingrediente);
			}
		}
		return nuevaLista2;
	}
	
	@RequestMapping(value="/comprarIngredientes", method=RequestMethod.POST)
	public ModelAndView agregarIngredienteSanguchetto(@RequestParam("nombre") String nombre, ModelMap model, Integer cantidadEnCarrito){
		
		cantidadEnCarrito = 1;
		
		for(Ingrediente ingre : miSanguchetto.ObtenerCarrito()){
			if(ingre.getNombre().equals(nombre)){
				cantidadEnCarrito= cantidadEnCarrito+1;
			}
		}
		
		for(Map.Entry<Ingrediente, Integer> entry : miStock.obtenerStock().entrySet()){
			if(entry.getKey().getNombre().equals(nombre)){ 
				if(entry.getValue()>0){
					if(entry.getValue()>=cantidadEnCarrito){
					
						Ingrediente miIngrediente = new Ingrediente();
		
						miIngrediente.setNombre(nombre);
						miIngrediente.setPrecio(entry.getKey().getPrecio());
						miIngrediente.setTipo(TipoIngrediente.INGREDIENTE);
		
						miSanguchetto.agregarIngrediente(miIngrediente);
		
		
						return new ModelAndView("redirect:/carrito.do");
						}
					else{
						return new ModelAndView("redirect:/stockInsuficiente.do");
						}
					}
					
				else
				{return new ModelAndView("redirect:/stockVacio.do");}
				}
			}
		
		return new ModelAndView("inicio");
	}
	
	
	
	@RequestMapping(value="/comprarCondimentos", method=RequestMethod.POST)
	public ModelAndView agregarCondimentoSanguchetto(@RequestParam("nombre2") String nombre2, ModelMap model, Integer cantidadEnCarrito){
		
		cantidadEnCarrito = 1;
		
		for(Ingrediente ingre : miSanguchetto.ObtenerCarrito()){
			if(ingre.getNombre().equals(nombre2)){
				cantidadEnCarrito= cantidadEnCarrito+1;
			}
		}
		
		for(Map.Entry<Ingrediente, Integer> entry : miStock.obtenerStock().entrySet()){
			if(entry.getKey().getNombre().equals(nombre2)){ 
				if(entry.getValue()>0){
					if(entry.getValue()>=cantidadEnCarrito){
					
						Ingrediente miIngrediente = new Ingrediente();
		
						miIngrediente.setNombre(nombre2);
						miIngrediente.setPrecio(entry.getKey().getPrecio());
						miIngrediente.setTipo(TipoIngrediente.CONDIMENTO);
		
						miSanguchetto.agregarIngrediente(miIngrediente);
		
		
						return new ModelAndView("redirect:/carrito.do");
						}
					else{
						return new ModelAndView("redirect:/stockInsuficiente.do");
						}
					}
					
				else
				{return new ModelAndView("redirect:/stockVacio.do");}
				}
			}
		
		return new ModelAndView("inicio");
	}
	
	
	@RequestMapping (value = "/terminar")
	public ModelAndView terminarSanguchetto (Model model, Double descuento, String mensaje)
	{
		
		
		for(Map.Entry<Ingrediente, Integer> entry : miStock.obtenerStock().entrySet())
		{for (Ingrediente ingre: miSanguchetto.ObtenerCarrito())
		{if(entry.getKey().getNombre().equals(ingre.getNombre()))
			{miStock.comprarIngrediente(entry.getKey(),1);}}}
		
		
		
		
		//Trae lista producto con precio total
		model.addAttribute("listaComprada", miSanguchetto.ObtenerCarrito());
		model.addAttribute("precio", miSanguchetto.getPrecio());
			
		return new ModelAndView("finalizandoCarrito");
	}
	
	
	@RequestMapping("descuentoMonto")
	public ModelAndView monto(Model model){
		
		List<Double> monto = new ArrayList<Double>();
		monto.add(10.0);
		monto.add(15.0);
		monto.add(20.0);
		
		model.addAttribute("listaMonto", monto);
		return new ModelAndView("mostrarMonto");
		
	}
	
	
	
	@RequestMapping("descuentoPorcentaje")
	public ModelAndView porcentaje(Model model){
		
		List<Double> porcentaje = new ArrayList<Double>();
		porcentaje.add(10.0);
		porcentaje.add(20.0);
		porcentaje.add(30.0);
		
		model.addAttribute("listaPorcentaje", porcentaje);
		return new ModelAndView("mostrarPorcentaje");
		
	}
	
	@RequestMapping(value="/agregarDescuentoMonto", method=RequestMethod.POST)
	public ModelAndView agregarDescuentoMonto(@RequestParam ("numero") Double descuento, Double total, Model model, String mensaje )
	{
		total = miSanguchetto.getPrecio() - descuento;
		mensaje = "el descuento fue de $"+descuento;
		
		model.addAttribute("total", total);
		model.addAttribute("mensaje", mensaje);
		
		return new ModelAndView("graciasPorSuCompra");
	}
	
	@RequestMapping(value="/agregarDescuentoPorcentaje", method=RequestMethod.POST)
	public ModelAndView agregarDescuentoPorcentaje(@RequestParam ("numero2") Double porcentaje, Double descuento , Double total, Model model, String mensaje )
	{
		total= 0.0;
		descuento = 0.0;
		
		descuento = (miSanguchetto.getPrecio()*porcentaje) / 100;
		total = miSanguchetto.getPrecio() - descuento;
		mensaje = "el descuento del %"+ porcentaje +" fue de $"+descuento;
		
		model.addAttribute("total", total);
		model.addAttribute("mensaje", mensaje);
		
		return new ModelAndView("graciasPorSuCompra");
	}
	
	@RequestMapping("ningunDescuento")
	public ModelAndView porcentaje(Model model, String mensaje){
		
		mensaje= "";
		model.addAttribute("total", miSanguchetto.getPrecio());
		model.addAttribute("mensaje", mensaje);
		return new ModelAndView("graciasPorSuCompra");
		
	}
	
	@RequestMapping("vaciarCarrito")
	public ModelAndView vaciarCarrito(){
		miSanguchetto.vaciar();
		
		return new ModelAndView("inicio");
	}
	
			
	
	/*@ModelAttribute("precioSang")
	public  Double devuelvePrecioSanguchetto(){
		return miSanguchetto.getPrecio();
	}*/
	
	
	
}
