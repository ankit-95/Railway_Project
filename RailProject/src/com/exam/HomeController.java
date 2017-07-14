package com.exam;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.UUID;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.prism.paint.Color;


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
	   UUID uniqueID = UUID.randomUUID();
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   em.getTransaction().begin();
	   Query query = em.createNativeQuery("INSERT INTO empregister (EMAIL,FIRST_NAME,LAST_NAME,PHONE,ADDRESS,CITY,STATE,COMMENT,PASSWORD,CONFIRMPASSWORD,EMPID) " +
	            " VALUES(?,?,?,?,?,?,?,?,?,?,? )");
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
	   if(uniqueID.hashCode()<0)
	   {
	   query.setParameter(11,-(uniqueID.hashCode())); 
	   }
	   else
		   query.setParameter(11,uniqueID.hashCode());    
	   query.executeUpdate();
	   em.getTransaction().commit();
	   em.close();
	   emf.close();
	   return "success";
   }
   
   @RequestMapping(value="/emplogin",method=RequestMethod.GET)
   public String empLogin()
   {
	   return "emplogin";
   }
   
   @RequestMapping(value="/emplogin",method=RequestMethod.POST)
   public String validatehrlogin(@ModelAttribute("empuser") empregister empuser,HttpServletRequest req) 
   {
	   String empemail = req.getParameter("email");
	   System.out.println(empemail);
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   try{
		   em.getTransaction().begin();
		 String email = (String) em.createNamedQuery("emp.find").setParameter("empemail", empuser.getEmail()).setParameter("emppassword", empuser.getPassword()).getSingleResult(); 
		 em.getTransaction().commit();
		  System.out.println(email);
		  if(email.equals(empemail))
		  {
			  req.setAttribute("email", empuser.getEmail());
			  return "Empdisplay";
		  }
	   }
	   catch(Exception e)
	   {
		  
	   }
	return "failure";
}
   
   @RequestMapping(value="/empdisp",method=RequestMethod.GET)
   public String empDisp(Model map,HttpServletRequest req)
   {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	    EntityManager em=emf.createEntityManager();
	    em.getTransaction().begin();
	    List<empregister> list = em.createQuery("Select e from empregister as e").getResultList();
	    map.addAttribute("Emp", list);
	    em.getTransaction().commit();
	    req.setAttribute("msg", "Employee");
	   return "Hrdisplay";
   }
   

   @RequestMapping(value="/empperf",method=RequestMethod.GET)
   public String empPerformance(@ModelAttribute("empuser") empregister empuser,HttpServletRequest req,HttpServletResponse res) throws IOException, SQLException, ClassNotFoundException
   {
	   String email=empuser.getEmail();
	   OutputStream out = res.getOutputStream();
	   res.setContentType("image/png");
	   
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
	   Statement smt = connection.createStatement();
	   ResultSet rst = smt.executeQuery("select empid from empregister where email='"+email+"';");
	   rst.next();
	   String empid = rst.getString(1);
	   
	   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ankit","root","1234");
		  
	   Statement statement = conn.createStatement();
	   ResultSet resultset=statement.executeQuery("select * from emp_performance where empid ="+empid+" order by per_year;");
	   DefaultCategoryDataset dataset = new DefaultCategoryDataset();
	   final NumberAxis rangeAxis = new NumberAxis("Y-Axis");
	   rangeAxis.setRange(2000,3000);
	   rangeAxis.setTickUnit(new NumberTickUnit(50));
	   while(resultset.next())
	   {
	   String per_year=resultset.getString("PER_YEAR");
	   String sales = resultset.getString("SALES");
	   dataset.setValue(Double.parseDouble(sales),per_year,per_year);
	   }
	   JFreeChart chart = ChartFactory.createBarChart3D("Employee Performance : "+empid, "Performance Year", "Sales", dataset, PlotOrientation.VERTICAL, false, true, false);
	   int width=560;
	   int height=370;
	   ChartUtilities.writeChartAsPNG(out, chart, width, height); 
	   return "Empdisplay";
		
   }

   @ModelAttribute(value = "empperf")
   public emp_performance getempperf()
   {
       return  new emp_performance();
   }
   
   
   @RequestMapping(value="/perfEmp",method=RequestMethod.GET)
   String enterEmpPerf(HttpServletRequest req)
   {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	    EntityManager em=emf.createEntityManager();
	    em.getTransaction().begin();
	    List<String> list = em.createQuery("Select e.empid from empregister as e").getResultList();
	    req.setAttribute("empid", list);
	    em.getTransaction().commit();
	    return "enterPerf";
   }
   
   @RequestMapping(value="/perfEmp",method=RequestMethod.POST)
   String AddEmpPerf(@ModelAttribute("empperf") emp_performance empperf,HttpServletRequest req)
   {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   em.getTransaction().begin();
	   Query query = em.createNativeQuery("INSERT INTO emp_performance (EMPID,PER_YEAR,SALES) " +"VALUES (?,?,?)");
	   query.setParameter(1, empperf.getEmpid());
	   query.setParameter(2, empperf.getPer_year());
	   query.setParameter(3, empperf.getSales());
	   query.executeUpdate();
	   em.getTransaction().commit();
	   em.close();
	   emf.close();
	   return "SucPerf";
   }
   
   @RequestMapping(value="/existproj",method=RequestMethod.GET)
   String existProject(Model map,HttpServletRequest req)
   {   
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	    EntityManager em=emf.createEntityManager();
	    em.getTransaction().begin();
	    List<emp_project> list = em.createQuery("Select e from emp_project as e").getResultList();
	    map.addAttribute("empproj", list);
	    em.getTransaction().commit();
	    req.setAttribute("msg", "EmployeeProject");
	   	   return "Hrdisplay"; 
   }
   
   @RequestMapping(value="/addproj",method=RequestMethod.GET)
   String addProject(HttpServletRequest req)
   {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   em.getTransaction().begin();
	   List<String> list1 = em.createQuery("Select emp.empid from emp_project emp").getResultList();	
	   List<empregister> list = em.createQuery("Select e from empregister as e").getResultList();
	   String sm[]=null;
	   List<empregister> list3=new ArrayList<empregister>();
	   if(list1.isEmpty())
	   {
		   req.setAttribute("empname", list);
	   }
	   else
	   {
	   for(String s:list1)
	   {
		   sm =s.split(",");
	   }
	   int i=0;
	   for(empregister e:list)
	   {
		   if(Integer.parseInt(sm[i])==(e.getEmpid()))
		   {
			  continue;
		   }
		   else
		   {
			   list3.add(e);
				
					   }
	   }
	   
	    req.setAttribute("empname", list3);
	   }
	    em.getTransaction().commit();
	   return "addProject"; 
   }
   
   @ModelAttribute(value = "empproj")
   public emp_project getemproj()
   {
       return  new emp_project();
   }
   
   @RequestMapping(value="/addproj",method=RequestMethod.POST)
   String addProjectDB(@ModelAttribute("empproj") emp_project empproj,HttpServletRequest req)
   {
	   EntityManagerFactory emf=Persistence.createEntityManagerFactory("RailProject");
	   EntityManager em=emf.createEntityManager();
	   em.getTransaction().begin();
	   Query query = em.createNativeQuery("INSERT INTO emp_project (EMPID,PROJ_NAME,PROJ_BUDGET,NO_OF_EMP) " +"VALUES (?,?,?,?)");
	   query.setParameter(1, empproj.getEmpid());
	   query.setParameter(2, empproj.getProj_name());
	   query.setParameter(3, empproj.getProj_budget());
	   query.setParameter(4, empproj.getNo_of_emp());
	   query.executeUpdate();
	   em.getTransaction().commit();
	   em.close();
	   emf.close();
	 return "projsuccess";
}
   @RequestMapping(value="/empleave",method=RequestMethod.GET)
   String getEmpLeave()
   {
   return "empLeave";
   }
   
   @ModelAttribute(value = "empselect")
   public empSelect selectEmp()
   {
       return  new empSelect();
   }

   @RequestMapping(value="/empselect",method=RequestMethod.GET)
   String empSelect(@ModelAttribute("empselect") empSelect empselect,HttpServletRequest req)
   {
	   	    req.setAttribute("emp", empselect);
	    
	   return "projsuccess"; 
   }

   
     
}