<%@ taglib prefix="s" uri="/struts-tags" %>

    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

        <h1 class="page-header">Vendor Module</h1>

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-info">

                    <div class="panel-heading">

                        <img src="includes/images/listofusers.png" class="box-icon" /> <span
                            class="panel-title">List of Vendors</span>

                    </div>

                    <div class="panel-body">
                        <div class="table-responsive list-table">
                            <table class="table table-striped table-bordered text-center">
                                <thead>
                                    <tr class="header_center">
                                        <th class="tb-font-black"><input type="checkbox" /></th>
                                        <th class="tb-font-black">Company Code</th>
                                        <th class="tb-font-black">Company Name</th>
                                        <th class="tb-font-black">Type</th>
                                        <th class="tb-font-black">Class</th>
                                        <th class="tb-font-black">Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                <s:iterator value="vendorList" var="vendor">

                                    <tr>
                                        <%--<input type="checkbox" />--%>

                                        <td class="tb-font-black"><s:checkbox name="a" theme="simple" /></td>
                                        <td class="tb-font-black"><s:property value="v_code" /></td>
                                        <td class="tb-font-black"><s:property value="v_name" /></td>
                                        <td class="tb-font-black"><s:property value="v_type" /></td>
                                        <td class="tb-font-black"><s:property value="v_class" /></td>
                                        <td class="tb-font-black"><a
                                                href="vendor-addvendor" class="icon-action-link"
                                                rel="tooltip" title="Edit this vendor"><img
                                                src="includes/images/edit-user.png" class="icon-action circ-icon">
                                        </a> <a href="#myModal" data-toggle="modal"
                                                class="icon-action-link" rel="tooltip"
                                                title="Delete this vendor"><img
                                                src="includes/images/remove-user.png" class="icon-action circ-icon">
                                        </a> <a href="vendor-list-info" class="icon-action-link"
                                                rel="tooltip" title="View this vendor"><img
                                                src="includes/images/info-b.png" class="icon-action circ-icon">
                                        </a></td>
                                    </tr>
                                </s:iterator>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="panel-footer">
                        <span class="pull-right"> <a href="vendor-addvendor"
                            class="icon-action-link" rel="tooltip" title="Add Vendor"><img
                                src="includes/images/add-user.png" class="icon-action circ-icon">
                        </a>
                        </span>

                        <ul class="pagination">
                            <li class="disabled"><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li class="disabled"><a href="#">&raquo;</a></li>
                        </ul>

                    </div>

                </div>
            </div>
        </div>

    </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
                </div>
                <div class="modal-body">
                    <div style="text-align: center;">
                        <span>Do you really want to delete <em>'SRI,
                                Solutions Resource, info@solutionsresource.com, 123-4567'</em> ?
                            This action is irreversible.
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save
                        changes</button>
                </div>
            </div>
        </div>
    </div>