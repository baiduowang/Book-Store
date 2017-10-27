package entity;

public class User {
          private  String   id;        
	   	  private  String username;
          private  String password;
          private  String level;
          private  String phone;
		
        
		public String getUsername() {
			return username;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public void setLevel(String level) {
			this.level = level;
		}
		public String getLevel() {
			return level;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getPhone() {
			return phone;
		}
		@Override
		public String toString() {
			return "User [id=" + id + ", level=" + level + ", password="
					+ password + ", phone=" + phone + ", username=" + username
					+ ", getId()=" + getId() + ", getLevel()=" + getLevel()
					+ ", getPassword()=" + getPassword() + ", getPhone()="
					+ getPhone() + ", getUsername()=" + getUsername() + "]";
		}
		
              
}   