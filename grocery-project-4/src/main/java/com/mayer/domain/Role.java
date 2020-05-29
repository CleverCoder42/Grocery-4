package com.mayer.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
public class Role {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;	
	private String name;
	
	@ManyToMany(mappedBy="roles")
	private Set<User>users = new HashSet<User>(0);
	
	public Role(){
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	

}
