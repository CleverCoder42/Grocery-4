package com.mayer.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn ;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="user")
public class User {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private long userId;
		
		@NotEmpty
		@Size(min= 2, max=50)
		private String name;
		
		@NotEmpty
		@Size(min= 2)
		private String password;
		
		@NotEmpty @Email
		private String email;
		
		@NotEmpty
		private String phone;
		@ManyToMany(fetch=FetchType.LAZY, cascade = CascadeType.ALL)
		@JoinTable(name="user_role", joinColumns=@JoinColumn(name="user_id"), inverseJoinColumns=@JoinColumn(name="role_id"))
		private Set<Role>  roles = new HashSet<Role>();
		
		public User(){}
		public User(long userId,  String name, String password,  String email,String phone) {
			super();
			this.userId = userId;
			this.name = name;
			this.password = password;
			this.email = email;
			this.phone = phone;
		}
		public long getUserId() {
			return userId;
		}
		public void setUserId(long userId) {
			this.userId = userId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		
			
		public Set<Role> getRoles() {
			return roles;
		}
		public void setRoles(Set<Role> roles) {
			this.roles = roles;
		}
		@Override
		public String toString() {
			return "User [userId=" + userId + ", name=" + name + ", password=" + password + ", email=" + email
					+ ", phone=" + phone + "]";
		}
		
		
		
		
		
		
}
