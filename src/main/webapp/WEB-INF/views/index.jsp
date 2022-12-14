<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href = "../../resources/style2.css?ver=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@500;800&display=swap?" rel="stylesheet">
<script src="../../resources/script.js?ver=1"> </script>
<title>버거킹</title>
<link rel="icon" href="./favicon.png">
</head>
<body>
    <div>
        <div id="hiddenmenu">
            <div class="menu_category">
                <div class="cate"><a href="">테스트</a></div>        
                <div class="cate"><a href="">테스트</a></div>        
                <div class="cate"><a href="">테스트</a></div>        
                <div class="cate"><a href="">테스트</a></div>        
                <div class="cate"><a href="">테스트</a></div>        
                <div class="cate"><a href="">테스트</a></div>        
            </div>
        </div>
    </div>
    <div class="container">
                <div class="header-out">
        <div class="row header">
            <div class="col-3 logo">
                <a href="#/home"><img src="../../resources/img/bk_Logo.gif"></a>
                
            </div>
            <div class="col-6 menus">
                <ul>
                    <li>
                        <div><button type="button">
                        <a href="/addHome" style="text-decoration:none"><span style="color:black">메뉴소개</span></a>
                    </button></div></li>
                    <li>
                        <button type="button">
                            <span>매장소개</span>
                        </button>
                    </li>
                    <li>
                        <button type="button">
                            <span>이벤트</span>
                        </button>
                    </li>
                    <li>
                        <button type="button">
                            <span>브랜드스토리</span>
                        </button></li>
                    </ul>
            </div>
            <div class="col-3 order"><a href="menuForm"><strong>메뉴 추가</strong></a></div>
        </div>
        
        </div>
        <div class="main-content">
            <div class="slide-container">  
                <div class="slide"><img src="https://d1cua0vf0mkpiy.cloudfront.net/images/web/banner/e603744a-e932-484d-938b-25bee3ffb4e6.png"></div>
                <div class="slide"><img src="https://d1cua0vf0mkpiy.cloudfront.net/images/web/banner/d1dcff28-fd2e-4b9c-a178-4201a90b4c52.png"></div>
                <div class="slide"><img src="https://d1cua0vf0mkpiy.cloudfront.net/images/web/banner/136bbb7d-694e-4f8b-8452-8e2347cf4138.png"></div>
                <a class="prev" onclick="plusSlides(-1)"></a>
                <a class="next" onclick="plusSlides(1)"></a>
                <div class="pager">
                    <span class="dot on" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
                
            </div>
            <div class="video">
                <div class="movie">
                    <iframe width="100%" height="605" src="https://www.youtube.com/embed/tB-AQbpcuOE?rel=0&amp;showinfo=0&amp;autoplay=0" 
                    ></iframe>
                </div>
            </div>
            <div class="snsbox">
                <div class="web_container">
                <ul>
                    <li class="youtube">
                        <div class="cont">
                            <strong class="tit">YOUTUBE</strong>
                            <strong class="subscribe">구독 4.9만</strong>
                            <a href="https://www.youtube.com/channel/UCEKRI0fipK4LEgV98nI2CQA/featured" target="_blank" class="link"></a> 
                        </div>
                    </li>
                    
                    <li class="facebook">
                        <div class="cont">
                            <strong class="tit">FACEBOOK</strong>
                            <strong class="subscribe">좋아요 47.8만</strong>
                            <a href="https://www.facebook.com/burgerkingkorea" target="_blank" class="link"></a>
                        </div>
                    </li>
                    <li class="instagram">
                        <div class="cont">
                            <strong class="tit">INSTAGRAM</strong>
                            <strong class="subscribe">팔로워 74.9K</strong>
                            <a href="https://www.instagram.com/burgerkingkorea" target="_blank" class="link"></a>
                        </div>
                    </li>
                </ul>
            </div>
            </div>
            <div class="homeguide">
                <div class="app"><a href="#" class="app_link"></a></div>
                <div class="delivery"><a href="#" class="delivery_link"></a></div>
            </div>
            <div class="searchshop">
                <div class="searchshop_container">
                    <h2 class="findshoptext">매장찾기</h2>
                    <p>고객님 주변에 있는 버거킹을 찾아보세요!</p>
                    <div class="shop_button"><a href="#">매장찾기</a></div>
                    <ul class="category">
                       <li class="c_delivery"><span>집에서 편안하게 <br>받을 수 있는 <div class="inner_text">딜리버리</div></span></li> 
                       <li class="c_king"><span>미리 주문하고 <br>픽업가능한 <div class="inner_text">킹오더</div></span></li> 
                       <li class="c_drive"><span>차안에서 빠르게 <br>이용할 수 있는 <div class="inner_text">드라이브 스루</div></span></li> 
                       <li class="c_twofour"><span>24시간 언제든 <br>함께할 수 있는 <div class="inner_text">24시간</div></span></li> 
                       <li class="c_breakfast"><span>든든한 <br>아침을 도와줄<div class="inner_text">아침메뉴</div></span></li> 
                       <li class="c_parking"><span>내 차와 함께 <br>올 수 있는 <div class="inner_text">주차공간</div></span></li> 
                    </ul>
                </div>
            </div>
            <div class="phonenum">
                <div class="phonenum_content">
                    <div class="phonenum_inside">
                    <h2>집에서 만나는 버거킹</h2>
                    <p class="text">딜리버리 전화주문 안내 10:00-22:00 / 연중무휴(매장별로 상이할 수 있습니다.)</p>
                    <p class="phone_number"><strong>1599-0505</strong></p>
                    </div>
                </div> 
            </div>
        </div>
        <div class="footer-content">
            <div class="site-map">
                <div class="map-container">
                    <ul>
                        <li><a><span>메뉴</span></a></li>
                        <li><a><span>매장</span></a></li>
                        <li><a><span>이벤트</span></a></li>
                        <li><a><span>브랜드 스토리</span></a></li>
                        <li><a><span>고객센터</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="footer"></div>
        </div>
    </div>
</body>
</html>




