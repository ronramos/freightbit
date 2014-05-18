package com.sr.apps.freightbit.core.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * Created by JMXPSX on 4/23/14.
 */
public class LoginAction extends ActionSupport implements SessionAware {
    private String username;
    private String password;
	private Map<String, Object> sessionAttributes = null;

    public String execute() throws Exception {
    	sessionAttributes.put("clientId", "1");
        return "success";
    }

    public void validate() {
        if (getUsername().length() == 0) {
            addFieldError("username", "User Name is required");
        }

        if (getPassword().length() == 0) {
            addFieldError("password", getText("password.required"));
        }

    }

    public String getUsername() {
        return username;
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
    
	@Override
	public void setSession(Map<String, Object> sessionAttributes) {
		this.sessionAttributes = sessionAttributes;		
	}
}
