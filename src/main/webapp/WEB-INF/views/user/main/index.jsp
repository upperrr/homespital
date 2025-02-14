<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homespital</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/resources/css/main.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
    <noscript>
        <link rel="stylesheet" href="/resources/css/main2.css"/>
    </noscript>

    <style>
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(800px, 1fr));
            grid-auto-rows: minmax(150px, 0.5fr);
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .grid-row,
        .grid-item {
            font-size: 40px;
            display: block;
            overflow: hidden;

        }

        .grid-item img {
            object-fit: cover;
            object-position: center;

        }

        .grid-item {
            transform: translateY(-10%);
            opacity: 0;
            color: black;
            transition: 1000ms transform cubic-bezier(0.55, 0.055, 0.675, 0.19), 1000ms opacity cubic-bezier(0.55, 0.055, 0.675, 0.19) 600ms;
        }

        .grid-item.inview {
            transform: translateY(0);
            opacity: 1;
            color: white;
        }
    </style>
</head>
<body class="is-preload" style="overflow-x: hidden;">
<!-- Intro -->
<%--<section id="intro" class="main style1 dark fullscreen">--%>
<%--    <div class="content">--%>
<%--        <header>--%>

<%--            &lt;%&ndash;            <h2>Homespital.</h2>&ndash;%&gt;--%>
<%--            &lt;%&ndash;            <h2 class="mainHomespital">Homespital.</h2>&ndash;%&gt;--%>

<%--            &lt;%&ndash;            <h2>Homespital.</h2>&ndash;%&gt;--%>
<%--            <img id="logo" style="width: 500px; height: 100%; text-decoration-line: none" alt=""--%>
<%--                 src="/resources/img/design/main_base_nav.png"/>--%>

<%--        </header>--%>
<%--        <h1>우리집에서 한번에--%>
<%--            <hr>--%>
<%--            <strong>비대면 진료 </strong><strong>| 처방 </strong><strong>| 배송까지</strong><br/>--%>
<%--        </h1>--%>
<%--        <footer>--%>
<%--            <a href="#one" class="button style2 down">More</a>--%>
<%--        </footer>--%>
<section id="banner">
    <div class="inner">
        <div class="inner-text">
            <h2 class="main-text">home+hospital</h2>
            <h2 class="sub-text">내손안에작은병원</h2>
        </div>
        <div class="inner-side">
            <p class="textP">화상진료부터ㅡ</p>
            <p>처방약 배달까지 우리집에서 한번에</p>
            <p>내손안의 작은병원,</p>
            <p>홈스피탈</p>
        </div>
    </div>
    <%--환자 메인 화면 이미지 태영      --%>
    <div class="image-box">
        <img width="250px" height="300px" src="/resources/img/design/u_main_img.png" alt="로그인메인이미지"/>
    </div>
    <a href="#one" class="more scrolly" style="color: #fff;"></a>
</section>


<%--    </div>--%>
<%--</section>--%>

<!-- One -->
<section id="one">
    <div class="gallery">
        <article class="from-left" style="display:table">
            <div class="content box style2 information-left" style="text-align: center">
                <img src="/resources/img/design/u_01.png" width="600" height="600"/>
            </div>
        </article>
        <article class="from-right" style="display:table">
            <div class="content box style2 information-right">
                <div class="information-right-in">
                    <h1>비대면 진료</h1><br>
                    <h2>어디가 불편하세요?</h2><br>
                    <div>
                        <p>지금 당장 예약 가능 한<br><br> 동네 최고 전문의에게<br><br> 안전하고 신속하게 진료 받으세요.<br><br>
                            내 위치를 중심으로 가까운 병원 순으로<br><br> 검색이 가능합니다.</p>
                    </div>
                </div>
            </div>
        </article>
    </div>
    <%--    <a href="#two" class="button style2 down anchored">Next</a>--%>
</section>

<!-- Two -->
<section id="two">
    <div class="gallery">
        <article class="from-left">
            <div class="content box style2 information-left">
                <div class="information-left-in">
                    <h1>화상채팅</h1><br>
                    <h2>안전하고 정확하게<br>진료 받으세요</h2><br>
                    <div>
                        <p>어디서나 편하게 홈스피탈에서<br><br>제공하는 화상 서비스로<br><br>
                            보다 안전하고 정확하게<br><br>진료 받으세요.</p>
                    </div>
                </div>
            </div>
        </article>
        <article class="from-right">
            <div class="content box style2 information-right">
                <div class="information-right-in"/>
                <img src="/resources/img/design/u_02.png" width="600" height="600">
            </div>
    </div>
    </article>
    </div>
    <%--    <a href="#work" class="button style2 down anchored">Next</a>--%>
</section>

<%--<!-- Work -->--%>
<section id="three">
    <div class="gallery">
        <article class="from-left">
            <div class="content box style2 information-left" style="text-align: center">
                <img src="/resources/img/design/u_03.png" width="600" height="600"/>
            </div>
        </article>
        <article class="from-right">
            <div class="content box style2 information-right">
                <div class="information-right-in">
                    <h1>약 배달/약국내방</h1><br>
                    <h2>처방약 배달을<br>쉽고 빠르게</h2><br>
                    <div>
                        <p>약국에서 안전하고 신속하게 처방약을 배달합니다.<br><br>처방약 조제가 끝나면 라이더가 내 위치까지 안전하게<br><br>
                            배달 해 드립니다.<br><br>직접 약국에 들러 약제를 받아가시 수도 있어요.<br><br>내 위치를 중심으로 근처 약국을 검색 해 보세요.</p>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>
<section id="four">
    <div class="gallery">
        <article class="from-left">
            <div class="content box style2 information-left">
                <div class="information-left-in">
                    <h1 style="color:#33CC99;font-size: 50px">간편결제</h1><br>
                    <h2>결제를 <br>쉽고 안전하게</h2><br>
                    <div>
                        <p>카드만 등록하면 진료비 약제비가<br><br> 안전하게 결제 됩니다.</p>
                    </div>
                </div>
            </div>
        </article>
        <article class="from-right">
            <div class="content box style2 information-right">
                <div class="information-right-in">
                    <img src="/resources/img/design/u_04.png" width="500" height="600"/>
                </div>
            </div>
        </article>
    </div>
    <%--    <a href="#work" class="button style2 down anchored">Next</a>--%>
</section>


<%--<!-- Work -->--%>
<section id="five">
    <div class="gallery">
        <article class="from-left">
            <div class="content box style2 information-left" style="text-align: center">
                <img src="/resources/img/design/u_05.png" width="500" height="600"/>
            </div>
        </article>
        <article class="from-right">
            <div class="content box style2 information-right">
                <div class="information-right-in">
                    <h1>진료 영수증 저장</h1><br>
                    <h2>진료영수증 관리를<br>쉽고 간편하게</h2><br>
                    <div>
                        <p>내가 받은 비대면 진료의 진료영수증을 모바일에서<br><br>
                            쉽게 확인이 가능합니다.</p>
                    </div>
                </div>
            </div>
        </article>
    </div>
</section>


<!--텍스트 스크롤(준근)-->
<section id="Six">
    <div style="padding-top:130px">
        <div class="grid-container">
            <p class="grid-item" style="color:#2A2D42"><strong>이럴때 사용하세요!</strong></p>
            <p class="grid-item">자가격리로 외출을 하지 못 할 때</p>
            <p class="grid-item">만성질환으로 매번 처방약을 받으러 병원 갈 때</p>
            <p class="grid-item">아이, 노인을 모시고 병원까지 이동이 힘들 때</p>
            <p class="grid-item">바쁜 회사 생활로 병원 갈 시간이 없을 때</p>
            <p class="grid-item">몸이 아파서 병원까지 이동이 어려울 때</p>
            <p class="grid-item">간단한 병원 상담이 필요할 때</p>
        </div>
    </div>
</section>
<%--텍스트 스크롤 끝부분(준근)--%>
<%--        케러셸 시작부분 (준근)--%>
<section id="Seven">
    <div>
        <div class="position-relative" style="width:243px; margin:0 auto;">
            <img style="position:relative; z-index: 4; margin-top:300px;" src="resources/img/design/iphone.png"/>
            <div id="carouselExampleSlidesOnly" class="carousel slide position-absolute top-0 start-0"
                 data-bs-ride="carousel"
                 style="width:243px; margin-top:300px;">
                <div class="carousel-inner">
                    <div class="carousel-item active" data-bs-interval="3000">
                        <img src="resources/img/design/slide1.png" class="d-block w-100" alt="..."
                             style="z-index: 1;">
                    </div>
                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="resources/img/design/slide2.png" class="d-block w-100" alt="..."
                             style="z-index: 2;">
                    </div>
                    <div class="carousel-item" data-bs-interval="3000">
                        <img src="resources/img/design/slide3.png" class="d-block w-100" alt="..."
                             style="z-index: 3;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%-- 케러셸 끝부분 (준근)--%>


<%--<!-- Contact -->--%>
<%--<section id="contact" class="main style3 secondary">--%>
<%--    <div class="content">--%>
<%--        <header>--%>
<%--            <h2>Say Hello.</h2>--%>
<%--            <p>Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore condimentum.</p>--%>
<%--        </header>--%>
<%--        <div class="box">--%>
<%--            <form method="post" action="#">--%>
<%--                <div class="fields">--%>
<%--                    <div class="field half"><input type="text" name="name" placeholder="Name"/></div>--%>
<%--                    <div class="field half"><input type="email" name="email" placeholder="Email"/></div>--%>
<%--                    <div class="field"><textarea name="message" placeholder="Message" rows="6"></textarea></div>--%>
<%--                </div>--%>
<%--                <ul class="actions special">--%>
<%--                    <li><input type="submit" value="Send Message"/></li>--%>
<%--                </ul>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>


<!-- One -->
<%--        <section id="one" class="main style2 right dark fullscreen">--%>
<%--            <div class="content box style2">--%>
<%--                <header>--%>
<%--                    <h2>안내</h2>--%>
<%--                </header>--%>
<%--                <p>--%>
<%--                    Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore--%>
<%--                    condimentum. Fusce blandit ultrices sapien, in accumsan orci rhoncus--%>
<%--                    eu. Sed sodales venenatis arcu, id varius justo euismod in. Curabitur--%>
<%--                    egestas consectetur magna.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <a href="#two" class="button style2 down anchored">Next</a>--%>
<%--        </section>--%>

<!-- Two -->
<%--        <section id="two" class="main style2 left dark fullscreen">--%>
<%--            <div class="content box style2">--%>
<%--                <header>--%>
<%--                    <h2>편리함</h2>--%>
<%--                </header>--%>
<%--                <p>--%>
<%--                    Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore--%>
<%--                    condimentum. Fusce blandit ultrices sapien, in accumsan orci rhoncus--%>
<%--                    eu. Sed sodales venenatis arcu, id varius justo euismod in. Curabitur--%>
<%--                    egestas consectetur magna.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--            <a href="#work" class="button style2 down anchored">Next</a>--%>
<%--        </section>--%>

<!-- Work -->
<%--        <section id="work" class="main style3 primary">--%>
<%--            <div class="content">--%>
<%--                <header>--%>
<%--                    <h2>Service</h2>--%>
<%--                    <p>직접개발한 화상채팅으로 ~~~</p>--%>
<%--                </header>--%>

<%--                <!-- Gallery  -->--%>
<%--                <div class="gallery">--%>
<%--                    <article class="from-left">--%>
<%--                        <a href="/resources/img/main/01.jpg" class="image fit"--%>
<%--                        ><img--%>
<%--                                src="/resources/img/main/01.jpg"--%>
<%--                                title="The Anonymous Red"--%>
<%--                                alt=""--%>
<%--                        /></a>--%>
<%--                    </article>--%>
<%--                    <article class="from-right">--%>
<%--                        <a href="/resources/img/main/02.jpg" class="image fit"--%>
<%--                        ><img--%>
<%--                                src="/resources/img/main/02.jpg"--%>
<%--                                title="Airchitecture II"--%>
<%--                                alt=""--%>
<%--                        /></a>--%>
<%--                    </article>--%>
<%--                    <article class="from-left">--%>
<%--                        <a href="/resources/img/main/03.jpg" class="image fit"--%>
<%--                        ><img src="/resources/img/main/03.jpg" title="Air Lounge" alt=""--%>
<%--                        /></a>--%>
<%--                    </article>--%>
<%--                    <article class="from-right">--%>
<%--                        <a href="/resources/img/main/04.jpg" class="image fit"--%>
<%--                        ><img src="/resources/img/main/04.jpg" title="Carry on" alt=""--%>
<%--                        /></a>--%>
<%--                    </article>--%>
<%--                    <article class="from-left">--%>
<%--                        <a href="/resources/img/main/05.jpg" class="image fit"--%>
<%--                        ><img--%>
<%--                                src="/resources/img/main/05.jpg"--%>
<%--                                title="The sparkling shell"--%>
<%--                                alt=""--%>
<%--                        /></a>--%>
<%--                    </article>--%>
<%--                    <article class="from-right">--%>
<%--                        <a href="/resources/img/main/06.jpg" class="image fit"--%>
<%--                        ><img src="/resources/img/main/06.jpg" title="Bent IX" alt=""--%>
<%--                        /></a>--%>
<%--                    </article>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>

<%--        <!-- Contact -->--%>
<%--        <section id="contact" class="main style3 secondary">--%>
<%--            <div class="content">--%>
<%--                <header>--%>
<%--                    <h2>Say Hello.</h2>--%>
<%--                    <p>--%>
<%--                        Lorem ipsum dolor sit amet et sapien sed elementum egestas dolore--%>
<%--                        condimentum.--%>
<%--                    </p>--%>
<%--                </header>--%>
<%--                <div class="box">--%>
<%--                    <form method="post" action="#">--%>
<%--                        <div class="fields">--%>
<%--                            <div class="field half">--%>
<%--                                <input type="text" name="name" placeholder="Name"/>--%>
<%--                            </div>--%>
<%--                            <div class="field half">--%>
<%--                                <input type="email" name="email" placeholder="Email"/>--%>
<%--                            </div>--%>
<%--                            <div class="field">--%>
<%--                <textarea--%>
<%--                        name="message"--%>
<%--                        placeholder="Message"--%>
<%--                        rows="6"--%>
<%--                ></textarea>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <ul class="actions special">--%>
<%--                            <li><input type="submit" value="Send Message"/></li>--%>
<%--                        </ul>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </section>--%>

<!-- Scripts -->
<script src="/resources/js/main/jquery.min.js"></script>
<script src="/resources/js/main/jquery.poptrox.min.js"></script>
<script src="/resources/js/main/jquery.scrolly.min.js"></script>
<script src="/resources/js/main/jquery.scrollex.min.js"></script>
<script src="/resources/js/main/browser.min.js"></script>
<script src="/resources/js/main/breakpoints.min.js"></script>
<script src="/resources/js/main/util.js"></script>
<script src="/resources/js/main/main.js"></script>

<%--스크롤스파이--%>
<script>
    $(document).ready(function () {
        // var scrollResult = 0;
        $(window).scroll(function () {
            var pageTop = $(window).scrollTop();
            var oneT = $("#one").offset().top;
            var sixT = $("#Six").offset().top;
            var sevenT = $("#Seven").offset().top;

            if (pageTop >= oneT && pageTop < sixT || pageTop >= sevenT) {
                $("#logo").attr("src", "/resources/img/design/logo_U_nav.png");
                $(".nav-Link").css({"color": "#red"});
            } else {
                $("#logo").attr("src", "/resources/img/design/main_base_nav.png");
            }
        });
    });
</script>


<%--텍스트 스크롤 스크립트 시작부분(준근)--%>
<script>
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            const rand = Math.floor(Math.random() * 30);
            if (entry.isIntersecting === true) {
                const img = entry.target.querySelector("img");
                entry.target.classList.add("inview");
                img.src = `https://source.unsplash.com/random/960x540/?${rand}`;
            } else {
                entry.target.classList.remove("inview");
            }
        });
    });
    const items = document.querySelectorAll(".grid-item");

    items.forEach((item, index) => {
        observer.observe(item, index);
    });
</script>
<%--텍스트 스크롤 스크립트 끝부분(준근)--%>
</body>
</html>