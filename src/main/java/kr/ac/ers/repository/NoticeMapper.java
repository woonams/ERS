package kr.ac.ers.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.ac.ers.dto.NoticeVO;

@Mapper
public interface NoticeMapper {

	public NoticeVO selectNotice(@Param("nno") int nno);
	
	
	public List<NoticeVO> selectNotices(@Param("nno") int nno);
	
	
	public void insertNotice(String title, String content); 
	
	
	public void updateNotice(String title, String content);
	
	
	public void deleteNotice(@Param("nno") int nno);
	
	
	
	
}
