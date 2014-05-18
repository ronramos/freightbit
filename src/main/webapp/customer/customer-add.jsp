<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>

        <%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!-- MIDDLE -->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

		<h1 class="page-header">Customer Profile</h1>

		<!-- MAIN BOX -->

		<div class="main-box">
			<div class="panel booking panel-info">
				<div class="booking panel-heading">
					  <img src="includes/images/add-user.png" class="box-icon">
						<span class="booking panel-title">Add Customer - Personal Information</span>
				</div>
				<div class="panel-body">
				<div class="table-responsive list-table">

				 <s:form cssClass="form-horizontal" theme="bootstrap" action="Customer-Add2">
				  <div class="form-group">
					<label for="cname" class="col-sm-2 control-label" style="width:25%;">Company Name</label>
					<div class="col-sm-10" style="width:70%;">
					    <s:textfield name="cname" cssClass="form-control" id="cname" placeholder="Company Name"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="ccode" class="col-sm-2 control-label" style="width:25%;">Company Code</label>
					<div class="col-sm-10" style="width:70%;">
					  <s:textfield name="ccode" cssClass="form-control" id="ccode" placeholder="3 Letters Only"/>
					</div>
				  </div>

				  <div class="form-group">
					<label for="ctype" class="col-sm-2 control-label" style="width:25%;">Customer Type</label>
					<div class="col-sm-10" style="width:70%;">
					  <s:select name="ctype" list="customerType" cssClass="form-control"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="cnum" class="col-sm-2 control-label" style="width:25%;">Contact Number</label>
					<div class="col-sm-10" style="width:70%;">
					  <s:textfield name="cnum" cssClass="form-control" id="cnum" placeholder="Contact Number"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="eadd" class="col-sm-2 control-label" style="width:25%;">Email Address</label>
					<div class="col-sm-10" style="width:70%;">
					  <s:textfield name="eadd" cssClass="form-control" id="eadd" placeholder="Email Address"/>
					</div>
				  </div>

				  <span class="pull-right" style="margin-right:32px;">
					<a href="customer-list.jsp" class="btn btn-default" id ="groups-btn">Cancel</a>
					<s:submit name="submit" cssClass="btn btn-default" value="Next" />
				  </span>
				</s:form>

				</div>
				</div>
			</div>
		</div>



		<!-- END OF MAIN BOX -->

		<!-- SIDEBAR -->

		<div class="sidebar-box">
				  <div class="panel booking panel-info">
						<div class="booking panel-heading">
							<img src="includes/images/calendar.png" class="box-icon">
							<span class="booking panel-title">Process</span>
						</div>

					  <div class="panel-body">

							<ul class="nav">
							<li><a href="customer-add.jsp" class="side-help"><img src="includes/images/1.png" class="img-sidehelp">Personal Information</a></li>
							<li><a href="customer-add2.jsp" class="side-help"><img src="includes/images/2.png" class="img-sidehelp">Contact Person</a></li>
							<li><a href="customer-add3.jsp" class="side-help"><img src="includes/images/3.png" class="img-sidehelp">Address</a></li>
							<li><a href="customer-add4.jsp" class="side-help"><img src="includes/images/4.png" class="img-sidehelp">Items</a></li>
							<li><a href="customer-add5.jsp" class="side-help"><img src="includes/images/5.png" class="img-sidehelp">Documents</a></li>
							<li><a href="customer-add7.jsp" class="side-help"><img src="includes/images/6.png" class="img-sidehelp">Rates</a></li>
							<li><a href="customer-add6.jsp" class="side-help"><img src="includes/images/7.png" class="img-sidehelp">Consignee Infomation</a></li>
							</ul>

					  </div>
				  </div>
			    </div>
			</div>

		<!-- END SIDEBAR -->

		<!-- END OF THE MIDDLE -->