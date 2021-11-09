package com.l33t_c0d3r_66.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.l33t_c0d3r_66.dao.ProductDao;
import com.l33t_c0d3r_66.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	@RequestMapping("/")
	public String home(Model model)
	{
		List<Product> listOfProducts = productDao.getProducts();
		model.addAttribute("listOfProducts",listOfProducts);
		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m) {
		m.addAttribute("title","Add Product");
		return "add_product";
	}
	
	@RequestMapping(path="/handle-product",method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		RedirectView redirectView = new RedirectView();
		productDao.createProduct(product);
		redirectView.setUrl(request.getContextPath());
		System.out.print(product);
		return redirectView;
	}
	
	@RequestMapping("/delete-product/{productId}")
	public RedirectView deleteHandler(@PathVariable("productId") int productId,HttpServletRequest request)
	{
		this.productDao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath());
		return redirectView;
	}
	
	@RequestMapping("/edit-product/{productId}")
	public String eidtHandler(@PathVariable("productId")int productId, HttpServletRequest request, Model model)
	{
		Product product = this.productDao.getProduct(productId);
		model.addAttribute("product",product);
		return "edit_product";
	}

}
