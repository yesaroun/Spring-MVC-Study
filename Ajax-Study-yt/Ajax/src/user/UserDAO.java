package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO
{
	private static Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() throws ClassNotFoundException, SQLException
	{
		conn = DBConn.getConnection();
	}
	
	
	public ArrayList<User> search(String userName)
	{
		String SQL = "SELECT * FROM ajax_user WHERE userName LIKE ?";
		ArrayList<User> userList = new ArrayList<User>();
		
		try
		{
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, "%" + userName + "%");
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				User user = new User();
				user.setUserName(rs.getString(1));
				user.setUserAge(rs.getInt(2));
				user.setUserGender(rs.getString(3));
				user.setUserEmail(rs.getString(4));
				userList.add(user);
				
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return userList;
	}
	
	public int register(User user) {
		String SQL = "insert into ajax_user( userName,   userAge,   userGender,   userEmail)"
				+ " values (?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserName());
			pstmt.setInt(2, user.getUserAge());
			pstmt.setString(3, user.getUserGender());
			pstmt.setString(4, user.getUserEmail());
			return pstmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return -1;	// 데이터베이스 오류
	}
}
