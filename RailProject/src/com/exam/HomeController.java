package com.exam;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
   
	@ModelAttribute(value = "hruser")
    public hrmodule gethr()
    {
        return  new hrmodule();
    }
    
	
	@RequestMapping(value="/hrlogin",method=RequestMethod.GET)
   public String gotohrlogin()
   {
	   return "HrLogin";
   }

  
   @RequestMapping(value="/hrlogin",method=RequestMethod.POST)
   public String validatehrlogin(@ModelAttribute("hruser") hrmodule hruser,HttpServletRequest req) 
   {
	   String name = req.getParameter("uname");
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   try{
		   em.getTransaction().begin();
		  hrmodule h =(hrmodule) em.createNamedQuery("hr.find").setParameter("hrName", hruser.getUname()).setParameter("hrPassword", hruser.getPwd()).getSingleResult();
		  em.getTransaction().commit();
		  String uname =h.getUname();
		  if(uname.equals(name))
		  {
			  return "Hrdisplay";
		  }
	   }
	   catch(Exception e)
	   {
		  
	   }
	return "failure";
}
}