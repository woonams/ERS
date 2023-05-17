package kr.ac.ers.service;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import com.command.SearchCriteria;

import kr.ac.ers.dto.NoticeVO;

@Service
public interface NoticeService {
	

	public NoticeVO getNotice(int nno);

	
	public Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException;

	
	public void writeNotice(NoticeVO notice) throws SQLException;
	
	
	public void removeNotice(int nno) throws SQLException; 
	
	
	public void modifyNotice(NoticeVO notice) throws SQLException;
	
	
	public NoticeVO getNoticeForModify(int nno) throws SQLException;
	
	
	
		
	
	

	
	
	
}
	
	