<%@ taglib prefix="s" uri="/struts-tags" %>
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        
		<h1 class="page-header">Customer Profile</h1>
		
		<!-- MAIN BOX -->
		
			<div class="row">			
				<div class="col-md-12">
					
					<div class="panel booking panel-info">
					  <div class="booking panel-heading">
						<img src="includes/images/listofusers.png" class="box-icon">
						<span class="booking panel-title">List of Customers</span>
						
					  </div>
					  <div class="panel-body">
						<div class="table-responsive list-table">
							<table class="table table-striped table-bordered text-center" id="customer-list">
							  <thead>
								<tr class="header_center">
								  <th class="tb-font-black"><input type="checkbox" /></th>
								  <th class="tb-font-black">Company Code</th>
								  <th class="tb-font-black">Company Name</th>
								  <th class="tb-font-black">Email Address</th>
								  <th class="tb-font-black">Contact Number</th>
								  <th class="tb-font-black">Action</th>
								</tr>
							  </thead>
							  <tbody>
                              <s:iterator value="customerList" var="customer">
								<tr>
                                    <td class="tb-font-black"><input type="checkbox" /></td>
                                    <td class="tb-font-black"><s:property value="c_code" /></td>
                                    <td class="tb-font-black"><s:property value="c_name" /></td>
                                    <td class="tb-font-black"><s:property value="c_email" /></td>
                                    <td class="tb-font-black"><s:property value="c_contact" /></td>
                                    <td>
                                        <a href="customer-edit.html" class="icon-action-link">
                                            <img src="includes/images/edit-user.png" class="icon-action circ-icon">
                                        </a>
                                        <a href="" class="icon-action-link"><img src="includes/images/remove-user.png" class="icon-action circ-icon"> </a>
                                        <a href="customer-info.html" class="icon-action-link">
                                            <img src="includes/images/info-b.png" class="icon-action circ-icon">
                                        </a>
                                    </td>
								</tr>
                              </s:iterator>
							  </tbody>
							</table>
						  </div>
					  </div>
					  <div class="panel-footer">
							<ul class="pagination">
							  <li><a href="#">&laquo;</a></li>
							  <li><a href="#">1</a></li>
							  <li><a href="#">2</a></li>
							  <li><a href="#">3</a></li>
							  <li><a href="#">4</a></li>
							  <li><a href="#">5</a></li>
							  <li><a href="#">&raquo;</a></li>
							</ul>
							
							<span class="pull-right">
							<a href="customer-add.html" class="icon-action-link"><img src="includes/images/add-user.png" class="icon-action circ-icon"> </a>
							</span>
							
						  </div>
						  </div>
					
				</div>
			</div>	
		</div>