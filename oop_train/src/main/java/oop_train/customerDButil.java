package oop_train;


import java.sql.Connection;



import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class customerDButil {
	
	private static Connection con =null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	//login validate
	public static boolean validate(String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from customer where username='"+username+"' and password='"+password+"' ";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
	
	
	//insert  //retrieve 
	
	//sql - insert
	//sql2 - retrieve
	
	public static List<Customer> insertCustomer(String name, String address, String phone, String email, String un, String pw) {
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into customer values(0,'"+name+"', '"+address+"', '"+phone+"', '"+email+"', '"+un+"', '"+pw+"')";
			String sql2 = "select * from customer where username = '"+un+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				ResultSet rs2 = stmt.executeQuery(sql2);
				
				if(rs2.next()) {
					String Name = rs2.getString(2);
					String Address = rs2.getString(3);
					String Phone = rs2.getString(4);
					String Email = rs2.getString(5);
					String Username = rs2.getString(6);
					String Password = rs2.getString(7);
					
					Customer c = new Customer(Name, Address, Phone, Email, Username, Password);
					cus.add(c);
				}
				
				
			}
			
			else{
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	
	
	
	
	
	
	
	//update
	
	//sql - insert
	//sql2 - retrieve
	
public static List<Customer> updateCustomer(String name, String address, String phone, String email, String un, String pw) {
		
		ArrayList<Customer> cus = new ArrayList<>();
	
		
		try {
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "update customer set CusName='"+name+"',CusAddress='"+address+"',CusPhone='"+phone+"', CusEmail='"+email+"', username ='"+un+"',password='"+pw+"' where username='"+un+"'";
			String sql2 = "select * from customer where username = '"+un+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				
				ResultSet rs2 = stmt.executeQuery(sql2);
				
				if(rs2.next()) {
					String Name = rs2.getString(2);
					String Address = rs2.getString(3);
					String Phone = rs2.getString(4);
					String Email = rs2.getString(5);
					String Username = rs2.getString(6);
					String Password = rs2.getString(7);
					
					Customer c = new Customer(Name, Address, Phone, Email, Username, Password);
					cus.add(c);
				}
				
				
			}
			
			else{
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	
	




//delete


public static boolean deleteCustomer(String username) {
	
	
	boolean isSuccess = false;
	
	try {
		
		con = DBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from customer where username='"+username+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




	
	
	
	

}
