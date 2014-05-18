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
						<span class="booking panel-title">Add Customer - Items</span>
				</div>
				<div class="panel-body">
				<div class="table-responsive list-table">
				
				<s:form cssClass="form-horizontal" theme="bootstrap">
				  <div class="form-group">
					<label for="iname" class="col-sm-2 control-label" style="width:25%;">Item Name</label>
					<div class="col-sm-10" style="width:70%;">
						<s:textfield name="iname" cssClass="form-control" id="iname" placeholder="Item Name"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="icode" class="col-sm-2 control-label" style="width:25%;">Item Code</label>
					<div class="col-sm-10" style="width: 31%;">
						<s:textfield name="icode" cssClass="form-control" id="icode" placeholder="Item Code"/>
					</div>
					<label for="srp" style="float:left;margin-top: 0;margin-bottom: 0;padding-top: 7px;">SRP</label>
					<div class="col-sm-10" style="width: 34.5%;">
						<s:textfield name="srp" cssClass="form-control" id="srp" placeholder="SRP"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="length" class="col-sm-2 control-label" style="width:25%;">Length</label>
					<div class="col-sm-10" style="width: 31%;">
						<s:textfield name="length" cssClass="form-control" id="length" placeholder="Length"/>
					</div>
					<label for="width" style="float:left;margin-top: 0;margin-bottom: 0;padding-top: 7px;">Width</label>
					<div class="col-sm-10" style="width: 32.8%;">
					    <s:textfield name="width" cssClass="form-control" id="width" placeholder="Width"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="cquality" class="col-sm-2 control-label" style="width:25%;">Critical Quality</label>
					<div class="col-sm-10" style="width: 31%;">
						<s:textfield name="cquality" cssClass="form-control" id="cquality" placeholder="Critical Qualit"/>
					</div>
					<label for="height" style="float:left;margin-top: 0;margin-bottom: 0;padding-top: 7px;">Height</label>
					<div class="col-sm-10" style="width: 31.8%;">
					    <s:textfield name="height" cssClass="form-control" id="height" placeholder="Height"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="bprice" class="col-sm-2 control-label" style="width:25%;">Base Price</label>
					<div class="col-sm-10" style="width:70%;">
						<s:textfield name="bprice" cssClass="form-control" id="bprice" placeholder="Base Price"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="note" class="col-sm-2 control-label" style="width:25%;">Note</label>
					<div class="col-sm-10" style="width:70%;">
					    <s:textfield name="note" cssClass="form-control" id="note" placeholder="Note"/>
					</div>
				  </div>
				  <div class="form-group">
					<label for="desc" class="col-sm-2 control-label" style="width:25%;">Description</label>
					<div class="col-sm-10" style="width:70%;">
						<s:textarea name="desc" cssClass="form-control" id="desc" placeholder="Description of the Item"/>
					</div>
				  </div>
				  <span class="pull-right" style="margin-right:32px;">
					<a href="customer-add3.html" class="btn btn-default" id ="groups-btn" style="width:70px;">Back</a>
					<button href="#" class="btn btn-default" id="groups-btn" style="width:70px;">Save</button>
					<a href="customer-add5.html" class="btn btn-default" id="groups-btn" style="width:70px;">Next</a>
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
							<li><a href="customer-add.html" class="side-help"><img src="includes/images/1.png" class="img-sidehelp">Personal Information</a></li>
							<li><a href="customer-add2.html" class="side-help"><img src="includes/images/2.png" class="img-sidehelp">Contact Person</a></li>
							<li><a href="customer-add3.html" class="side-help"><img src="includes/images/3.png" class="img-sidehelp">Address</a></li>
							<li><a href="customer-add4.html" class="side-help"><img src="includes/images/4.png" class="img-sidehelp">Items</a></li>
							<li><a href="customer-add5.html" class="side-help"><img src="includes/images/5.png" class="img-sidehelp">Documents</a></li>
							<li><a href="customer-add7.html" class="side-help"><img src="includes/images/6.png" class="img-sidehelp">Rates</a></li>
							<li><a href="customer-add6.html" class="side-help"><img src="includes/images/7.png" class="img-sidehelp">Consignee Infomation</a></li>
						</ul>
					  </div>
				  </div>
			    </div>	
			</div>
		
		<!-- END SIDEBAR -->
		
		<!-- END OF THE MIDDLE -->
