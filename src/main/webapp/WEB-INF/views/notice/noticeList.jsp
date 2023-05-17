<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<sitemesh:write property='head'/>
<title>${pageTitle}</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
  <!-- 제이쿼리 불러오기 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
<sitemesh:write property='body'/>
<section class="notice">
  <div class="page-title">
    <div class="container">
      <h3>공지사항 리스트</h3>
    </div>
  </div>

  <!-- board seach area -->
  <div id="board-search">
    <div class="container">
      <div class="search-window">
        <form action="">
          <div class="search-wrap">
            <label for="search" class="blind">공지사항 내용 검색</label>
           <div class="search_form">
            
    <input class="search-bar_input" type="search" placeholder="Search" /><select name="language" class="selectbox">
    <option value="nno" class="lang-option">번호</option>
    <option value="title" class="lang-option">제목</option>
    <option value="content" class="lang-option">내용</option>
  </select>
             <svg class="glassesicon"xmlns="http://www.w3.org/2000/svg" width="25" height="16" fill="currentColor" color="blue" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
             
</div>
            <i class="bi bi-search"></i>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- board list area -->
  <div id="board-list">
    <div class="container">
      <table class="board-table">
      
      </group>
        <thead>
          <tr>
            <th scope="col" class="th-num">번호</th>
            <th scope="col" class="th-title">제목</th>
            <th scope="col" class="th-date">등록일자</th>
            <th scope="col" class="th-date">첨부파일</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="notice" items="${noticeList}">
            <tr class="hover">
              <th>${notice.nno}</th>
              <td>${notice.title}</td>
              <td>${notice.regDate}</td>
              <td></td>
              <td>${notice.goodReactionPoint}</td>
              <td>${notice.extra__writerName}</td>
              <td>
                <a class="btn-text-link block w-full truncate" href="${rq.getArticleDetailUriFromArticleList(article)}">${article.title}</a>
              </td>
            </tr>
          </c:forEach>
          <tr>
			

			
            <td scope="row" class="click-button">1</td>
            <th scope="row" class="click-button">
              <a href="#!">응급전문요원 첨부파일</a>
              &nbsp

              <p>테스트</p>
            </th>
            <td class="click-button">2023.05.05</td>
            <td class="click-button">
              <img for="ex_filename" src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png">

            </td>
			
          </tr>
		
          <tr>
            <td class="click-button2">2</td>
            <th class="click-button2"><a href="#!">활동량감지기 고장처리 첨부자료</a></th>
            <td class="click-button2">2023.05.05</td>
            <td class="click-button2"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button3">3</td>
            <th class="click-button3"><a href="#!">대상자 명단 수정사항 첨부</a></th>
            <td class="click-button3">2023.05.05</td>
            <td class="click-button3"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button4">4</td>
            <th class="click-button4"><a href="#!">2023 계획서 모음</a></th>
            <td class="click-button4">2023.05.05</td>
            <td class="click-button4"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button5">5</td>
            <th class="click-button5"><a href="#!">댁내장비 AS 수리요청건</a></th>
            <td class="click-button5">2023.05.05</td>
            <td class="click-button5"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button6">6</td>
            <th class="click-button6"><a href="#!">재승인 복구 요청</a></th>
            <td class="click-button6">2023.05.05</td>
            <td class="click-button6"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button7">7</td>
            <th class="click-button7"><a href="#!">배터리 교체 여부</a></th>
            <td class="click-button7">2023.05.05</td>
            <td class="click-button7"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button8">8</td>
            <th class="click-button8"><a href="#!">대상자 교육 방침 실시 교육안내</a></th>
            <td class="click-button8">2023.05.05</td>
            <td class="click-button8"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

          <tr>
            <td class="click-button9">9</td>
            <th class="click-button9"><a href="#!">시스템적 장애로 인한 조치사항</a></th>
            <td class="click-button9">2023.05.05</td>
            <td class="click-button9"><img src="C:\Users\서우남\Desktop\화면 캡처 2023-05-11 002506.png"></td>
          </tr>

        </tbody>
      </table>
    </div>
  </div>
  <br />

  <ul class="pagenationposition">
    <li class="direction"><a href="#">이전</a></li>
    <li class="listss"></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">6</a></li>
    <li><a href="#">7</a></li>
    <li><a href="#">8</a></li>
    <li><a href="#">9</a></li>
    <li class="listss"></li>
    <li class="direction"><a href="#">다음</a></li>

    <button class="write" type="button" onclick="location.href='link'">글쓰기</button>
    
    
  </ul>
  
  
  

</section>
</body>
</html>

<style>
table {
  border-collapse: collapse;
  border-spacing: 0;

}
section.notice {
  padding: 80px 0;
}

.th-num{
  background-color:#dfdfdf;
  border: solid gray 0.5px; 
}

.th-title{
  background-color:#dfdfdf;
  border: solid gray 0.5px; 
}
.th-date{
  background-color:#dfdfdf;
  border: solid gray 0.5px;
}



.

.page-title {
  margin-bottom: 60px;
}

.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: left;
  text-decoration:underline;
}

#board .search-window {
  padding: 55px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 70%;
  max-width: 444px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 55%;
  font-size: 17px;
  padding: 14px 14px;
  border: 1.5px solid #ccd;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #777;
  outline: 0;
  border-width: 2px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 50;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px
  
}

.board-table {
  font-size: 14px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}

.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1200px;
  margin:0 auto;

}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}
img{
  width:30px;
}
 
.click-button{

 
 border: solid gray 1px;
 
}

.click-button:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}
.click-button2{
 border: solid gray 1px;
 
}
.click-button2:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}
.click-button3{
 border: solid gray 1px;
 
}
.click-button3:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}

.click-button4{
 border: solid gray 1px;
 
}
.click-button4:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}
.click-button5{
 border: solid gray 1px;
 
}
.click-button5:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}
.click-button6{
 border: solid gray 1px;
 
}
.click-button6:hover{
 

 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}

.click-button7{
 border: solid gray 1px;
 
}
.click-button7:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}

.click-button8{
 border: solid gray 1px;
 
}
.click-button8:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}

.click-button9{
 border: solid gray 1px;
 
}
.click-button9:hover{
 
 
 border: solid gray 1px;
 background-color: rgb(30, 145,220,0.53);
 
}

ul li {
	float:left;
}
ul li a {
	float:right;
	padding:3px;
	margin-right:8px;
	width:55px;
  height:30px;
	color:#000;
	font:bold 12px tahoma;
	border:1px solid #eee;
	text-align:center;
	text-decoration:none;
  
}
ul {
  
	list-style:none;
	display:inline;
  
}
ul li a:hover, ul li a:focus {
	color:#fff;
	background-color: rgb(30, 145,220,0.9);
  
}
.pagenationposition{
 text-align:center;
 margin:15px;
 margin-left:450px;
 display:block;
  display:position;
  position: fixed;
  top: 830;
  /* width: 100% */
  left: 20;
  right: 60;
 
 
}

.prev{
  margin:auto 0;
  display:flex;
  text-align:center;
  
  
}


.next{
  margin:30px -400px ;
  display:flex;
  text-align:center;
  
}


.write{
  width:100px;
  height:40px;
  border-radius:10px;
  font-weight:bolder;
  color:gray;
  border: solid 1px white;
  margin:100x;
  cursor:pointer;
  
}


.direction{
  background-color: rgb(40,40,40,0.1);
  border:solid white 0.1px;
  text-align:center;
  
  
  
 
}

.search-bar_input {
    width: 50px;
    border: 3px solid #dbdbdb;

    text-align: left;
    margin-left: 509px;
    margin-top: 70px;
    overflow: auto;
    z-index: -1;
    font-size: 12px;
    font-family: 'BookkMyungjo-Bd';
    font-weight: 700;
    font-style: default;
}
.search-bar_input:focus {
    
    width: 235px;
    text-align: left;
    background-image: none;
}

.search_form input {
    width: 195px;
    height: 20px;
    font-size: 0.5rem;
    font-weight: 400;
    
    color: black;
    padding: 6px 14px 4px 26px;
    border: solid black 1px;
    border-radius: 8px;
    background-color:rgb(255,255,255,0.4)
    
    /* search icon */
   
}
.selectbox{
  width:100px;
  height:40px;
  border-radius:10px 10px 10px 10px;
  background-color:rgb(255,255,255,0.3);
  border: solid gray 0.5px;
  float:right;
  margin:-40px -60px;
  

  
  
  
}


.glassesicon{
  margin-right:-100%;
  width:100px;
  margin-bottom:-80px;
  height:25px;
  cursor:pointer;
  margin-top:-75px;
  
  
  
}

.listss{
width:10px;
height:10px;
background-color:white;
}


@font-face {
    font-family: 'YiSunShinDotumM';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/YiSunShinDotumM.woff') format('woff');
    font-weight: normal;
    font-style: normal;
  }

  html>body,
  html>body .toastui-editor-contents,
  html>body .ProseMirror,
  html>body .toastui-editor-md-code,
  html>body .toastui-editor-md-code-block {
    font-family: 'YiSunShinDotumM';
    text-underline-position: under;
  }

  .menu>li>a:hover {
    font-weight: bold;
  }

  .menu>li>a {
    font-size: 1.2rem;
  }

  .table th {
    background-color: #D7D7D7;
    width: 100px;
    text-align: center;
    padding: 5px;
  }

  .table td {
    text-align: center;
  }
  
  .modal-table>thead>tr>.th-1{
  	width:30px;
  }
  .modal-table>thead>tr>.th-2{
  	width:30px;
  }
</style>
<script>
var link = 'notice/detail';

	
</script>

</html>


