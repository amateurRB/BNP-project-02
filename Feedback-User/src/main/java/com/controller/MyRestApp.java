package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.entity.Feedback;
import com.service.AppService;
@RestController
public class MyRestApp {
 
    @Autowired
    private AppService service;  
    
    
    @PostMapping("/feedback")
    public String userRegister(@RequestParam ("cname")String cname,@RequestParam ("cEmail") String cEmail,@RequestParam("cAdd") String cAdd,@RequestParam("country") String country,@RequestParam("carttype") String carttype,@RequestParam("calender") String calender,@RequestParam("quality") String quality,@RequestParam("size") String size,@RequestParam("delivery") String delivery,@RequestParam("subject") String subject){
        
   
    	
    	Feedback f = new Feedback(cname,cEmail,cAdd,country,carttype,calender,quality,size, delivery,subject);
            boolean data = service.addUser(f);
            
            if(data){
            return "Your response has been recorded";
            }
            else{
            return "User not Added Successfully";
            }
    }
    
}