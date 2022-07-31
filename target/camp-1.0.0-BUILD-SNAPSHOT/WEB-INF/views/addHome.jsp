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
				<a href="/index">HOME</a> <span> > 메뉴소개</span> 
				<a href="/login/logout"class="logout">로그아웃</a>
			</div>
		</div>
		<div class="row main">
			<div class="col content">
				<div class="menu_bar">
					<div class="menu_text">
						메뉴 소개
						<div class="menu">
							<ul>
								<li><button type="button">
										<span class="type on" onclick="chooseType(1)">스페셜&할인팩</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(2)">프리미엄</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(3)">와퍼</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(4)">주니어&버거</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(5)">올데이킹&치킨버거</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(6)">사이드</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(7)">음료&디저트</span>
									</button></li>
								<li><button type="button">
										<span class="type" onclick="chooseType(8)">독퍼</span>
									</button></li>
							</ul>
						</div>
					</div>

				</div>
				<div class="list">
					<ul class="content_list">
						<c:forEach var="menu" items="${list}">
						<li>
							<div class="img"><span><img src="../../resources/img/${menu.chgFileName}"></span></div>
	
<%-- 							<div class="img"><span><img src="${menu.filePath}"/></span></div> --%>
							<div class="cont">${menu.name}</div>
							<div class="button">
							<a class="modi" href="editMenu/${menu.id}">수정</a>
							<a class="delete" href="deleteMenu/${menu.id}">삭제</a>
							<%-- <a class="delete" href="#" onclick="removeCheck(${menu.id})">삭제</a> --%> 
							</div>
							<a href="#"></a>
							
						</li>
						</c:forEach>
					</ul>
				</div>
					
				
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<!-- <script>
	function removeCheck(menu_id) {
		
		console.log(menu_id);
		
		 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		     
			location.href=`../deleteMenu/${menu_id}`;

		 }else{   //취소

		     return false;

		 }

		}
		
	</script> -->
</body>
</html>