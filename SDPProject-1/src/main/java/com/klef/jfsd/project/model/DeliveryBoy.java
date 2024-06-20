package com.klef.jfsd.project.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "DeliveryBoyRegister")
public class DeliveryBoy {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		public int aid;
		
		@Column(name = "Name",length = 20,nullable = true)
		public String delfullname;
		
		@Column(name ="NickName",length=20,nullable= true)
		public String delnickname;
		
		@Column(name="DeliveryId",length=34,nullable = false)
		public String delId;
		
		@Column(name="Passsword",length=34,nullable = false)
		public String delpassword;
		
		
		@Column(name="Language",length = 30,nullable = true)
		public String dellanguage;
		
		@Column(name="Email",length=40,nullable = false)
		public String delemail;
		
		@Column(name="Street",nullable=true)
		public String delstreet;
		
		@Column(name="ZipCode",nullable = true)
		public String delzipCode;
		
		
		@Column(name="City",nullable=true)
		public String delCity;
		
		@Column(name="Country",nullable=true)
		public String delCountry;
		
		@Column(name="Address",nullable=true)
		public String delAddress;
		
		@Column(name="Phone",nullable = false)
		public String delphone;

		public int getAid() {
			return aid;
		}

		public void setAid(int aid) {
			this.aid = aid;
		}

		public String getDelfullname() {
			return delfullname;
		}

		public void setDelfullname(String delfullname) {
			this.delfullname = delfullname;
		}

		public String getDelnickname() {
			return delnickname;
		}

		public void setDelnickname(String delnickname) {
			this.delnickname = delnickname;
		}

		public String getDelId() {
			return delId;
		}

		public void setDelId(String delId) {
			this.delId = delId;
		}

		public String getDelpassword() {
			return delpassword;
		}

		public void setDelpassword(String delpassword) {
			this.delpassword = delpassword;
		}

		
		public String getDelemail() {
			return delemail;
		}

		public void setDelemail(String delemail) {
			this.delemail = delemail;
		}

		

		public String getDelCity() {
			return delCity;
		}

		public void setDelCity(String delCity) {
			this.delCity = delCity;
		}

		public String getDelCountry() {
			return delCountry;
		}

		public void setDelCountry(String delCountry) {
			this.delCountry = delCountry;
		}

		public String getDelAddress() {
			return delAddress;
		}

		public void setDelAddress(String delAddress) {
			this.delAddress = delAddress;
		}

		public String getDelphone() {
			return delphone;
		}

		public void setDelphone(String delphone) {
			this.delphone = delphone;
		}

		@Override
		public String toString() {
			return "DeliveryBoy [aid=" + aid + ", delfullname=" + delfullname + ", delnickname=" + delnickname
					+ ", delId=" + delId + ", delpassword=" + delpassword + ", language=" + dellanguage + ", delemail="
					+ delemail + ", street=" + delstreet + ", zipCode=" + delzipCode + ", delCity=" + delCity
					+ ", delCountry=" + delCountry + ", delAddress=" + delAddress + ", delphone=" + delphone + "]";
		}

		public String getDellanguage() {
			return dellanguage;
		}

		public void setDellanguage(String dellanguage) {
			this.dellanguage = dellanguage;
		}

		public String getDelstreet() {
			return delstreet;
		}

		public void setDelstreet(String delstreet) {
			this.delstreet = delstreet;
		}

		public String getDelzipCode() {
			return delzipCode;
		}

		public void setDelzipCode(String delzipCode) {
			this.delzipCode = delzipCode;
		}

		
	}
		