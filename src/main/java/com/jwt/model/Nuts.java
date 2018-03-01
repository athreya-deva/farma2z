package com.jwt.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * 
 * @author Mugaesh Varma A IFET College Of Engineering and Technology Tamilnadu.
 * 
 */


@Entity
@Table(name = "nuts")
public class Nuts implements Serializable {

	

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer nutsId;

	@Column
	private String nutsName;

	@Column
	private String nutsPath;

	public Integer getNutsId() {
		return nutsId;
	}

	public void setNutsId(Integer nutsId) {
		this.nutsId = nutsId;
	}

	public String getNutsName() {
		return nutsName;
	}

	public void setNutsName(String nutsName) {
		this.nutsName = nutsName;
	}

	public String getNutsPath() {
		return nutsPath;
	}

	public void setNutsPath(String nutsPath) {
		this.nutsPath = nutsPath;
	}
	
	
	
	
	
}