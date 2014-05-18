	<%@ taglib prefix="s" uri="/struts-tags" %>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

		<h1 class="page-header">Groups</h1>

		<!-- MAIN BOX -->

		<div class="row">
			<div class="col-md-12">

				<div class="panel panel-info">

				  <div class="panel-heading">
				  	<img src="includes/images/groups.png" class="box-icon">
					<span class="panel-title">Edit Group</span>
				  </div>

				  <div class="panel-body">

<div style="margin-left:90px">
        <s:form action="addnewgroup" method="post" cssClass="form-horizontal" theme="bootstrap">

            <div class="form-group">
                <label for="code" class="col-sm-2 control-label">Code:</label>
                <s:textfield cssStyle="margin-bottom:5px;margin-right:5px" name="code"  size="80"   />
             </div>

            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">Name:</label>
                <s:textfield cssStyle="margin-bottom:5px;margin-right:5px" name="name"   size="80"/>
            </div>

            <div class="form-group">
                <label for="desc" class="col-sm-2 control-label">Description:</label>
                <s:textfield cssStyle="margin-bottom:5px; margin-right:5px" name="desc" size="80"  />
            </div>
            <div style="margin-left:550px;">
            <s:submit name="SUBMIT" value="Save" />
             <s:submit name="submit" value="Cancel" />
            </div>
        </s:form>
</div>
				</div>


					<div class="panel panel-info" style="float: left; width: 50%">
						  <div class="panel-heading">
							<img src="includes/images/listofusers.png" class="box-icon">
							<span class="panel-title">Staff</span>

						  </div>
						<div class="panel-body">
						<div class="table-responsive list-table">
							<table class="table table-striped table-bordered text-center" id="customer-list">
							  <thead>
								<tr class="header_center">
								  <th class="tb-font-black"><input type="checkbox" /></th>
								  <th class="tb-font-black">User ID</th>
								  <th class="tb-font-black">User Name</th>
								  <th class="tb-font-black">Company</th>
								  <th class="tb-font-black">Action</th>
								</tr>
							  </thead>
							  <tbody>
								<tr>
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black">123</td>
								  <td class="tb-font-black" align="center">User1</td>
								  <td class="tb-font-black">Com1</td>
								  <td class="tb-font-black">
									<a href="#" class="icon-action-link">
										<img src="includes/images/delete-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
									</a>
									</td>
								</tr>
								<tr>
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black">456</td>
								  <td class="tb-font-black" align="center">User2</td>
								  <td class="tb-font-black">Com2</td>
								  <td class="tb-font-black">
										<a href="#" class="icon-action-link">
										<img src="includes/images/delete-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
									</a>
								  </td>
								</tr>
							  </tbody>
							</table>
							<span class="pull-right">
								<a href="#" class="icon-action-link">
									<img src="includes/images/delete-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
								</a>
							</span>
						</div>
						</div>
					</div>

					<div class="panel panel-info" style="width:49%; float:right;">
						  <div class="panel-heading">
							<img src="includes/images/listofusers.png" class="box-icon">
							<span class="panel-title">Users</span>

						  </div>
						<div class="panel-body">
						<div class="table-responsive list-table">
							<table class="table table-striped table-bordered text-center" id="customer-list">
							  <thead>
								<tr class="header_center">
								  <th class="tb-font-black"><input type="checkbox" /></th>
								  <th class="tb-font-black">User ID</th>
								  <th class="tb-font-black">User Name</th>
								  <th class="tb-font-black">Company</th>
								  <th class="tb-font-black">Action</th>
								</tr>
							  </thead>
							  <tbody>
								<tr>
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black">274</td>
								  <td class="tb-font-black" align="center">User5</td>
								  <td class="tb-font-black">Com5</td>
								  <td class="tb-font-black">
									<a href="#" class="icon-action-link">
										<img src="includes/images/plus-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
									</a>
									</td>
								</tr>
								<tr>
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black">890</td>
								  <td class="tb-font-black" align="center">User6</td>
								  <td class="tb-font-black">Com6</td>
								  <td class="tb-font-black">
										<a href="#" class="icon-action-link">
										<img src="includes/images/plus-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
									</a>
								  </td>
								</tr>
								<tr>
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black">110</td>
								  <td class="tb-font-black" align="center">User7</td>
								  <td class="tb-font-black">Com7</td>
								  <td class="tb-font-black">
									<a href="#" class="icon-action-link">
										<img src="includes/images/plus-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
									</a>								  </td>
								</tr>
								<tr>
								  <td class="tb-font-black"><input type="checkbox" /></td>
								  <td class="tb-font-black">002</td>
								  <td class="tb-font-black" align="center">User8</td>
								  <td class="tb-font-black">Com8</td>
								  <td class="tb-font-black">
									<a href="#" class="icon-action-link">
										<img src="includes/images/plus-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
									</a>
								  </td>
								</tr>
							  </tbody>
							</table>
							<div class="pull-right">
								<a href="#" class="icon-action-link">
									<img src="includes/images/plus-16.png" style="border-radius:6px; border:2px solid #707070; padding:2px;">
								</a>
							</div>
						</div>
						</div>
					</div>

