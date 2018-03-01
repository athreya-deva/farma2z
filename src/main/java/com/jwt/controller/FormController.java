package com.jwt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.Flowers;
import com.jwt.model.Fruits;
import com.jwt.model.Nuts;
import com.jwt.model.Sell;
import com.jwt.model.User;
import com.jwt.model.Vegetables;
import com.jwt.service.FlowersService;
import com.jwt.service.FruitsService;
import com.jwt.service.NutsService;
import com.jwt.service.SellService;
import com.jwt.service.UserService;
import com.jwt.service.VegetablesService;

/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */

@Controller
public class FormController {

	

	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private FruitsService fruitService;
	
	@Autowired
	private NutsService nutsService;
	
	@Autowired
	private FlowersService flowersService;
	
	@Autowired
	private VegetablesService vegetablesService;
	
	@Autowired
	private SellService sellService;

	@RequestMapping(value = "/")
	public ModelAndView listEmployee(ModelAndView model) throws IOException {
		model.setViewName("welcome");
		return model;
	}
	
	@RequestMapping(value = "/loginpass")
	public ModelAndView loginpass(ModelAndView model) throws IOException {
		
		
		model.setViewName("homes");
		return model;
	}
	
	@RequestMapping(value = "/loginfail")
	public ModelAndView loginfail(ModelAndView model) throws IOException {
		
		model.addObject("errorMessage", "Invalid UserName or Password");
		model.setViewName("login");
		return model;
	}

	@RequestMapping(value = "/loginpage")
	public ModelAndView loginpage(ModelAndView model) throws IOException {
		
		
		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value = "/sellpage")
	public ModelAndView sellpage(ModelAndView model) throws IOException {
		
		
		model.setViewName("product");
		return model;
	}
	
	@RequestMapping(value = "/buypage")
	public ModelAndView buynpage(ModelAndView model) throws IOException {
		
		
		model.setViewName("buy");
		return model;
	}


	
	
	
	@RequestMapping(value = "/signup", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView signup() {
	
		return new ModelAndView("signup");
	}
	

	@RequestMapping(value="/register",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  getSearchUserProfiles(
			   @RequestParam String userName,
			   @RequestParam String password,
			   @RequestParam String gender,
			   @RequestParam Integer age,
			   @RequestParam Long mobileNumber,
			   HttpServletRequest request, HttpServletResponse response,ModelAndView model) {
		
		
	      
		
		User user=new User();
		user.setAge(age);
		user.setGender(gender);
		user.setMobileNumber(mobileNumber);
		user.setPassword(password);
		user.setUserName(userName);
		userservice.saveUserDetails(user);
		String pNameParameter = userName;
	       
		
		model.setViewName("homes");
		return model;

	      
	   }
	
	@RequestMapping(value="/saveproductdetails",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  saveproductdetails(
			   @RequestParam String userName,
			   @RequestParam Long mobileNumber,
			   @RequestParam String location,
			   @RequestParam String productName,
			   @RequestParam String imagePath,
			   @RequestParam Integer price,
			   @RequestParam Integer quantity,
			   HttpServletRequest request, HttpServletResponse response,ModelAndView model) {
		
		
	      
		
		Sell sell=new Sell();
		sell.setMobileNumber(mobileNumber);
		sell.setLocation(location);
		sell.setPrice(price);
		sell.setProductName(productName);
		sell.setQuantity(quantity);
		sell.setUserName(userName);
		sell.setImagePath(imagePath);
		
		sellService.saveSellData(sell);
		
	       
		
		model.setViewName("homes");
		return model;

	      
	   }
	
	@RequestMapping(value="/login",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  checkVerifiedUser(
			@RequestParam String userName,
			@RequestParam String password,HttpServletRequest request
			   ) {
	      
		User user=userservice.getVerifiedUser(userName,password);
		String valid="";
		if(user !=null)
		{
			return new ModelAndView("redirect:/loginpass");
			
		}
		else
		{
			return new ModelAndView("redirect:/loginfail");
		}
	
		}
	
	@RequestMapping(value="/fruitdetail",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  fruitdetail(HttpServletRequest request,ModelAndView model) {
		
		List<Fruits> fruitdetails=fruitService.getAllFruits();
	      
		model.addObject("datas", fruitdetails);
		model.setViewName("fruits");
		return model;
		
		}
	
	@RequestMapping(value="/flowerdetail",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  flowerdetail(HttpServletRequest request,ModelAndView model) {
		
		List<Flowers> flowerdetails=flowersService.getAllFlowers();
	      
		model.addObject("datas", flowerdetails);
		model.setViewName("flowers");
		return model;
		
		}
	
	@RequestMapping(value="/nutdetail",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  nutdetail(HttpServletRequest request,ModelAndView model) {
		
		List<Nuts> nutdetails=nutsService.getAllNuts();
	      
		model.addObject("datas", nutdetails);
		model.setViewName("nuts");
		return model;
		
	}
	
	@RequestMapping(value="/buydetail",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  buydetail(HttpServletRequest request,ModelAndView model) {
		
		List<Sell> buyData=sellService.getAllSellData();
	      
		model.addObject("datas", buyData);
		model.setViewName("buy");
		return model;
		
	}
	
	@RequestMapping(value="/vegetabledetail",method = RequestMethod.GET,headers="Accept=application/json")
	public ModelAndView  vegetabledetail(HttpServletRequest request,ModelAndView model) {
		
		List<Vegetables> nutdetails=vegetablesService.getAllVegetables();
	      
		model.addObject("datas", nutdetails);
		model.setViewName("vegetable");
		return model;
		
	}

	


	

}