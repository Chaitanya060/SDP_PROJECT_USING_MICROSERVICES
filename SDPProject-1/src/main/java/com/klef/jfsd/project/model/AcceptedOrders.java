package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class AcceptedOrders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int id;
	
	@Column(name="orderby",nullable = true)
	public String orderby;
	
	@Column(name="items",nullable=true)
	public String items;
	
	@Column(name="orderid",nullable=true)
	public String orderid;
	
	@Column(name="restraunt",nullable=true)
	public String Restraunt;
	
	@Column(name="orderAcceptanceId",nullable = true)
	public String orderAcceptanceUserId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrderby() {
		return orderby;
	}

	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}

	public String getItems() {
		return items;
	}

	public void setItems(String items) {
		this.items = items;
	}

	public String getRestraunt() {
		return Restraunt;
	}

	public void setRestraunt(String restraunt) {
		Restraunt = restraunt;
	}

	public String getOrderAcceptanceUserId() {
		return orderAcceptanceUserId;
	}

	public void setOrderAcceptanceUserId(String orderAcceptanceUserId) {
		this.orderAcceptanceUserId = orderAcceptanceUserId;
	}

	@Override
	public String toString() {
		return "AcceptedOrders [id=" + id + ", orderby=" + orderby + ", items=" + items + ", orderid=" + orderid
				+ ", Restraunt=" + Restraunt + ", orderAcceptanceUserId=" + orderAcceptanceUserId + "]";
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

}
