package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[JoinCon]");
		
		// 0. post 방식의 인코딩
		request.setCharacterEncoding("UTF-8");
		// 1. 파라미터 수집
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");

		// 전역변수로 선언해주기
		Connection conn = null;
		PreparedStatement psmt = null;

		try {
			// 2. 동적로딩: 해당 경로의 클래스를 실행해서 JVM이 Driver에 로딩한다.
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("클래스파일 로딩 도전!");

			String url = "jdbc:mysql://project-db-stu.ddns.net:3307/suncheon_0825_5";
			String dbid = "suncheon_0825_5";
			String dbpw = "smhrd5";
			conn = DriverManager.getConnection(url, dbid, dbpw);

			if (conn != null) {
				System.out.println("DB 연결 성공");
			} else {
				System.out.println("DB 연결 실패");
			}
			String sql = "insert into member(member_userid,member_name,member_email,member_pw) values(?,?,?,?)";
			// sql 실행전 셋팅
			psmt = conn.prepareStatement(sql);
			// 바인드 변수는 자동으로 "" 안에 id를 넣는다.
			psmt.setString(1, id);
			psmt.setString(2, name);
			psmt.setString(3, email);
			psmt.setString(4, pw);
			
			int cnt = psmt.executeUpdate();

			// 6. 실행 후 처리
			if (cnt > 0) {
				// sql문 실행 성공시 Main.jsp로 이동
				response.sendRedirect("index.jsp");
			} else {
				// sql문 실행 실패시
				System.out.println("sql문 실행 실패!!!");
			}

		} catch (Exception e) {
			// Exception -> 모든 종류의 오류를 잡을 수 있는 큰 개념의 오류
			// 오류의 내용 보여주기 -> console 창에서 확인
			e.printStackTrace();
		} finally {
			// 오류가 나더라도 DB 연결해제는 필수
			try {
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}

}
