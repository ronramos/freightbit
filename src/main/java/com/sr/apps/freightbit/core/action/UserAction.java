package com.sr.apps.freightbit.core.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import com.sr.apps.freightbit.core.formbean.UserBean;
import com.sr.apps.freightbit.util.ParameterConstants;
import com.sr.biz.freightbit.core.entity.Client;
import com.sr.biz.freightbit.core.entity.User;
import com.sr.biz.freightbit.core.service.ClientService;
import com.sr.biz.freightbit.core.service.UserService;
import com.sr.biz.freightbit.util.entity.Parameters;
import com.sr.biz.freightbit.util.service.ParameterService;

/**
 * UserAction includes view list of users, add, delete, edit, and view user info
 * Implements Preparable to allow the prepopulation of dropdown values inside prepare()
 * Validation done on validateOnSubmit() for addUser() and editUser()
 * FormBean UserBean contains fields that are to be displayed in the JSP
 */
public class UserAction extends ActionSupport implements Preparable {

    private static final long serialVersionUID = 1L;
	private static final Logger log = Logger.getLogger(UserAction.class);
	
	private List<UserBean> users = new ArrayList<UserBean>(); //list of users displayed in User List page
	private List<Parameters> userTypeList = new ArrayList<Parameters>(); //User type drop down values
	private List<Parameters> statusList = new ArrayList<Parameters>(); //Status drop down values
	private UserBean user = new UserBean(); //single user object
	private String userNameParam; //parameter used to identify which specific user is to be edited/deleted/viewed
	
	private UserService userService;
	private ClientService clientService;
	private ParameterService parameterService;

    public String viewUsers() {
    	List<User> userEntityList = userService.findAllUsers();
		for (User userElem : userEntityList) {
			users.add(transformToFormBean(userElem));
		}
        return SUCCESS;
    }
    
    public String loadAddUserPage() {
    	return SUCCESS;
    }
    
    public String addUser() throws Exception {
    	validateOnSubmit(user);
    	if (hasFieldErrors())
    		return INPUT;
    	userService.addUser(transformToEntityBean(user));
    	return SUCCESS;
    }
    
    public String loadEditUserPage() {
    	User userEntity = userService.findUserByUserName(userNameParam);
    	user = transformToFormBean(userEntity); 
    	return SUCCESS;
    }
    
    public String editUser() {
   	    validateOnSubmit(user);
    	if (hasFieldErrors())
    		return INPUT;
    	userService.updateUser(transformToEntityBean(user));
    	return SUCCESS;
    }
    
    public String deleteUser() {
    	User userEntity = userService.findUserByUserName(userNameParam);
    	userService.deleteUser(userEntity);
    	return SUCCESS;
    }

    public String viewUserInfo() {
    	User userEntity = userService.findUserByUserName(userNameParam);
    	user = transformToFormBean(userEntity); //specific user to view
    	
    	List<User> userEntityList = userService.findAllUsers(); 
		for (User userElem : userEntityList) {
			users.add(transformToFormBean(userElem)); //used to populate user list table
		}
		
    	return SUCCESS;
    }

    @Override
    public void prepare(){
    	userTypeList = parameterService.getParameterMap(ParameterConstants.USER_TYPE);
    	statusList = parameterService.getParameterMap(ParameterConstants.STATUS);
    }
    
    public void validateOnSubmit(UserBean userBean) {
    	clearErrorsAndMessages();
        if(StringUtils.isBlank(userBean.getCompanyName())){
            addFieldError("user.companyName", getText("err.companyName.required"));
        }
        if(StringUtils.isBlank(userBean.getFirstName())){
            addFieldError("user.firstName", getText("err.firstName.required"));
        }
        if(StringUtils.isBlank(userBean.getLastName())){
            addFieldError("user.lastName", getText("err.lastName.required"));
        }
        if(StringUtils.isBlank(userBean.getUserName())){
            addFieldError("user.userName", getText("err.userName.required"));
        }
        if(StringUtils.isBlank(userBean.getPassword())){
            addFieldError("user.password", getText("err.password.required"));
        }
        if(StringUtils.isBlank(userBean.getEmailAddress())){
            addFieldError("user.email", getText("err.email.required"));
        }
        if(StringUtils.isBlank(userBean.getContactNumber())){
            addFieldError("user.contactNumber", getText("err.contactNumber.required"));
        }
    }

    //used to transform a formbean to an entity bean
    public User transformToEntityBean(UserBean formBean) {		
    	User entity = new User();
    	Map sessionAttributes = ActionContext.getContext().getSession();
    	String clientId = (String) sessionAttributes.get("clientId");
    	
    	Client client = clientService.findClientById(clientId);
    	entity.setClient(client);
    	if (formBean.getUserId()!=null)
    		entity.setUserId(new Long(formBean.getUserId()));
    	
    	entity.setUsername(formBean.getUserName());
    	entity.setPassword(formBean.getPassword());
    	entity.setTitle(formBean.getTitle());
    	entity.setEmail(formBean.getEmailAddress());
    	entity.setFirstName(formBean.getFirstName());
    	entity.setLastName(formBean.getLastName());
    	entity.setStatus(formBean.getStatus());
    	entity.setContactNo(formBean.getContactNumber());
    	entity.setUserType(formBean.getUserType());
    	return entity;
    }
    
    //used to transform an entity bean to a form bean
    public UserBean transformToFormBean(User entity) {
    	UserBean formBean = new UserBean();
    	formBean.setUserId(Long.toString(entity.getUserId()));
    	formBean.setFirstName(entity.getFirstName());
    	formBean.setLastName(entity.getLastName());
    	formBean.setCompanyName(entity.getClient().getClientName());
    	formBean.setClientId(entity.getClient().getClientId());
    	formBean.setUserName(entity.getUsername());
    	formBean.setPassword(entity.getPassword());
    	formBean.setUserType(entity.getUserType());
    	formBean.setTitle(entity.getTitle());
    	formBean.setEmailAddress(entity.getEmail());
    	formBean.setContactNumber(entity.getContactNo());
    	formBean.setStatus(entity.getStatus());
    	return formBean;
    }
    
	
	public String getUserNameParam() {
		return userNameParam;
	}

	public void setUserNameParam(String userNameParam) {
		this.userNameParam = userNameParam;
	}
	
	public List<Parameters> getStatusList() {
		return statusList;
	}

	public void setStatusList(List<Parameters> statusList) {
		this.statusList = statusList;
	}
	

	public List<Parameters> getUserTypeList() {
		return userTypeList;
	}

	public void setUserTypeList(List<Parameters> userTypeList) {
		this.userTypeList = userTypeList;
	}


	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}

    public List<UserBean> getUsers() {
        return users;
    }

    public void setUsers(List<UserBean> users) {
        this.users = users;
    }
    
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}
	
	public void setParameterService(ParameterService parameterService) {
		this.parameterService = parameterService;
	}
}
