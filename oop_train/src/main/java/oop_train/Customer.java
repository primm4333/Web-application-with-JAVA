package oop_train;

public class Customer {
    private String name;
    private String address;
    private String phone;
    private String email;
    private String userName;
    private String password;
    
    
	public Customer(String name, String address, String phone, String email, String username, String password) {
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.userName = username;
		this.password = password;
	}


	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String getUsername() {
		return userName;
	}



	public String getPassword() {
		return password;
	}

	
    
    

}
