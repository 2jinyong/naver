package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.Dto;

public class Dao {

    // 1. DataSource 객체를 사용
    private DataSource dataSource;

    // 2. 생성자에서 JNDI를 통해 DataSource 객체 얻기
    public Dao() {
        try {
            Context initialContext = new InitialContext();
            Context envContext = (Context) initialContext.lookup("java:comp/env");
            this.dataSource = (DataSource) envContext.lookup("jdbc/test");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean registerUser(Dto user) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // 3. 커넥션 풀에서 연결 빌려오기
            conn = dataSource.getConnection();

            // 4. SQL 쿼리 작성 (PreparedStatement는 보안에 유리)
            String sql = "INSERT INTO users (id, password, email, name, birthday, gender, tel) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            
            // 5. DTO의 데이터를 가져와 쿼리의 ? 부분에 채워넣음
            pstmt.setString(1, user.getUserId());
            pstmt.setString(2, user.getUserPass());
            pstmt.setString(3, user.getUserEmail());
            pstmt.setString(4, user.getUserName());
            pstmt.setString(5, user.getBirthday());
            pstmt.setString(6, user.getGender());
            pstmt.setString(7, user.getUserTel());

            // 6. 쿼리 실행 및 결과 반환
            int rowsAffected = pstmt.executeUpdate();
            System.out.println(rowsAffected);
            return rowsAffected > 0;
            

        } catch (SQLException se) {
            se.printStackTrace();
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            // 7. 자원 해제 (연결을 다시 풀에 반납)
            try { if (pstmt != null) pstmt.close(); } catch (SQLException se2) {}
            try { if (conn != null) conn.close(); } catch (SQLException se) {}
        }
    }
}
