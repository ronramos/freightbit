<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>



<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

    <h1 class="booking page-header">
    Booking
    </h1>

    <div class="row">
        <div class="col-md-12">
            <div class="panel booking panel-info">
                <div class="booking panel-heading">
                    <img src="includes/images/booking.png" class="box-icon">
                    <span class="booking panel-title">List of Bookings<span class="booking badge pull-right">10</span></span>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered text-center">
                            <thead>
                                <tr class="header_center active">
                                  <th class="tb-font-black"><input type="checkbox"></th>
                                  <th class="tb-font-black">Booking Date</th>
                                  <th class="tb-font-black">Booking Number</th>
                                  <th class="tb-font-black">Company</th>
                                  <th class="tb-font-black">Origin</th>
                                  <th class="tb-font-black">Destination</th>
                                  <th class="tb-font-black">Status</th>
                                  <th class="tb-font-black">Action</th>
                                </tr>
                            </thead>
                        <tbody>

                            <s:iterator value="bookings" var="booking">
                                <tr>
                                  <td class="tb-font-black"><input type="checkbox"></td>
                                  <td class="tb-font-black"><s:property value="#booking.bookingDate"/> </td>
                                  <td class="tb-font-black"><s:property value="bookingid"/> </td>
                                  <td class="tb-font-black"><s:property value="#booking.bookingCompany"/></td>
                                  <td class="tb-font-black"><s:property value="#booking.origin"/></td>
                                  <td class="tb-font-black"><s:property value="#booking.destination"/></td>
                                  <td class="tb-font-black"><s:property value="#booking.status"/></td>

                                    <td class="tb-font-black">
                                      <a href="#edit-booking" data-toggle="modal" data-controls-modal="#edit-booking" data-backdrop="static" data-keyboard="false" class="icon-action-link edit-booking"><img src="includes/images/edit-booking.png" class="icon-action circ-icon" title="Edit Booking"> </a>
                                      <a href="#delete-booking" data-toggle="modal" data-controls-modal="#delete-booking" data-backdrop="static" data-keyboard="false" class="icon-action-link"><img src="includes/images/delete-booking.png" class="icon-action circ-icon" title="Delete Booking"> </a>
                                      <a href="Booking-Info" class="icon-action-link"><img src="includes/images/info-booking.png" class="icon-action circ-icon" data-toggle="tooltip" data-placement="top" title="Booking Info"> </a>
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
                      <li class="active"><a href="#">1</a></li>
                      <li></li>
                      <li><a >&raquo;</a></li>
                    </ul>

                    <span class="pull-right">
                        <button type="button" class="btn btn-info new-booking" data-toggle="modal" data-target="#booking-search" onclick="location.href='Booking-Search'">
                              Search Booking
                        </button>
                        <button type="button" class="btn btn-info new-booking" data-toggle="modal" data-target="#booking" data-controls-modal="#booking" data-backdrop="static" data-keyboard="false">
                              New Booking
                        </button>
                    </span>
                </div>
            </div>
        </div>

    </div>

</div>

