package kr.ac.ers.controller;
import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.command.SearchCriteria;

import kr.ac.ers.dto.NoticeVO;
import kr.ac.ers.service.NoticeService;
@Controller
public class NoticeController {

	@Autowired
	public NoticeService noticeService;
	
	
	@RequestMapping("/notice/list")
	public String noticeList(SearchCriteria cri) throws SQLException {
		
	
		return "notice/noticeList";
	}
		
	@RequestMapping("/notice/detail")
	public String noticeDetail(int bno, String from) throws SQLException {
		
		return "notice/noticeDetail";
		
	}


	@RequestMapping("/notice/updatenotice")
	public String noticeUpdate(NoticeVO notice) throws SQLException{
		return "notice/noticeUpdate";
	}
	
	@RequestMapping("/notice/writenotice")
	public String noticeWrite(NoticeVO notice) throws SQLException{
		return "notice/noticeWrite";
	}

	
	

	
	
}
