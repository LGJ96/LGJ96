<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "comm.vo.CommVO"%>
<%@ page import = "comm.vo.CommPageVO"%>
<%@ page import = "comm.vo.CommSearchPageVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Favicons -->
    <link rel="shortcut icon" href="#">
    <!-- Page Title -->
   <title>DaeguTaruant</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="css/set1.css">
    <!-- Swipper Slider -->
    <link rel="stylesheet" href="css/swiper.min.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<%-- <%
List<CommVO> comArticleList = (List<CommVO>)request.getAttribute("comArticleList");
CommPageVO commPageVO = (CommPageVO)request.getAttribute("commPageVO");
int com_count = commPageVO.getCom_count();
int com_currentPage = commPageVO.getCom_currentPage();
int com_startPage = commPageVO.getCom_startPage();
int com_number = commPageVO.getCom_number();
int com_endPage = commPageVO.getCom_endPage();
int com_pageCount = commPageVO.getCom_pageCount();
%> --%>
<body>
    <!--============================= HEADER =============================-->
     <%@include file ="/common/header-content.jsp" %>
    <!--//END HEADER -->
    
    <!--============================= 커뮤니티 헤더 =============================-->
    <div>
        <!-- Swiper -->
        <div class="row d-flex justify-content-center">
            <div class="col-md-12">
                <div class="slider-title_box">
                    <div class="row">
                        <div class="col-md-12">
                         <div class="dark-cbg">
                         <h2>커뮤니티</h2>
                       
                    </div>
                </div>
            </div>
        
    
    <!--//END 커뮤니티 헤더 -->

    <!--============================= 검색창, 검색버튼 =============================-->

    <div class="row d-flex justify-content-center">
        <div class="col-md-8" align="right">
           <form class="form-wrap mt-4" method = "POST" action="#" name = "comsearchform" >
                <div class="btn-group" role="group" aria-label="Basic example">
                
                    <input type="text" placeholder="검색창" class="btn-group" name ="searchword" id="searchword"/>
                    <button type="button" class="btn-form2" onclick="comsearch()"> 검   색</button>
                     <button type="button" class="btn-form" onclick="location.href='comm_writeForm.dae';"> 글쓰기</button>
                  	
               </div>
           </form>
        </div>
  </div>
    
 

  


 <!--============================= 글 목록 =============================-->

    <div class="card-body">
        <h16 class="card-title" style="text-align:center">글 목록</h16>
        <div class="table-responsive " id ="comm-content" >
            <table id="zero_config" class="table">
                <thead class ="bg-warning text-white">
                    <tr>
                        <th>번호</th>
                        <th>말머리</th>
                        <th>글 제목</th>
                        <th>작성자</th>
                        <th>작성 시간</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <c:if test="${empty comListt && empty comsearchword}">
							<table width="1440" border="1" cellpadding="0" cellspacing="0">
								    <td align="center">
								    게시판에 저장된 글이 없습니다.
								    </td>
							</table>
						</c:if>
                <tbody>
                    	
                <c:if test="${not empty comListt}">
						<c:if test="${searchword == null }">
						<c:forEach var="com" items="${comListt}" varStatus="status">
							<c:set var = "number" value = "${com.com_number }"></c:set>
                    <tr height="30">
                 		  
                        <td align="center"  width="50">${number }</td>
							<c:set var = "number" value = "${number -1}"></c:set>
                        <td align="center"  width="100">${com.com_subject }</td>
                        <td align="center"  width="250"><a href="comment.dae?com_number=${com.com_number}&com_pageNum=${commSearchPageVO.sea_currentPage}" style="color: black">
                        ${com.com_title }</a></td>
                        <td align="center"  width="100">${com.user_nickname }</td>
                        <td align="center"  width="150">${com.com_date }</td>
                        <td align="center"  width="50">${com.com_readcount }</td>
                    </tr>
                </c:forEach>
                </c:if>
                
                
                </c:if>
						<c:if test="${searchword != null }">
						<c:forEach begin="0" var="com" items="${comsearchword}" varStatus="status">
							<c:set var = "number" value = "${com.com_number }"></c:set>
                    <tr height="30">
                 		  
                        <td align="center"  width="50">${number }</td>
							<c:set var = "number" value = "${number -1}"></c:set>
                        <td align="center"  width="100">${com.com_subject }</td>
                        <td align="center"  width="250"><a href="comment.dae?com_number=${com.com_number}&com_pageNum=${commSearchPageVO.sea_currentPage}" style="color: black">
                        ${com.com_title }</a></td>
                        <td align="center"  width="100">${com.user_nickname }</td>
                        <td align="center"  width="150"><%-- ${com.com_date } --%>
                          <fmt:formatDate value="${com.com_date }" pattern="yyyy-MM-dd HH:mm"/>
                          </td>
                        <td align="center"  width="50">${com.com_readcount }</td>
                    </tr>
                </c:forEach>
                </c:if>
                
                
						
                
                
                
             		   <%-- <%
						    if (com_count > 0) {
						        
						        if (com_startPage > 10) { %>
						        <a href="commList.dae?com_pageNum=<%= com_startPage - 10 %>">[이전]</a>
						<%      }
						        for (int i = com_startPage ; i <= com_endPage ; i++) {  %>
						        <a href="commList.dae?com_pageNum=<%= i %>">[<%= i %>]</a>
						<%
						        }
						        if (com_endPage < com_pageCount) { %>
						        <a href="commList.dae?com_pageNum=<%= com_startPage + 10 %>">[다음]</a>
						<%
						        }
						    }
						%>  --%>
						<c:if test="com_count > 0">
						
						    <c:if test="${com_startPage }">
						        <a href="commList.dae?com_pageNum=${com_startPage - 10 }">[이전]</a>
							</c:if>
								<c:forEach begin = "${com_startPage }" end="${com_endPage}" var = "i">
						       		 <a href="commList.dae?com_pageNum=${i }">[${i }]</a>
						   		</c:forEach>
						    <c:if test="${com_endPage < com_pageCount }">
						        <a href="commList.dae?com_pageNum=${com_startPage + 10}">[다음]</a>
						    </c:if>
					</c:if>
</tbody>
</table>
</div>
</div>
</div>

   <!--============================= FOOTER =============================-->
	<%@include file ="/common/footer.jsp" %>
	<!-- Footer End-->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Magnific popup JS -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
    
    function comsearch(){
    	var searchinputv = document.getElementById("searchword").value;
    	
    	 if(searchinputv == ""){
    		document.comsearchform.target = "_self";
         	document.comsearchform.action="comm_Searchlist.dae";
         	document.comsearchform.submit();
    		
    	}
    	else{
    		document.comsearchform.target = "_self";
        	document.comsearchform.action="comm_Search.dae";
        	document.comsearchform.submit();
    	} 
    }
    
    </script> 
</body>
</html>