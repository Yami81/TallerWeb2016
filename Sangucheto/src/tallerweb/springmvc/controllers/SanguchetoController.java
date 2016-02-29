package tallerweb.springmvc.controllers;

import java.util.Set;

//agrego los import
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import tallerweb.springmvc.model.Ingrediente;
//import tallerweb.springmvc.model.Persona;
import tallerweb.springmvc.model.Stock;
import tallerweb.springmvc.model.TipoIngrediente;

/*La anotación @Controller indica que la clase es un bean controlador y nos ahorra el trabajo 
 * de definir en XML el bean correspondiente.*/
@Controller
public class SanguchetoController {
	
	private Stock miStock = Stock.getInstance();
	
	/* Con @RequestMapping asociamos una URL al controlador.*/
	@RequestMapping("formulario")
	public ModelAndView altaProducto(){
		
		return new ModelAndView("altaProducto","comand", new Ingrediente());
			
	}
	
	/*Con este ModelAttribute carga el contenido de la clase (public emun tipoIngr..) definida en el modelo */
	@ModelAttribute("listaTipo")
	public TipoIngrediente[] cargarTipoIngrediente(){
		return TipoIngrediente.values(); 
	}
	
	
	
	/*Spring hace accesible el modelo a la vista como un atributo de la petición y al 
	 * controlador si le pasamos un parámetro de tipo ModelMap.*/
	@RequestMapping(value="/productoAgregado", method=RequestMethod.POST )
	public ModelAndView agregarProducto(@RequestParam("nombre") String nombre, @RequestParam("precio") Double precio ,@RequestParam("tipo") TipoIngrediente tipo , ModelMap model ){
		Ingrediente miIngrediente = new Ingrediente();
	
		miIngrediente.setNombre(nombre);
		miIngrediente.setPrecio(precio);
		miIngrediente.setTipo(tipo);
		
		if(miStock.agregarIngrediente(miIngrediente)==true){
			model.addAttribute("ingrediente",miIngrediente);
			return new ModelAndView("productoAgregado");
		}
		else{
			return new ModelAndView("errorAltaProducto");
		}

	}
	
	@RequestMapping(value = "/altaProducto", method = RequestMethod.POST)
	public ModelAndView mostrar( ModelMap model){
		return new ModelAndView("productoAgregado");
	}
	
	@RequestMapping(value = "/verProducto", method = RequestMethod.GET)
	public ModelAndView mostrarstock( ModelMap model){
		
		model.addAttribute("listaStock",miStock.obtenerStock());
		return new ModelAndView("stockProducto");
	}
    
	@RequestMapping("agregarStock")
	public ModelAndView agregarStock(){
		
		return new ModelAndView("agregarStockIngrediente");
	}
	
	@ModelAttribute("listaIngrediente")
	public Set<Ingrediente> ingredienteDisponible(){
		return miStock.listarIngredientesDisponibles();
		
	}
	
	@RequestMapping(value="/mostrarAgregadoStock", method = RequestMethod.POST)
	public ModelAndView agregar(@RequestParam("nombre") String nombre, @RequestParam("cantidad") Integer cantidad, ModelMap model){
		
		Ingrediente miIngrediente = new Ingrediente();
		Set<Ingrediente> miListaIngrediente = miStock.listarIngredientesDisponibles();
		for(Ingrediente ingrediente:miListaIngrediente){
			if(ingrediente.getNombre().equals(nombre)){
				miIngrediente = ingrediente;
			}
		}
		
		miStock.agregarStock(miIngrediente, cantidad);
		
		model.addAttribute("ingrediente",miIngrediente);
		
		//return "redirect:verProducto.do";
		return new ModelAndView("mostrarAgregadoStock");
	}
	
	
	@RequestMapping("irIndex")
	public ModelAndView volverIndex(){
		return new ModelAndView("inicio");
	}

}
