package com.inhatc.ex1;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inhatc.model.BoardVO;
import com.inhatc.model.CommentVO;
import com.inhatc.model.MemberVO;
import com.inhatc.model.pageMaker;
import com.inhatc.model.paging;
import com.inhatc.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	//�α� Ȯ�ο�
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService bservice;
	
	//�Խ��� ��� ������ ����
	@RequestMapping(value="home", method=RequestMethod.GET)
	public String boardListGET(Model model, paging pg) {
	    
		model.addAttribute("list", bservice.getListPaging(pg));
		
		int total = bservice.getTotal(pg);
		
		pageMaker pageMake= new pageMaker(pg, total);
		
		model.addAttribute("pageMaker",pageMake);
	    return "board/home";
	    
	}
	//�Խ��� �۾��� ������ ����
	@RequestMapping(value="enroll", method=RequestMethod.GET)
	public String boardEnrollGET(HttpServletRequest request, RedirectAttributes rttr) {
		HttpSession session = request.getSession();
		MemberVO mem = (MemberVO) session.getAttribute("login");
		if(mem == null) {
			rttr.addFlashAttribute("result", "enroll fail");
			return "redirect:/board/home";
		}
		return "board/write";
	    
	}
	
	/* �Խ��� ��� */
    @RequestMapping(value="/enroll", method=RequestMethod.POST)
    public String boardEnrollPOST(BoardVO board, HttpServletRequest request, RedirectAttributes rttr) {
    	LocalDate now = LocalDate.now();
    	HttpSession session = request.getSession();
		MemberVO mem = (MemberVO) session.getAttribute("login");
        BoardVO vo = board;
        vo.setCreated_date(now.toString());
        vo.setModified_date(now.toString());
        vo.setView(0);
        vo.setWriter(mem.getNickname());
        vo.setUser_id(mem.getId());
        
        rttr.addFlashAttribute("result", "enroll sucess");
        
        bservice.enroll(board);
        
        return "redirect:/board/home";
    }
    
    //�Խ��� ��ȸ
    @RequestMapping("view")
	public void boardView(int id, Model model, paging pg) {
    	pg.setAmount(5);
    	model.addAttribute("comment", bservice.getCommentPaging(pg,id));
	    bservice.upView(id);
    	model.addAttribute("pageInfo", bservice.getView(id));
    	int total = bservice.getCommentTotal(id);
		
		pageMaker pageMake= new pageMaker(pg, total);
		model.addAttribute("pageMaker",pageMake);
    
	}
    
    //�Խ��� ����������
    @RequestMapping(value="update", method=RequestMethod.GET)
	public void boardUpdateGET(int id, Model model) {
    	model.addAttribute("pageInfo", bservice.getView(id));	    
	}
    
    //�Խñ� ����
    @RequestMapping(value="update", method=RequestMethod.POST)
	public String boardUpdatePOST(BoardVO board) {
    	LocalDate now = LocalDate.now();
    	BoardVO vo = board;
    	if(!vo.getCreated_date().contains("����")) {
    		vo.setCreated_date(vo.getCreated_date()+"(����)");
    	}
        vo.setModified_date(now.toString());
    	bservice.update(vo);
    	return "redirect:/board/home";
	}
    
    //�Խñ� ����
    @RequestMapping("delete")
   	public String boardDelete(int id) {
   	    bservice.delete(id);
       	
       return "redirect:/board/home";
   	}
    
	//��� �ۼ�
    @RequestMapping(value="/comment", method=RequestMethod.POST)
    public String boardCommentPOST(CommentVO comment, HttpServletRequest request, RedirectAttributes rttr) {
    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yy-MM-dd HH:mm");
    	LocalDateTime now = LocalDateTime.now();
        // ���� ����
        String formatedNow = now.format(formatter);
    	
    	HttpSession session = request.getSession();
		MemberVO mem = (MemberVO) session.getAttribute("login");
        CommentVO vo = comment;
        vo.setCreated_date(formatedNow);
        vo.setWriter(mem.getNickname());

        bservice.enrollcomment(vo);
        String re ="redirect:/board/view?id="+vo.getBno();
        return re;
    }
    
  //��� ����
    @RequestMapping("commentdelete")
   	public String commentDelete(int id,int bno) {
   	    bservice.commentdelete(id);
   	    String re ="redirect:/board/view?id="+bno;
       return re;
   	}
}
