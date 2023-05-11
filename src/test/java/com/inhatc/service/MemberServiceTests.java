package com.inhatc.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.inhatc.ex1.BoardController;
import com.inhatc.model.BoardVO;
import com.inhatc.model.MemberVO;
import com.inhatc.model.paging;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberServiceTests {
    

    @Autowired
    private MemberService service;
    

    @Test
    public void test() {
        MemberVO  vo = new MemberVO();
        vo.setId(15);
        vo.setPassword("111111111");
        vo.setUsername("±èº´Áö");
        vo.setEmail("@!#!$#");
        service.join(vo);
        
    }
}