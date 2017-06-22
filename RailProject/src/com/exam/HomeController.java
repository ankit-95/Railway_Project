package com.exam;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
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
 
   @ModelAttribute(value = "empuser")
   public empregister getemp()
   {
       return  new empregister();
   }
   
  
   @RequestMapping(value="/empreg",method=RequestMethod.GET)
   public String gotohrdisplay()
   {
	   return "regform";
   }
   
   @RequestMapping(value="/empreg",method=RequestMethod.POST)
   public String insertEmp(@ModelAttribute("empuser") empregister empuser,HttpServletRequest req) 
   {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   em.getTransaction().begin();
	   Query query = em.createNativeQuery("INSERT INTO empregister (EMAIL,FIRST_NAME,LAST_NAME,PHONE,ADDRESS,CITY,STATE,COMMENT,PASSWORD,CONFIRMPASSWORD) " +
	            " VALUES(?,?,?,?,?,?,?,?,?,?)");
	   query.setParameter(1, empuser.getEmail());
	   query.setParameter(2, empuser.getFirst_name());
	   query.setParameter(3, empuser.getLast_name());
	   query.setParameter(4, empuser.getPhone());
	   query.setParameter(5, empuser.getAddress());
	   query.setParameter(6, empuser.getCity());
	   query.setParameter(7, empuser.getState());
	   query.setParameter(8, empuser.getComment());
	   query.setParameter(9, empuser.getPassword());
	   query.setParameter(10, empuser.getConfirmPassword());
	   query.executeUpdate();
	   em.getTransaction().commit();
	   em.close();
	   emf.close();
	   return "success";
   }
}