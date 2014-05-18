<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="col-sm-3 col-md-2 sidebar">

  <ul class="nav nav-sidebar">

    <ul id="css3menu1" class="topmenu" style="padding:0;">
        <li class="topfirst"><a href="home2.html" class="icon-home"><span class="icon-font">Dashboard</span></a></li>
        <li class="topmenu "><a href="<s:url action='Booking' />" class="icon-booking"><span class="icon-font">Booking</span></a></li>
        <li class="topmenu"><a href="#" class="icon-operation"><span class="icon-font">Operations</span></a></li>
        <li class="topmenu"><a href="#" class="icon-document"><span class="icon-font">Documentations</span></a></li>
        <li class="topmenu"><a href="<s:url action='Vendor' />" class="icon-vendor"><span class="icon-font">Vendor</span></a>
            <ul>
                <li class="subfirst"><a href="vendor.html" class="icon-vendor"><span class="icon-font">Search Vendor</span></a></li>
                <li class="subfirst"><a href="vendor-addvendor.html" class="icon-vendor"><span class="icon-font">Add Vendor</span></a></li>
            </ul>
        </li>

        <li class="topmenu"><a href="Customer" class="icon-customer "><span class="icon-font">Customer</span></a>
            <ul>
                <li class="subfirst"><a href="customer.html" class="icon-customer"><span class="icon-font">Search Customer</span></a></li>
                <li class="subfirst"><a href="customer-add.html" class="icon-customer"><span class="icon-font">Add Customer</span></a></li>
            </ul>
        </li>
        <li class="topmenu activeaccounts"><a href="#" class="icon-account"><span class="icon-font">Accounts</span></a>
            <ul>
                <li class="subfirst"><a href="<s:url action='viewUsers' />" class="icon-user"><span class="icon-font">Users</span></a></li>
                <li class="subfirst"><a href="<s:url action='group' />" class="icon-group"><span class="icon-font">Groups</span></a></li>
                <li class="subfirst"><a href="permissions.html" class="icon-permission"><span class="icon-font">Permissions</span></a></li>
            </ul>
        </li>
        <li id="report" class="topmenu"><a class="icon-report"><span class="icon-font">Reports</span></a>
                   <ul>
                        <li class="subfirst"><a href="#" ><span class="icon-font">Truck</span></a></li>
                        <li class="subfirst"><a href="#"><span class="icon-font">Container</span></a></li>
                        <li class="subfirst"><a href="#"><span class="icon-font">Cargo</span></a></li>
                        <li class="subfirst"><a href="#" class="icon-group"><span class="icon-font">Customer Relation</span></a></li>
                        <li class="subfirst"><a href="#" ><span class="icon-font">Sales</span></a></li>
                    </ul>

        </li>
        <li class="topmenu"><a href="#" class="icon-finance"><span class="icon-font">Finance</span></a></li>
        <li class="topmenu"><a href="#" class="icon-help"><span class="icon-font">Help</span></a></li>

    </ul>

  </ul>

</div>