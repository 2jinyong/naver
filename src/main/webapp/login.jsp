<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.0/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<script src="js/script.js"></script>

</head>
<body>
	<div class="mainbox container d-flex justify-content-center align-items-center flex-column mt-5">
        <!-- 네이버 타이틀 -->
        <div class="mb-3 titlebox">
		    <a href="#">NAVER</a>
        </div>
        <!-- 네이버 타이틀 -->
        
        <!-- 로그인 박스-->
        <div class="loginbox row g-0">
            
            <nav>
                <div class="nav nav-tabs nav-justified" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-first-tab" data-bs-toggle="tab" data-bs-target="#nav-first" type="button" role="tab" aria-controls="nav-first" aria-selected="true"><i class="fa-solid fa-arrow-right-from-bracket"></i>ID/전화번호</button>
                    <button class="nav-link" id="nav-second-tab" data-bs-toggle="tab" data-bs-target="#nav-second" type="button" role="tab" aria-controls="nav-second" aria-selected="false"><i class="fa-solid fa-clock-rotate-left"></i>일회용 번호</button>
                    <button class="nav-link" id="nav-last-tab" data-bs-toggle="tab" data-bs-target="#nav-last" type="button" role="tab" aria-controls="nav-last" aria-selected="false"><i class="fa-solid fa-qrcode"></i>QR코드</button>
                </div>
            </nav>
            <!-- 첫번째 탭 -->
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-first" role="tabpanel" aria-labelledby="nav-first-tab" tabindex="0">
                    <form action="login" class="d-flex row justify-content-center" method="post">
                        <div class="inputbox d-flex g-0 row justify-content-center mt-4">
                            <div class="tinput d-flex justify-content-center">
                                <input type="text" id="userid" name="userid" placeholder="아이디 또는 전화번호" autofocus required>
                            </div>
                            <div class="binput d-flex justify-content-center">
                                <input type="password" id="password" name="password" placeholder="비밀번호" required>
                            </div>
                        </div>
                        <div class="checkbox d-flex px-0 mt-3 justify-content-between">
                            <div class="d-flex align-items-center justify-content-center">
                                <input type="checkbox" name="checkbox" id="checkbox" value="checked">
                                <label for="checkbox">                                    
                                    <div class="d-flex align-items-center">
                                        <i class="fa-regular fa-circle-check me-1"></i><span>로그인 상태 유지</span>
                                    </div>
                                </label>
                            </div>
                            <div class="d-flex">
                                <span>IP보안</span>
                                <div class="ipcheckbox ms-1 d-flex align-items-center justify-content-between">
                                    <div class="circle"></div>
                                    <span class="textOn">ON</span>
                                    <span class="textOff">OFF</span>
                                </div>
                            </div>
                        </div>

                        <div class="buttonbox mt-3 px-0">
                            <button type="submit" class="btn">로그인</button>
                        </div>

                        <div class="otherLogin d-flex justify-content-center align-items-center mt-4 px-0">
                            <span class="px-2">지문 · 얼굴 인증을 설정했다면</span>
                        </div>
                        
                        <div class="buttonbox2 mt-4 px-0">
                            <button type="button" class="btn">패스키 로그인</button>
                        </div>
                    </form>
                </div>
                <!-- /첫번째 탭 -->

                <!-- 두번째 탭 -->
                <div class="tab-pane fade" id="nav-second" role="tabpanel" aria-labelledby="nav-second-tab" tabindex="0">
                    <div class="d-flex justify-content-center">
                        <div class="tab2 d-flex justify-content-center row">
                            <div class="mt-5 d-flex justify-content-center row px-0">
                                <p class="text-center">네이버앱의 <span>메뉴 > 설정 ⚙ > 로그인 아이디 관리 ></span></p>
                                <p class="text-center mb-5"><span>더보기 ⁝ > 일회용 로그인 번호</span>에 보이는 번호를 입력해 주세요.</p>
                            </div>
                            
                            <input type="text" placeholder="번호를 입력하세요." maxlength="11">
                            
                            <div class="buttonbox mt-3 px-0">
                                <button type="submit" class="btn">로그인</button>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- /두번째 탭 -->

                <!-- 세번째 탭 -->
                <div class="tab-pane fade" id="nav-last" role="tabpanel" aria-labelledby="nav-last-tab" tabindex="0">
                    <div class="tab3 d-flex justify-content-center row">
                        <div class="qrbox mt-5">
                            <img src="data:image/jpeg;base64, iVBORw0KGgoAAAANSUhEUgAAAMgAAADIAQAAAACFI5MzAAACFklEQVR42tWYMa6DQAxEjSi23CNwE7hYJJC4GNxkj0BJgfCf8UKUX6TM5H+KiOxLYe3YYzvm7x77y+Q0PIPPxZd8dNbgbeeRkGT3vc+z49BLOu1h+4A3JZnqK7AX4KPbe2vVhK9psQcPzb5Bhm303fJczDKjFBPqA1V8sRapuSHAV+UEhAmJDKE+98dL9gpILcrNOl996pKzXl4r+POEsSEY3IlBFUrjacUVCUmO2NpwCsPh6L4yVBnhxdAkfG82ZAhCvetURU5GtERt5KkL34yK1RH3g17F7/hN6GNX1CJyGgRZ4NewC9TGyhJ1ZKuOIDkgDQLEg7fBJ0v0LykpaWWfGIjZMZJvY9ERVgkEQaKGVTNARqkksGpcB5oFXTqFPuulnIaEMfZXmhBDHxDTkcgG1ml8pMDNc3ZRELRJzG9ICVTJg3V6jQ86AmmuOu0xQcKv26dyMnJcMxP9mtmKhLliExGOLScN2sMuoE9NVBnxUIXNIqQZtqjTWzkFoT5VlYUHDW3q7ug6srNvg4y1WdA8TUqYlJgbG/gDZskpzKMoCbc43AnvJvQp0b10JObVk3Mjc5TDI1I2u5DUOZ7VydowxlYXCx3hLoOxpauLbezXp919W0NiowyvQp02W1RpqyfIC/g1vQoJwyi/QLhRsk7n2CRMSeK/jamLnmUc4pijRUjqTltn2LrP2a9t9+Pkf/7/9pb8AK8F0xTVfHfEAAAAAElFTkSuQmCC" alt="qr">
                        </div>
                        <p class="text-center mb-1">공용 네트워크, 공용 PC라면 안전을 위해<br>QR코드로 로그인해주세요.</p>
                        <p class="text-center">네이버 앱  > 렌즈  를 눌러 QR코드를 스캔하여<br>보이는 숫자 중 <strong>34</strong>를 선택하면 로그인 됩니다. 도움말</p>
                    </div>
                </div>
                <!-- /세번째 탭 -->
            </div>               
        </div>
        <!-- /로그인박스 -->

        <!-- 아이디 비번 찾기, 회원가입 -->
        <div class="findbox d-flex align-items-center mt-3">
            <a href="#">비밀번호찾기</a>
            <span class="line"></span>
            <a href="#">아이디찾기</a>
            <span class="line"></span>
            <a href="register.jsp">회원가입</a>
        </div>
        <!-- /아이디 비번 찾기, 회원가입 -->

        <!-- 광고배너 -->
        <div class="adbox mt-5">
            <a href="https://campaign.nbilly.naver.com/travelsupersale?dtm_source=naver_pclogin&dtm_medium=mktatrb_etc&dtm_campaign=2508-travel-001&pcode=naver_pclogin&campaign_id=2508-travel-001&channel_id=naver_pclogin" target="_blank">
                <img src="https://ssl.pstatic.net/melona/libs/1378/1378592/36d1ba3003f0c2b9df17_20250816102616510.png" alt="ad banner">
            </a>
        </div>
        <!-- /광고배너 -->
       
	</div>
    
    
    <!-- 푸터 -->
    <footer class="d-flex justify-content-center">
        <div class="d-flex  container justify-content-center row">
            <div class="findbox2 d-flex align-items-center justify-content-center mt-5">
                <a href="#">이용약관</a>
                <span class="line2"></span>
                <a href="#"><Strong>개인정보처리방침</Strong></a>
                <span class="line2"></span>
                <a href="#">책임의 한계와 법적고지</a>
                <span class="line2"></span>
                <a href="#">회원정보 고객센터</a>
            </div>
            <div class="lastfooter  d-flex justify-content-center align-items-center mb-3">    
                <a href="index.html" class="me-2">
                    NAVER
                </a>    
                <span>Copyright<span class="text-black fw-bold"> © NAVER Corp.</span> All Rights Reserved.</span>
            </div>
        </div>
    </footer>
  
</body>
</html>