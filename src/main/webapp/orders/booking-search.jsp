<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<sj:head compressed='true' jquerytheme="ui-darkness"/>
        
		<!-- MIDDLE -->
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        
		<h1 class="page-header">Search Booking Module</h1>
		
		<!-- EDIT HERE -->
		<div class="main-box" >
			<div class="col-md-12">
				<div class="panel booking panel-info">

					<div class="booking panel-heading">
						<img src="includes/images/search.png" class="box-icon">
						<span class="booking panel-title">Search Booking</span>
					</div>

					<div class="panel-body">

						<s:form action="BookingSearchValidate" theme="bootstrap" cssClass="form-horizontal" >

							  	<div class="form-group">

								    <label for="status" class="col-sm-2 control-label">Search by:</label>

								    <div class="col-sm-10">
								        <s:select name="status" id="status" list="status" cssClass="form-control" />
								    </div>
							    </div>

							    <div class="form-group">

							    	<label for="keyword" class="col-sm-2 control-label">Search:</label>

								    <div class="col-sm-10">
								      <s:textfield cssClass="form-control" id="keyword" name="keyword" placeholder="Keyword"></s:textfield>
								    </div>

							  	</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label ">Date From:</label>
									<div class="col-sm-4">
										<sj:datepicker id="datepicker1"
                                           displayFormat="mm-dd-yy"
                                           imageUrl="includes/images/datepicker.gif"
                                           imageTooltip="Select Your Birthdate"
                                           showButton="true"
                                           changeYear="true"
                                           changeMonth="true"
                                         />
									</div>
									<label class="col-sm-2 control-label">Date To:</label>
									<div class="col-sm-4">
										<sj:datepicker id="datepicker2"
                                           displayFormat="mm-dd-yy"
                                           imageUrl="includes/images/datepicker.gif"
                                           imageTooltip="Select Your Birthdate"
                                           showButton="true"
                                           changeYear="true"
                                           changeMonth="true"
                                         />
									</div>
								</div>

						    	<div class="form-group">

								    <label for="inputCHECKBOX"class="col-sm-2 control-label">Filter by:</label>

								    <div class="col-sm-10">
								      	<label class="checkbox-inline" id="inputCHECKBOX">
										  <s:checkbox name="inlineCheckbox1"/> Company Name
										</label>
										<label class="checkbox-inline">
										  <s:checkbox name="inlineCheckbox2"/> Shipper
										</label>
										<label class="checkbox-inline">	
										  <s:checkbox name="inlineCheckbox3"/> Booking Number
										</label>
										<label class="checkbox-inline">
										  <s:checkbox name="inlineCheckbox4"/> Service Requirement
										</label>
										<label class="checkbox-inline">
										  <s:checkbox name="inlineCheckbox5"/> Service Mode
										</label>																
								    </div>

							  	</div>
						
						<div>
							<span class="pull-right">
							    <s:submit name="submit" cssStyle="float:right;margin:6px 20px 6px 0px;" cssClass="btn btn-default" value="Search" />
								<button type="cancel" class="btn btn-default" style="float:right;margin:6px 0px 6px 0px;"   >Cancel</button>
							</span>
						</div>

						</s:form>

					</div>

					

				</div>
				
			</div>


		</div>

		

		<!-- SIDBAR GOES HERE -->
		<div class="sidebar-box">
		  <div class="panel booking panel-info">
			  <div class="booking panel-heading">
			  <img src="includes/images/calendar.png" class="box-icon">
				<span class="booking panel-title">Calendar</span>
				
			  </div>
			  <div class="panel-body">
				<div class="table-responsive list-table">
			
				  </div>
			  </div>
		  </div>
	    </div>	
		<!-- END OF EDIT -->
		
        </div>
		
		<!-- END OF THE MIDDLE -->
