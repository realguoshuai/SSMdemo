package org.gs.model;

import java.util.Date;

import org.gs.core.BaseEntity;

public class User extends BaseEntity {
   

    private String email;

    private String mobile;

    private String pwd;

    private String code;


    private Integer gender;

    private Date birthday;

    private String address;

    private String imgurl;

   

 

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

  

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

  

    public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

	@Override
	public String toString() {
		return "User [email=" + email + ", mobile=" + mobile + ", pwd=" + pwd + ", code=" + code + ", gender=" + gender
				+ ", birthday=" + birthday + ", address=" + address + ", imgurl=" + imgurl + "]";
	}

	

  
}