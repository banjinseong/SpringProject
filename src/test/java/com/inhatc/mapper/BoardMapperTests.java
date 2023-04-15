package com.inhatc.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.inhatc.model.BoardVO;
import com.inhatc.model.paging;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTests {
 
     private static final Logger log = LoggerFactory.getLogger(BoardMapperTests.class);
     
     @Autowired
     private BoardMapper mapper;
 
//     @Test
//     public void testEnroll() {
//         
//         BoardVO vo = new BoardVO();
//         vo.setId(13);
//         vo.setTitle("mapper test");
//         vo.setContent("mapper test");
//         vo.setWriter("mapper test");
//         vo.setView(0);
//         vo.setCreated_date("2023-04-01");
//         vo.setModified_date("2023-04-01");
//         vo.setUser_id(5);
//         
//         mapper.enroll(vo);
//         
//     }
     	
     @Test
     public void testGetListPaging() {
         
         paging cri = new paging();
                      
         cri.setPageNum(2);
         List list = mapper.getListPaging(cri);
         
         list.forEach(board -> log.info("" + board));
     }
 
}