package com.inhatc.ex1;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inhatc.model.pageMaker;
import com.inhatc.model.paging;
import com.inhatc.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Autowired
	BoardService bservice;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, paging pg) {
		
		model.addAttribute("list", bservice.getListPaging(pg));
		
		int total = bservice.getTotal(pg);
		
		pageMaker pageMake= new pageMaker(pg, total);
		
		model.addAttribute("pageMaker",pageMake);
	    return "board/home";
	}
	
	
}
