<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../../resources/style.css?ver=1">
<script src="../../resources/script.js"></script>
</head>
<body>
	<div class="container">
		<div class="h_oc">
			<div class="h_ic">
				<a href="/index" class="logo"><img
					src="../../resources/img/bk_Logo.gif"></a>
				<div class="btn_wrap">
					<ul>
						<li><button>
								<a href="/addHome" style="text-decoration:none"><span style="color:black">메뉴소개</span></a>
							</button></li>
						<li><button>
								<span>매장소개</span>
							</button></li>
						<li><button>
								<span>이벤트</span>
							</button></li>
						<li><button>
								<span>브랜드스토리</span>
							</button></li>
					</ul>
				</div>
				<div>
					<a href="menuForm" class="delivery_btn"><span>메뉴 추가</span></a>
				</div>
			</div>
		</div>

		<div class="black_line">
			<div class="line_text">
				<a href="/index">HOME</a> <span> > 메뉴 추가</span>
				<a href="/login/logout"class="logout">로그아웃</a>
			</div>
		</div>
		<div class="row main" >
			<div class="col content">
								
			<h1>새로운 메뉴</h1>  
		    	<form method="post" action="save" enctype="multipart/form-data">    
		       	<label>카테고리</label><br>
		       	<select name="type" required>
		       		<option value="special">스페셜&할인팩</option>
		       		<option value="preminum">프리미엄</option>
		       		<option value="whopper">와퍼</option>
		       		<option value="junior">주니어&버거</option>
		       		<option value="alldayking">올데이킹&치킨버거</option>
		       		<option value="side-dish">사이드</option>
		       		<option value="dessert">음료&디저트</option>
		       		<option value="docpper">독퍼</option>
		       	</select>    <br>
<!-- 		       	<input name="type" required/><br> -->
				<br>
		  		<label>메뉴 사진</label><br>    
		  		<input name="photo" type="file" required/><br>
		  		<br>     	
		  		<label>메뉴 이름</label><br>
		        <input name="name" required/> <br>
		        <br>    
		        <label>메뉴 설명</label><br>      
		  	  	<input name="des" required/>  <br>
		  	  	<br>
		        <input type="submit" value="저장" style="border: none; width:100px; height:30px; background-color:red; color:white; border-radius:100px"/>        
	       	</form>        
	            
         
         	</div>
		</div>
		<div class="footer"></div>
	</div>
</body>
</html>
