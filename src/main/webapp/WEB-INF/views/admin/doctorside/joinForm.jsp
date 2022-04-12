<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--가영: 병원회원가입페이지--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homespital</title>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/resources/css/signUp.css"/>

    <style>
        .doctor-title {
            font-size: 20px;
        }
    </style>


</head>

<body class="is-preload">
<section id="header">
    <header>
        <span class="image avatar"><img src="/resources/img/signUp/avatar.jpg" alt=""/></span>
        <h1 id="logo"><a href="#">Homespital</a></h1>
        <p>Hi</p>

    </header>
    <nav id="nav">
        <ul>
            <li><a href="#one" class="active">로그인 정보 입력<font color="red">(필수)</font></a></li>
            <li><a href="#two" class="active">의사 정보 입력<font color="red">(필수)</font></a></li>
            <li><a href="#three" class="active">추가 정보 입력(선택)</a></li>
            <li><a href="#four">약관동의</a></li>
        </ul>
    </nav>
    <footer>
        <ul class="icons">
            <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
            <li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
        </ul>
    </footer>
</section>


<!-- Wrapper -->
<div id="wrapper">
    <!-- 모달창 -->
    <div class="modal fade" id="defaultModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title">알림</h4>
                </div>
                <div class="modal-body">
                    <p class="modal-contents"></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-bs-dismiss="modal">닫기</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!--// 모달창 -->

    <!-- Main -->
    <div id="main">
        <form id="form" name="form" action="/doctor/doctorJoin.do" method="post" enctype="multipart/form-data">
            <!-- One -->
            <section id="one">
                <div class="container">

                    <h3 style="margin-top: 100px">의사 회원가입</h3>

                    <hr>

                    <div style="font-size: 25px">로그인 정보에 사용됩니다<strong style="color: #1abc9c">(필수)</strong></div>
                    <br>
                    <div class="input-control">
                        <label for="email" class="doctor-title">이메일</label>
<%--                        <div style="display:flex">--%>
                            <input type="email" id="email" name="doctor_email" placeholder="이메일을 입력해주세요">

<%--                            <input type="button" id="doctorEmailoverlap" class="doubleChk" value="중복확인">--%>
<%--                        </div>--%>
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label for="password" class="doctor-title">비밀번호</label>
                        <input type="password" id="password" name="doctor_password" placeholder="비밀번호를 입력해주세요">
                        <div class="error"></div>
                    </div>
                    <div class="input-control" id="divPassword2">
                        <label for="password2" class="doctor-title">비밀번호 확인</label>
                        <input type="password" id="password2" name="password2" placeholder="비밀번호를 입력해주세요">
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label for="phone" class="doctor-title">휴대폰 번호</label>
                        <div style="display:flex">
                            <input id="phone" type="text" name="doctor_phone" title="전화번호 입력"/>
                            <input type="button" id="phoneChk" class="doubleChk" value="인증번호 받기">
                        </div>
                        <div class="error"></div>
                        <br/>
                    </div>
                    <div class="input-control" id="divPhone2">
                        <div style="display:flex">
                            <input id="phone2" type="text" name="phone2" title="인증번호 입력" disabled/>
                            <input type="button" id="phoneChk2" class="doubleChk" value="본인인증">
                        </div>
                        <div class="error"></div>
                        <span class="point successPhoneChk">※ 휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span>
                        <input type="hidden" id="phoneDoubleChk"/>

                    </div>
                </div>
            </section>

            <br><br><br>
            <hr>
            <!-- Two -->
            <section id="two">
                <div class="container">
                    <div style="font-size: 25px">의사/병원정보<strong style="color: #1abc9c">(필수)</strong></div>
                    <br>
                    <div class="input-control" >
                        <label class="doctor-title" for="doctorName">의사이름</label>
                        <input type="text" id="doctorName" name="doctor_name" placeholder="이름을 입력해주세요">
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label class="doctor-title" for="doctorNumber">의사면허번호</label>
<%--                        <div style="display:flex">--%>
                            <input id="doctorNumber" name="doctor_valid_number" type="text" maxlength="6">
                            <div class="error"></div>
<%--                        </div>--%>

                    </div>
                    <div class="input-control">의사 프로필 등록
<%--                        <span class="doctor-title">의사사진</span>--%>
<%--                        <div style="display:flex">--%>
                        <label for="doctorProfile" id="filebtn">사진 등록</label>
                            <input id="doctorProfile" name="doctorImgNames" type="file"  accept=".gif, .jpg, .png">
                        <div id='attZone'>
                        </div>
<%--                        </div>--%>
                        <div class="error"></div>
                    </div>
                    <div class="input-control">
                        <label class="doctor-title" for="businessNumber">사업자번호</label>
                        <div style="display:flex; flex-flow : wrap ">
                            <input id="businessNumber" style="width: 70%" name="hospital_business_number" type="text"
                                   maxlength="10">

                            <input type="button" id="businessNumCheck" class="doubleChk" style="width: 15%" value="조회">
                            <div class="error"></div>
                        </div>

                    </div>


                    <br>


                    <div class="input-control">
                        <label class="doctor-title">병원주소</label>
                        <table style="width: 90%">
                            <colgroup>
                                <col style="width:20%">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>우편번호</th>
                                <td>

                                        <div style="display:flex">
                                            <input type="hidden" id="confmKey" name="confmKey" value="">
                                            <input type="text" id="zipNo" name="zipNo" readonly style="width:100%">
                                            <input type="button" value="주소검색" onclick="goPopup()"
                                                   style=" margin-left:30px;">
                                        </div>


                                </td>
                            </tr>
                            <tr>

                                    <th>도로명주소</th>
                                    <td><input type="text" id="roadFullAddr" name="roadFullAddr" style="width:100%">
                                    </td>

                            </tr>
                            <tr>

                                    <th>상세주소</th>
                                    <td>
                                        <input type="text" id="addrDetail" name="addrDetail" style="width:100%"
                                               value="">

                                    </td>

                            </tr>
                            </tbody>
                        </table>
                        <div class="error"></div>
                    </div>

                    <div>
                        <label class="doctor-title" style="margin-top: 20px">진료과 선택</label>
                    </div>

                    <div>
                        <%--                        <input type="hidde" name="doctor_diagnosis_type"/>--%>
                        <div class="d-flex align-items-center" style="display: -webkit-flex;">
                            <select id='diagnosis_type' multiple='multiple' style="height: 200px; width: 100%" >
                                <c:forEach var="med" items="${medicalList}">
                                    <option value="${med.medical_name}">${med.medical_name}</option>
                                </c:forEach>
                                <%--                            <option value='내과'>1</option>--%>
                                <%--                            <option value='소아과'>2</option>--%>
                                <%--                            <option value='이비인후과'>3</option>--%>
                            </select>
                            <div class="px-2">
                                <input type='button' id='btnLToR' value='▶'>
                                <input type='button' id='btnRToL' value='◀'>
                            </div>
                            <select id='diagnosis_type2' multiple='multiple' name="doctor_diagnosis_type" style="height: 200px; width: 100%"></select>

                        </div>
                            <div class="error" style="overflow:hidden; word-break:break-all; color: red;" ></div>

                    </div>


                    <div>
                        <label class="doctor-title" style="margin-top: 20px">진료 시간 선택</label>
                        <label style="font-size: 10pt;">단위: 시간</label>

                            <div style="display:flex; flex-flow : wrap">

                                    <select name="open" class="form-select" id="open" style="width: 35%; margin-left: 30px" aria-label="오픈 진료 시간">
                                        <option name="open" selected value="" disabled="disabled" style="text-align: center;">진료 시작</option>
                                        <option name="open" value="9" id="open9" style="text-align: center">9</option>
                                        <option name="open" value="10" id="open10" style="text-align: center">10</option>
                                        <option name="open" value="11" id="open11" style="text-align: center">11</option>
                                    </select>

                                    <select name="close" class="form-select" id="end"
                                            style="width: 35%;  margin-left: 40px" aria-label="마감 진료 시간">
                                        <option name="close" selected value="" disabled="disabled" style="text-align: center;">진료 마감</option>
                                        <option name="close" value="17" id="end17" style="text-align: center">17</option>
                                        <option name="close" value="18" id="end18" style="text-align: center">18</option>
                                        <option name="close" value="19" id="end19" style="text-align: center">19</option>
                                    </select>


                                    <div class="error" style="color: red"></div>
                            </div>


                    </div>
                    <br>
                    <div>
                        <label class="doctor-title" style="margin-top: 20px">점심 시간 선택</label>
                        <label style="font-size: 10pt;">단위: 시간</label>
                        <div>
                            <div style="display:flex; flex-flow : wrap">

                                <select name='lunch-st' class="form-select" id="lunch-st" style="width: 35%; margin-left: 30px" aria-label="Default select example">

                                    <option name='lunch-st' value="" disabled="disabled" selected style="text-align: center;">점심시간(부터)</option>
                                    <option name='lunch-st' value="11" id="startLunch110" style="text-align: center">11</option>
                                    <option name='lunch-st' value="12" id="startLunch120" style="text-align: center">12</option>
                                    <option name='lunch-st' value="13" id="startLunch130" style="text-align: center">13</option>
                                </select>

                                <select name='lunch-cl' class="form-select" id="lunch-cl" style="width: 35%;  margin-left: 40px"  aria-label="Default select example">
                                    <option name='lunch-cl' value="" disabled="disabled" selected style="text-align: center;">점심시간(까지)</option>
                                    <option name='lunch-cl' value="12" id="endLunch121" style="text-align: center">12</option>
                                    <option name='lunch-cl' value="13" id="endLunch131" style="text-align: center">13</option>
                                    <option name='lunch-cl' value="14" id="endLunch141" style="text-align: center">14</option>

                                </select>

    <div class="error" style="color: red"></div>
                            </div>
                    </div>

                        <%--                        <script>--%>
                        <%--                            // lunch-st 와 umnch-cl 의 벨류값 hidden 에 넘기기--%>
                        <%--                            const str = document.getElementsByName("lunch-st") +"~" + document.getElementsByName("lunch-cl")--%>

                        <%--                        </script>--%>
                        <br>

                        <label class="doctor-title">병원 정기 휴무 선택</label><label style="font-size: 10pt;">(다중선택가능)</label>

                        <div class="rest-day">
                            <%--                            히든추가--%>
                            <%--                            <input type="hidden" id="holiday" name="holiday">--%>
                            <%--                            <label for="holiday" class="rest-check"style="margin-left: 50px">--%>
                                <span style="font-size: 15px; color: #000000"></span>

<%--체크박스 인풋 span안에 넣어놨음--%>
                            <span style="font-size: 15px; color: #000000" > <input type="checkbox" class="check" name="holiday" id="mon" value="월" style="margin-left: 7px">월</span>

                            <span style="font-size: 15px; color: #000000"><input type="checkbox" class="check"
                                                                                 name="holiday" id="tue" value="화"
                                                                                 style="margin-left: 7px">화</span>

                            <span style="font-size: 15px; color: #000000"><input type="checkbox" class="check"
                                                                                 name="holiday" id="wed" value="수"
                                                                                 style="margin-left: 7px">수</span>

                            <span style="font-size: 15px; color: #000000"> <input type="checkbox" class="check"
                                                                                  name="holiday" id="thurs" value="목"
                                                                                  style="margin-left: 7px">목</span>

                            <span style="font-size: 15px; color: #000000"><input type="checkbox" class="check"
                                                                                 name="holiday" id="fri" value="금"
                                                                                 style="margin-left: 7px">금</span>

                            <span style="font-size: 15px; color: #000000"><input type="checkbox" class="check"
                                                                                 name="holiday" id="sat" value="토"
                                                                                 style="margin-left: 7px">토</span>

                            <span style="font-size: 15px; color: #000000"><input type="checkbox" class="check"
                                                                                 name="holiday" id="sun" value="일"
                                                                                 style="margin-left: 7px" >일</span>

                             <span style="font-size: 15px; color: #000000"><input type="checkbox" class="check"
                                                                     name="holiday" id="non" value="휴무없음"
                                                                     style="margin-left: 7px">휴무없음</span>
                            <%--                            </label>--%>
                                     <div class="error" style="color:red"></div>

                        </div>
                        <div style="font-size: 12px;">* 병원 운영시간을 기반으로 비대면 진료 예약을 받을 수 있습니다.</div>

                        <div style="font-size: 12px;"> 시간당 최대 10명 예약이 가능합니다.</div>

                        <div style="font-size: 12px;"> 예약시간 관리는 환자리스트에서 확인 가능합니다.</div>
                    </div>

                </div>
            </section>
            <br><br><br><br>

            <!-- Three -->
            <section id="three">
                <div class="container">
                    <div style="font-size: 25px">추가 정보 입력<strong style="color: #bcb9b9">(선택)</strong></div>
                    <div style="font-size: 12px;">* 진료예약시 환자에게 제공되는 정보입니다.</div>
                    <hr>
                    <div class="input-control">
                        <div class="input-control">
                            <label class="doctor-title" for="hospital_fax">팩스번호</label>
                            <div style="display:flex">
                                <input id="Hospital_fax" name="hospital_fax" type="text" maxlength="6">
                            </div>
                            <div class="error"></div>
                        </div>
                        <div class="input-control">
                            <label class="doctor-title" for="Hospital_url">홈페이지(URL)</label>
                            <div style="display:flex">
                                <input id="Hospital_url" name="hospital_url" type="text" maxlength="6">
                            </div>
                            <div class="error"></div>
                        </div>
                        <div class="input-control">병원 소개 사진 등록
                            <label for="hospitalProfile" id="filebtn1">사진 등록</label>
                            <input id="hospitalProfile" name="hospitalImgNames" type="file" style="display: none"  accept=".gif, .jpg, .png">
                            <div id='attZone1'>
                            </div>
                            <div class="error"></div>
                        </div>
                    </div>
                </div>
            </section>
            <br><br><br><br>

            <!-- Four -->
            <section id="four">
                <div class="container">
                    <div class="">
                        <div class="">
                            <div style="font-size: 25px">약관동의</div>
                            <hr style="height:3px">
                            <label for="agree_all" style="display:block">
                                <input type="checkbox" name="agree_all" id="agree_all">
                                <span>모두 동의합니다</span>
                            </label>
                            <label style="display:block">
                                <input type="checkbox" name="agree" value="1">
                                <span>이용약관 동의<strong style="color: #1abc9c">(필수)</strong></span>
                            </label>
                            <label style="display:block">
                                <input type="checkbox" name="agree" value="2">
                                <span>개인정보 수집, 이용 동의<strong style="color: #1abc9c">(필수)</strong></span>
                            </label>
                            <label style="display:block">
                                <input type="checkbox" name="agree" value="3">
                                <span>개인정보 이용 동의<strong style="color: #1abc9c">(필수)</strong></span>
                            </label>
                            <label style="display:block;">
                                <input type="checkbox" name="agree2" value="4">
                                <span>이벤트, 혜택정보 수신동의<strong class="select_disable" style="color: #1abc9c">(선택)</strong></span>
                            </label>
                            <div class="error" style="color: #ff3860; font-size: 20px;"></div>
                        </div>

                    </div>
                    <br><br><br>
                    <input id="subbtn" type="button" value="회원가입" style="width: 100%;" onClick="checkAll()"></input>
                </div>
            </section>
        </form>


    </div>

    <!-- Footer -->
    <section id="footer">
        <div class="container">
            <ul class="copyright">
                <li>&copy; Untitled. All rights reserved.</li>
                <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>
        </div>
    </section>

</div>

<!-- Scripts -->
<script src="/resources/js/signUp/jquery.min.js"></script>
<script src="/resources/js/signUp/jquery.scrollex.min.js"></script>
<script src="/resources/js/signUp/jquery.scrolly.min.js"></script>
<script src="/resources/js/signUp/browser.min.js"></script>
<script src="/resources/js/signUp/breakpoints.min.js"></script>
<script src="/resources/js/signUp/util.js"></script>
<script src="/resources/js/signUp/signUp.js"></script>
<%--<script src="/resources/js/signUp/signUpCheck.js"></script>--%>

<script src="/resources/js/signUp/doctorJoin.js"></script>
<script src="/resources/js/signUp/doctorCheck.js"></script>

<script>
    $(function () {
        //-- 왼쪽 -> 오른쪽 이동
        $('#btnLToR').click(function (event) {
            $("#diagnosis_type option:selected").each(function () {
                if ($(this).index != 0) {
                    $(this).appendTo("#diagnosis_type2");
                }
            });
            // alert($("#diagnosis_type").val()); -- 이동확인
        });

        //-- 오른쪽 -> 왼쪽 이동
        $("#btnRToL").click(function (event) {
            $("#diagnosis_type2 option:selected").each(function () {
                if ($(this).index != 0) {
                    $(this).appendTo("#diagnosis_type");
                }
            });
            // alert($("#diagnosis_type2").val()); -- 이동확인
        });
    });


</script>




<%-- 이미지 업로드 미리보기 --%>
<script>

    (/* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
        imageView = function imageView(att_zone, btn) {
            var attZone = document.getElementById(att_zone);
            var doctorProfile = document.getElementById(btn)
            var sel_files = [];
            // 미리보기 이미지 속성
            var img_style = 'display:inline-block;position:relative;'
                + 'width:150px;height:120px;margin:5px;border:1px solid #b4b4b4;z-index:1';
            doctorProfile.onchange = function (e) {
                var files = e.target.files;
                var fileArr = Array.prototype.slice.call(files)
                for (f of fileArr) {
                    imageLoader(f);
                }
            }
            /*첨부된 이미리즐을 배열에 넣고 미리보기 */
            imageLoader = function (image) {
                sel_files.push(image);
                var reader = new FileReader();
                reader.onload = function (ee) {
                    let img = document.createElement('img')
                    img.setAttribute('src', ee.target.result);
                    img.setAttribute('style', img_style)
                    document.querySelector("div#attZone").appendChild(img);
                }
                reader.readAsDataURL(image);
            }
        }
     )('att_zone', 'doctorProfile')
</script>
<script>



    (imageView1 = function imageView1(att_zone1, btn1) {
            var attZone1 = document.getElementById(att_zone1);
            var hospitalProfile = document.getElementById(btn1)
            var sel_files1 = [];
            var img_style = 'display:inline-block;position:relative;'
                + 'width:150px;height:120px;margin:5px;border:1px solid #b4b4b4;z-index:1';
            hospitalProfile.onchange = function (e) {
                var files1 = e.target.files;
                var fileArr1 = Array.prototype.slice.call(files1)
                for (f of fileArr1) {
                    imageLoader1(f);
                }
            }

            /*첨부된 이미리즐을 배열에 넣고 미리보기 */
            imageLoader1 = function (image) {
                sel_files1.push(image);
                var reader = new FileReader();
                reader.onload = function (ee) {
                    let img = document.createElement('img')
                    img.setAttribute('src', ee.target.result);
                    img.setAttribute('style', img_style)
                    document.querySelector("div#attZone1").appendChild(img);
                }
                reader.readAsDataURL(image);
            }
        }
    )('att_zone1', 'hospitalProfile')

    // function setThumbnail(event) {
    //     var reader = new FileReader();
    //     reader.onload = function(event) {
    //         var img = document.createElement("img");
    //         img.setAttribute("src", event.target.result);
    //         document.querySelector("div#image_container").appendChild(img);
    //     };
    //     reader.readAsDataURL(event.target.files[0]);
    // }

</script>


</body>
</html>