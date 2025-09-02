package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Dto;

@WebServlet("/rg")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. 요청으로 들어오는 한글 데이터 깨짐 방지
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;utf-8");

        // 2. HTML 폼에서 전송된 데이터 받기 (name 속성 사용)
        String userId = request.getParameter("id");
        String userPass = request.getParameter("password");
        String userEmail = request.getParameter("email");
        String userName = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String userTel = request.getParameter("tel");
        
        System.out.println("이메일" + userEmail);
        System.out.println("전화번호" + userTel);

        // 3. 받은 데이터를 DTO 객체에 담기
        Dto user = new Dto();
        user.setUserId(userId);
        user.setUserPass(userPass);
        user.setUserName(userName);
        user.setUserEmail(userEmail);
        user.setBirthday(birthday);
        user.setGender(gender);
        user.setUserTel(userTel);

        // 4. DAO 객체를 통해 데이터베이스에 저장 요청
        Dao userDao = new Dao();
        boolean isSuccess = userDao.registerUser(user);

        // 5. 결과에 따라 페이지 이동
        if (isSuccess) {
            response.sendRedirect("login.jsp"); // 회원가입 성공
        } else {
            response.sendRedirect("error.jsp?msg=회원가입에 실패했습니다."); // 회원가입 실패
        }
    }
}
