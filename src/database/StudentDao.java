package database;

import java.sql.*;
import java.util.List;

import evan.beans.Student;
import net.proteanit.sql.DbUtils;

public class StudentDao {
	public StudentDao() {
		try {
			getconnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String driver = "com.mysql.cj.jdbc.Driver";
	public Connection Con = null;
	public PreparedStatement st;
	public String url = "jdbc:mysql://localhost:3306/school?useSSL=false";

	public void getconnection() throws SQLException {
		try {
			Class.forName(driver);

			Con = DriverManager.getConnection(url, "root", "");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
public ResultSet GetAllStudents()
{
	String sql = "select * from student";
	PreparedStatement st;
	ResultSet rs = null;
	try {
		st = Con.prepareStatement(sql);
		rs = st.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return rs;
	
}
public ResultSet GetStudentById(int id)
{
	String sql = "select * from student where studentid=?";
	PreparedStatement st;
	ResultSet rs = null;
	try {
		st = Con.prepareStatement(sql);
		st.setInt(1, id);
		rs = st.executeQuery();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return rs;
	
}
public int UpdateStudent(Student s)
{
	int result = 0;
	try {
		String sql = "update student set studentname=?, roll=?,grade=? where studentid=?";
		PreparedStatement st = Con.prepareStatement(sql);
		st.setString(1, s.getStudentname());
		st.setString(2, s.getRoll());
		st.setString(3, s.getGrade());
		st.setInt(4, s.getStudentid());
		result = st.executeUpdate();

		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

	}
	return result;
}

	public int insertstudent(Student s)  {
		int result = 0;
		try {
			String sql = "insert into student(studentname,roll,grade)values(?,?,?)";
			PreparedStatement st = Con.prepareStatement(sql);
			st.setString(1, s.getStudentname());
			st.setString(2, s.getRoll());
			st.setString(3, s.getGrade());
			result = st.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return result;
	}
	
	public int deletestudent(int id)
	{
		int result = 0;
		try {
			String sql = "delete from student where studentid=?";
			PreparedStatement st = Con.prepareStatement(sql);
			st.setInt(1, id);
			
			result = st.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return result;
	}
}