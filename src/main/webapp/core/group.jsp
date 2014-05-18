<%@ taglib prefix="s" uri="/struts-tags" %>

		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

		<h1 class="page-header">Groups</h1>

		<!-- MAIN BOX -->

		<div class="row">
			<div class="col-md-12">
				  <div class="panel panel-info">
					  <div class="panel-heading">
					  <img src="includes/images/listofusers.png" class="box-icon">
						<span class="panel-title">List of Groups</span>
					  </div>
					  <div class="panel-body">
						<div class="table-responsive list-table">
							<table class="table table-striped table-bordered text-center" id ="groups-list">
							  <thead>
								<tr class="header_center">
								  <th class="tb-font-black"><input type="checkbox" /></th>
								  <th class="tb-font-black">Group Code</th>
								  <th class="tb-font-black">Group Name</th>
								  <th class="tb-font-black">No. of Members</th>
								  <th class="tb-font-black">Action</th>
								</tr>
							  </thead>
							  <tbody>
								<tr>
                                    <s:iterator value="Groups" var="grouplist">
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black"><s:property value="#grouplist.group_code"/></td>
								  <td class="tb-font-black"><s:property value="#grouplist.group_name"/></td>
								  <td class="tb-font-black"><s:property value="#grouplist.No_of_Members  "/></td>
								  <td class="tb-font-black">
									<a href="<s:url action='edit-group'/>" class="icon-action-link"><img src="includes/images/edit-user.png" class="icon-action circ-icon"> </a>
									<a href="#myModal" data-toggle="modal" class="icon-action-link" rel="tooltip" title="Delete this user"><img src="includes/images/remove-user.png" class="icon-action circ-icon"> </a>
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
							<a href="<s:url action='add-group'/>" class="icon-action-link"><img src="includes/images/add-user.png" class="icon-action circ-icon"> </a>
							</span>

						  </div>
					  </div>
				  </div>
			    </div>

			</div>
