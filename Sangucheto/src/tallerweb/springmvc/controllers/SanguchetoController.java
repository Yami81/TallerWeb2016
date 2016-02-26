package tallerweb.springmvc.controllers;

//agrego los import
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SanguchetoController {
	
	@RequestMapping("formulario")
	public ModelAndView formulario(){
		ModelMap model = new ModelMap();
		//System.out.println("Hola");
		return new ModelAndView("formulario", model);
		
		
	}

}
