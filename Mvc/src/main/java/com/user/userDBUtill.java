package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class userDBUtill {

	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet rs = null;

public static List<User> getCustomer(String userName) {
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
			
				
				int id= rs.getInt(1);;
				String fname= rs.getString(2);
				String lname= rs.getString(3);
				String age= rs.getString(4);
				String gender=rs.getString(5);
				String city= rs.getString(6);
				String address=rs.getString(7);
				String tel= rs.getString(8);
				String email= rs.getString(9);
				String password= rs.getString(10);
				
				
				User c = new User(id,fname,lname,age,gender,city,address,tel, email,password);
				user.add(c);
			}
			
		} catch (Exception e) {
			
		}
		
		return user;	
	}




	
	public static boolean insertUser(String fname,String lname,String age,String gender,String city,String address,String tel,String email,String password) {
		
		boolean isSuccess = false;
		
		try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	   
    	    String sql = "insert into user values(0,'"+fname+"','"+lname+"','"+age+"','"+gender+"','"+city+"','"+address+"','"+tel+"','"+email+"','"+password+"')";
    	   
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
		catch (Exception e) {
    		e.printStackTrace();
    	}
		
		return isSuccess;

	}

	
	
public static List<User> getUserDetails( String userName) {
    	
    	
	
	
	
    	
    	ArrayList<User> us1 = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from user where Email='"+userName+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {


				int id= rs.getInt(1);;
				String fname= rs.getString(2);
				String lname= rs.getString(3);
				String age= rs.getString(4);
				String gender=rs.getString(5);
				String city= rs.getString(6);
				String address=rs.getString(7);
				String tel= rs.getString(8);
				String email= rs.getString(9);
				String password= rs.getString(10);
				
    			
    			User ce = new User(id,fname,lname,age,gender,city,address,tel, email,password);
    			us1.add(ce);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return us1;	
    }
    
	
	
	
public static boolean userUPDATE(String fname,String lname,String age,String gender,String city,String address,String tel,String email,String password) {
	
	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	
		String sql= "update user set FName='"+fname+"' , Lname ='"+lname+"' ,Age='"+age+"', Gender='"+gender+"', City='"+city+"',Address='"+address+"', Tel='"+tel+"', Email='"+email+"', Password='"+password+"' where Email='"+email+"'  ";
		
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
	
	
	
	

public static boolean deleteUser(String value) {

	
	
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from user where Email='"+value+"'";
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








public static boolean userReset(String email, String tel) {
	
	boolean isSuccess = false;
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		
		String sql = "select Email , Tel from user where Email='" + email + "'";
		ResultSet r = stmt.executeQuery(sql);

		

		while (r.next()) {
			String DBTel = r.getString("Tel");
			String DBMail = r.getString("Email");
		

			if (email.equals(DBMail) && (tel.equals(DBTel)) ) {

				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}
	}
        
      
     
         catch(Exception e)
         {
            e.printStackTrace();
         }
	return isSuccess;
	

     

	
}
	
	

public static boolean userValidatePssword(String email, String password) {
try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	
		String sql= "update user set  Password='"+password+"' where Email='"+email+"'  ";
		
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

}
