package kr.ac.ers.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@Data
@NoArgsConstructor
@AllArgsConstructor
public class NoticeVO {
	
	private int nno;
	private String title;
	private String content;
	private Date regDate;
	private Date updateDate;
	private String manId;
	
}
