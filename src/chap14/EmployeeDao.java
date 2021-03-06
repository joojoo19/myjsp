package chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
	public static List<String> getNameLike(String name, boolean asc) {
		List<String> list = new ArrayList<String>();
		
		String sql = "SELECT ename FROM employee "
			     + "WHERE ename LIKE '%" + name + "%' "
			     + "ORDER BY ename "; 
		if(asc) {
			sql += "ASC";
		} else {
			sql += "DESC";
		}
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";


		
			// 1. 클래스 로딩
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				} catch (Exception e) {
			e.printStackTrace();
				}
			// 2. 커넥션 생성
			// 3. Statement 객체 생성
			try (
			Connection conn = DriverManager.getConnection(url, id, pw);
			Statement stmt = conn.createStatement();	){
			// 4. 쿼리 실행
			ResultSet rs = stmt.executeQuery(sql);	
			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			} } catch (Exception e) {
				e.printStackTrace();
			}
			

		return list;
	
	}
	public static List<String> getNameLike(String name) {
		List<String> list = new ArrayList<String>();
		
		String sql = "SELECT ename FROM employee "
			     + "WHERE ename LIKE '%" + name + "%'";  // LIKE '%A%'; -> "LIKE '%" + name + "%'";
		
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";


		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 커넥션 생성

			conn = DriverManager.getConnection(url, id, pw);

			// 3. Statement 객체 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			// 6. statement 종료
			try {
				if(stmt != null ) {
				stmt.close();    }
			} catch (Exception e2) {
				e2.printStackTrace();
			}

			// 7. 커넥션 종료
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e3) {
				e3.printStackTrace();
			}
		}
		return list;
	
	}
	
	public static List<String> listEmployeeName() {  // List<String>타입의 메소드
		List<String> list = new ArrayList<>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";

		String sql = "SELECT ename FROM employee";

		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 커넥션 생성

			conn = DriverManager.getConnection(url, id, pw);

			// 3. Statement 객체 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			// 6. statement 종료
			try {
				if(stmt != null ) {
				stmt.close();    }
			} catch (Exception e2) {
				e2.printStackTrace();
			}

			// 7. 커넥션 종료
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e3) {
				e3.printStackTrace();
			}
		}
		return list;
	}
}
