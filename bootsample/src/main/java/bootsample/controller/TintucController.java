package bootsample.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

//import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bootsample.moddel.Tintuc;
import bootsample.servicer.TaikhoanServicer;
import bootsample.servicer.TintucServicer;


@Controller
@SessionAttributes("tintuc")
public class TintucController {
	
	@Autowired
	private  TintucServicer tintucService;
	
	@Autowired
	private  TaikhoanServicer taikhoanService;
	
	

	
	@GetMapping("/")
	public String home(HttpServletRequest request){
		request.setAttribute("tintucs", tintucService.findAll());
		return "index";
	}
	
	@GetMapping("/admin")
	public String allemployees(HttpServletRequest request){
		request.setAttribute("tintucs", tintucService.findAll());		
		return "admin";
	}
	
	@GetMapping("/chitiet")
	public String Chitiet(@RequestParam("id") int id, HttpServletRequest request){
		Tintuc tintuc = tintucService.findTinTuc(id);
		request.setAttribute("tintuc", tintuc);		
		return "blog-details";
	}
		
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String edit(@RequestParam String tendangnhap ,@RequestParam String pass,RedirectAttributes redirect) {
		
		if(taikhoanService.kiemtradangnhap(tendangnhap, pass)==1)
		{
			return "redirect:/admin";
		}	
		else {
			redirect.addFlashAttribute("success", "Không đúng tài khoản hoặc mật khẩu!");
			return "redirect:/dangnhap";
		}
		
	}
	
	
	@GetMapping("/dangnhap")
	public String Atintuc(HttpServletRequest request){
		
		//request.setAttribute("mode", "MODE_login");
		return "dangnhap";
		
	}
	@GetMapping("/giaitri")	
	public String GaiTristintuc(HttpServletRequest request){
		
		//request.setAttribute("mode", "MODE_login");
		return "giatri";
		
	}
	
	
	
	@GetMapping("/new-tintuc")
	public String newtintuc(HttpServletRequest request){
		//request.setAttribute("mode", "MODE_NEW");
		return "admin";
	}
	
	
	@PostMapping("/save-tintuc")
	public String save(@Valid Tintuc tintuc, BindingResult result, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			return "form";
		}
		tintucService.save(tintuc);
		redirect.addFlashAttribute("success", "Saved employee successfully!");
		return "redirect:/admin";
	}
	
	@GetMapping("/update-tintuc")
	public String updateTinTuc(@RequestParam("id") int id, HttpServletRequest request){
		Tintuc tintuc = tintucService.findTinTuc(id);
		request.setAttribute("tintuc", tintuc);
		return "form";
	}
	@GetMapping("/delete-tintuc")
	public String deleteTinTuc(@RequestParam int id, HttpServletRequest request, RedirectAttributes redirect){
		tintucService.delete(id);
		request.setAttribute("tintucs", tintucService.findAll());
		return "redirect:/admin";
	}
	@GetMapping("/employee/them")
	public String create(Model model) {
		model.addAttribute("tintuc", new Tintuc());
		return "form";
	}

}

