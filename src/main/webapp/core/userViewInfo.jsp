<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
        
		<!-- MIDDLE -->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        
		<h1 class="page-header">Users</h1>
		
		<!-- MAIN BOX -->
		
			<div class="row">			
				<div class="col-md-12">
					
					
					<div>
						<div class="panel booking panel-info"  style="float:left; width:50%;">
							<div class="booking panel-heading">
								<img src="includes/images/account.png" class="box-icon">
								<span class="booking panel-title">User Information</span>
							</div>
							<div class="panel-body">
							<s:form action="User-Info" theme="bootstrap" cssClass="form-horizontal" >
							<div style="float:left; width:50%;">
								<img src="includes/images/default-image.png" style="width:150px;margin:6px;">
							</div>
							<div style="float:left; width:50%;">
								<h2><s:property value="user.name"></s:property></h2>
								<span>Email Address : <s:property value="user.emailAddress"></s:property> </span>
								<br>
								<span>Contact Number : <s:property value="user.contactNumber"></s:property> </span>
							</div>
							</div>
						</div>
						
					<div class="panel booking panel-info" style="width:45%;float:right;margin:1px;">
						  <div class="booking panel-heading">
							<img src="includes/images/listofusers.png" class="box-icon">
							<span class="booking panel-title">List of Users</span>
							
						  </div>
						<div class="panel-body">
						<div class="table-responsive list-table">
							<table class="table table-striped table-bordered text-center" id="users-list">
							  <thead>
								<tr class="header_center">
								  <th class="tb-font-black"><input type="checkbox" /></th>
								  <th class="tb-font-black">First Name</th>
								  <th class="tb-font-black">Last Name</th>
								  <th class="tb-font-black">Company Name</th>
								  <th class="tb-font-black">User Name</th>
								  <th class="tb-font-black">User Type</th>
								</tr>
							  </thead>
							  <tbody>
							  <s:iterator value="users" var="userBean">
								<tr>
								  <td class="tb-font-black"><s:checkbox name="userNameParam"/></td>
								  <td class="tb-font-black"><s:property value="firstName"/></td>
								  <td class="tb-font-black" align="center"><s:property value="lastName"/></td>
								  <td class="tb-font-black"><s:property value="companyName"/></td>
								  <td class="tb-font-black"><s:property value="userName"/></td>
								  <td class="tb-font-black"><s:property value="userType"/></td>
								</tr>
								</s:iterator>
							  </tbody>
							</table>

							<span class="pull-right">
							    <!--<s:url var="loadEditUserUrl" action="loadEditUserPage">
								    <s:param name="userNameParam" value="userName"></s:param>
								</s:url>-->
								<a href="loadEditUserPage" class="icon-action-link">
									<img src="includes/images/edit-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
								</a>
								<a href="#delete-user" class="icon-action-link">
									<img src="includes/images/delete-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
								</a>
								<a href="loadAddUserPage" class="icon-action-link">
									<img src="includes/images/plus-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
								</a>
							</span>
						</div>
						</div>
					</div>
					</s:form>

					
				</div>
			</div>	
		</div>
		
		
		<!-- END OF MAIN BOX -->
		
	
		
		<!-- END OF THE MIDDLE -->
