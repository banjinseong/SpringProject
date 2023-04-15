package com.inhatc.ex1;

import java.time.LocalDate;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inhatc.model.BoardVO;
import com.inhatc.model.pageMaker;
import com.inhatc.model.paging;
import com.inhatc.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	//로그 확인용
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService bservice;
	
	//게시판 목록 페이지 접속
	@RequestMapping(value="home", method=RequestMethod.GET)
	public String boardListGET(Model model, paging pg) {
	    
		model.addAttribute("list", bservice.getListPaging(pg));
		
		int total = bservice.getTotal();
		
		pageMaker pageMake= new pageMaker(pg, total);
		
		model.addAttribute("pageMaker",pageMake);
	    return "board/home";
	    
	}
	//게시판 글쓰기 페이지 접속
	@RequestMapping(value="enroll", method=RequestMethod.GET)
	public String boardEnrollGET() {
	    
		return "board/write";
	    
	}
	
	/* 게시판 등록 */
    @RequestMapping(value="/enroll", method=RequestMethod.POST)
    public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
    	LocalDate now = LocalDate.now();
        BoardVO vo = board;
        vo.setCreated_date(now.toString());
        vo.setModified_date(now.toString());
        vo.setView(0);
        vo.setWriter("임시1");
        vo.setUser_id(5);
        
        rttr.addFlashAttribute("result", "enroll sucess");
        
        bservice.enroll(board);
        
        return "redirect:/board/home";
    }
    
    //게시판 조회
    @RequestMapping("view")
	public void boardView(int id, Model model) {
	    
    	model.addAttribute("pageInfo", bservice.getView(id));
    
	}
	
}
