package com.inhatc.ex1;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.inhatc.model.MemberVO;
import com.inhatc.service.MemberService;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	//�α� Ȯ�ο�
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService service;
	
	//ȸ������ ������ ����
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String AuthJoinGet() {
		    
		return "member/join";
	    
	}
	
	//�α��� ������ ����
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String AuthLoginGet() {
			    
		return "member/login";
		    
	}
	
	//�α��� �۵�
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String AuthLoginPost(MemberVO member, HttpServletRequest request, RedirectAttributes rttr) {
		MemberVO mem = service.login(member.getUsername());
		HttpSession session = request.getSession();
		System.out.println(mem);
		System.out.println("���"+member);

		if(mem==null) {
			rttr.addFlashAttribute("sign", "no id");
			System.out.println(request.getSession());
			session.setAttribute("signIn", null);
			return "redirect:/member/login";
		}else if(!member.getPassword().equals(mem.getPassword())) {
			session.setAttribute("signIn", null);
			rttr.addFlashAttribute("sign", "no pw");
			return "redirect:/member/login";
		}else {
			session.setAttribute("signIn", mem);
			System.out.println(request.getSession());
			return "redirect:/board/home";
		}
		
		    
	}
	
	
	//ȸ������ �Ұ��
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String AuthJoinPost(MemberVO member, RedirectAttributes rttr) {
		    
		rttr.addFlashAttribute("result", "join sucess");
		service.join(member);
		return "redirect:/board/home";
	    
	}
	
	@RequestMapping(value="checkId", method=RequestMethod.POST)
	@ResponseBody
	public String checkId(@RequestBody String username) {	// ���� ������Ÿ���� �ؽ�Ʈ�� ��Ʈ�������� �ݵ�� ������Ʈ�ٵ� ������! ajax ��Ž�
		System.out.println("/user/checkId : post");
		System.out.println("param : " + username );
		int checkNum = service.chekId(username);
		
		if(checkNum == 1) {
			System.out.println("���̵� �ߺ��Ǿ���.");
			return "duplicated";
		}else {
			System.out.println("���̵� ��� ����");
			return "available";
		}
	}
	
	@RequestMapping(value="checkName", method=RequestMethod.POST)
	@ResponseBody
	public String checkName(@RequestBody String nickname) {	// ���� ������Ÿ���� �ؽ�Ʈ�� ��Ʈ�������� �ݵ�� ������Ʈ�ٵ� ������! ajax ��Ž�
		System.out.println("/user/checkName : post");
		System.out.println("param : " + nickname );
		int checkNum = service.chekId(nickname);
		
		if(checkNum == 1) {
			System.out.println("�̸��� �ߺ��Ǿ���.");
			return "duplicated";
		}else {
			System.out.println("�̸� ��� ����");
			return "available";
		}
	}
}
