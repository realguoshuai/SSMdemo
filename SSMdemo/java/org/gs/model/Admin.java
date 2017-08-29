package org.gs.model;

import org.gs.core.BaseEntity;

public class Admin extends BaseEntity {
   

    private String pwd;

    private String roles;

   

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }
}