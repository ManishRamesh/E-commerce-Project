package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Payment {
	private int cardNo;
	private int DOE;
	private String nameOnCard;
	@ManyToOne
	private User user;
	
	
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	public int getDOE() {
		return DOE;
	}
	public void setDOE(int dOE) {
		DOE = dOE;
	}
	public String getNameOnCard() {
		return nameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	
	
}
