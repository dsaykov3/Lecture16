package com.progress.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="contact")
public class Contact implements Serializable{
        @Id
        @GeneratedValue(strategy=GenerationType.IDENTITY)
        @Column(name="contact_id")
	private int id;
        @Column(name="name")
	private String name;
        @Column(name="email")
	private String email;
        @Column(name="address")
	private String address;
        @Column(name="telephone")
	private String telephone;

	@Column(name="group_id")
	private int groupId;

	@ManyToOne
	@JoinColumn(name = "group_id", referencedColumnName = "group_id", insertable = false, updatable = false)
	private ContactGroup group;

	public Contact() {
	}

	public Contact(String name, String email, String address, String telephone) {
		this.name = name;
		this.email = email;
		this.address = address;
		this.telephone = telephone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public ContactGroup getGroup() {
		return group;
	}

	public void setGroup(ContactGroup group) {
		this.group = group;
	}

	public int getGroupId() {
		return groupId;
	}

	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}
}
