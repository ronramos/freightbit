<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!-- MIDDLE -->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

		<h1 class="page-header">Users</h1>

		<!-- EDIT HERE -->

		<!-- MAIN BOX -->

		<div class="row">
				<div class="col-md-12">
					<div class="panel booking panel-info">
						<div class="booking panel-heading">
								<img src="includes/images/account.png" class="box-icon">
								<span class="booking panel-title">Edit Information</span>
							</div>

						<div class="panel-body">
							<div class="table-responsive list-table">

								<s:form action="editUser" theme="bootstrap" cssClass="form-horizontal" method="post">
									<div class="form-group">
										<label for="uType" class ="col-sm-2 control-label" id ="users-add-label"> User Type:</label>
											<div class="col-sm-10">
											<s:select name="user.userType" id="uType" list="userTypeList" listKey="key" listValue="value" cssClass="form-control" value="user.userType" />
											</div>
									</div>

									<div class="form-group">
										<label for="uCompanyName" class ="col-sm-2 control-label" id ="users-add-label">Company:</label>
											<div class="col-sm-10">
											<s:textfield name="user.companyName" cssClass="form-control" placeholder="Company Name"/>
											</div>
									</div>

									<div class="form-group">
										<label for="firstName" class ="col-sm-2 control-label" id ="users-add-label">First Name:</label>
										<div class="col-sm-10">
										<s:textfield name="user.firstName" id="firstName" cssClass="form-control" placeholder="First Name"/>
										</div>
									</div>					
									
									<div class="form-group">
										<label for="LastName" class ="col-sm-2 control-label" id ="users-add-label">Last Name:</label>
										<div class="col-sm-10">
										<s:textfield name="user.lastName" id="lastName" cssClass="form-control" placeholder="Last Name"/>
										</div>
									</div>

								   <div class="form-group">
										<label for="uUserName" class ="col-sm-2 control-label" id ="users-add-label">User Name:</label>
										<div class="col-sm-10">
										<s:textfield name="user.userName" id="uUserName" cssClass="form-control" placeholder="User Name"/>
										</div>
									</div>

								   <div class="form-group">
										<label for="uPassword" class ="col-sm-2 control-label" id ="users-add-label">Password:</label>
										<div class="col-sm-10">
										<s:textfield name="user.password" id="uPassword" cssClass="form-control" placeholder="Password"/>
										</div>
									</div>

								   <div class="form-group">
										<label for="uTitle" class ="col-sm-2 control-label" id ="users-add-label">Title:</label>
										<div class="col-sm-10">
										<s:textfield name="user.title" id="uTitle" cssClass="form-control" placeholder="Title"/>
										</div>
									</div>

									<div class="form-group">
											<label for="uEmailAddress" class ="col-sm-2 control-label" id ="users-add-label">Email Address:</label>
											<div class="col-sm-10">
											<s:textfield name="user.emailAddress" id="uEmailAddress" cssClass="form-control" placeholder="Email Address"/>
											</div>
									</div>

								   <div class="form-group">
										<label for="uContactNumber" class ="col-sm-2 control-label" id ="users-add-label">Contact Number:</label>
										<div class="col-sm-10">
										<s:textfield name="user.contactNumber" id="uContactNumber" cssClass="form-control"  placeholder="Contact Number"/>
										</div>
									</div>

								   <div class="form-group">
										<label for="uStatus" class ="col-sm-2 control-label" id ="users-add-label">Status:</label>
										<div class="col-sm-10">
										<!--<s:textfield name="user.status" id="uStatus" cssClass="form-control" placeholder="Status"/>-->
										<s:select name="user.status" id="uStatus" list="statusList" listKey="key" listValue="value" cssClass="form-control" value="user.status" />
										</div>
									</div>
									
									<s:hidden name="user.userId" value="%{user.userId}"/>

							</div>
						</div>

            <span class="pull-right">
			  <a href = "viewUsers" class="btn btn-default" id = "users-add-btn" style="margin:20px 0px 6px 6px;">Cancel</a>
			  <s:submit cssClass="btn btn-default" name="submit" value="Save" cssStyle="margin:20px 0px 6px 6px;" />
            </span>
            </s:form>


						  </div>
					  </div>
				  </div>
				</div>


		<!-- END OF MAIN BOX -->



		<!-- END OF THE MIDDLE -->