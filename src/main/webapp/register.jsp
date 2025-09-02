<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
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
    <form action="rg" method="post">
        <div class="container d-flex justify-content-center">
            <div class="rcontainer mt-2">
                <a href="login.jsp">NAVER</a>
                <div class="ulcontainer mt-5">
                    <ul class="ulbox1">
                        <li class="d-flex align-items-center">
                            <i class="fa-solid fa-user"></i>
                            <input type="text" id="id" name="id" placeholder="아이디" required>@naver.com
                        </li>
                        <li class="d-flex align-items-center">
                            <i class="fa-solid fa-lock"></i>
                            <input type="password" id="password" name="password" placeholder="비밀번호" required>
                        </li>
                        <li class="d-flex align-items-center">
                            <i class="fa-solid fa-envelope"></i>
                            <input type="email" id="email" name="email" placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)">
                        </li>
                    </ul>
                    <ul class="ulbox2 mt-3">
                        <li class="d-flex align-items-center">
                            <i class="fa-solid fa-user"></i>
                            <input type="text" id="name" name="name" placeholder="이름" required>
                        </li>
                        <li class="d-flex align-items-center">
                            <i class="fa-solid fa-calendar"></i>
                            <input type="text" id="birthday" name="birthday" placeholder="생년월일 8자리" maxlength="8" required>
                        </li>
                        <li class="genderbox d-flex align-items-center">
                            <div class="gender-inbox d-flex justify-content-center align-items-center w-100 h-100">
                                <input type="radio" name="gender" id="men" value="men">
                                <label for="men" class="d-flex justify-content-center align-items-center">남자</label>
                                
                                <input type="radio" name="gender" id="women" value="women">                            
                                <label for="women" class="d-flex justify-content-center align-items-center">여자</label>

                                <input type="radio" name="gender" id="none" value="none" checked>
                                <label for="none" class="d-flex justify-content-center align-items-center">선택안함</label>
                            </div>
                        </li>
                    </ul>
                    <ul class="mt-3">
                        <li class="d-flex align-items-center">
                            <i class="fa-solid fa-globe"></i>
                            <select name="firstTel" id="firstTel">
                                <option value="korea">대한민국 +82</option>
                            </select>
                        </li>
                        <li class="d-flex align-items-center"><i class="fa-solid fa-mobile"></i><input type="text" id="tel" name="tel" placeholder="휴대전화번호" required></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="buttoncontainer d-flex justify-content-center mt-3">
            <button type="submit" class="btn btn-success">가입하기</button>
        </div>
    </form>
</body> 
</html>