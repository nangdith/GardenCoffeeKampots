﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GardenCoffee.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-inner-content">
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">

                        <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-muffin bg-c-green card1-icon"></i>
                                    <span class="text-c-green f-m-600">Categories</span>
                                    <h4><% Response.Write(Session["category"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Category.aspx"><i class="text-c-green f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-fast-food bg-c-blue card1-icon"></i>
                                    <span class="text-c-blue f-m-600">Products</span>
                                    <h4><% Response.Write(Session["product"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Product.aspx"><i class="text-c-blue f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-spoon-and-fork bg-c-pink card1-icon"></i>
                                    <span class="text-c-pink f-m-600">Total Orders</span>
                                    <h4><% Response.Write(Session["order"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="OrderStatus.aspx"><i class="text-c-pink f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-fast-delivery bg-c-yellow card1-icon"></i>
                                    <span class="text-c-yellow f-m-600">Delivery Items</span>
                                    <h4><% Response.Write(Session["delivered"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="OrderStatus.aspx"><i class="text-c-yellow f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-delivery-time bg-c-pink card1-icon"></i>
                                    <span class="text-c-pink f-m-600">Pending Items</span>
                                    <h4><% Response.Write(Session["pending"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="OrderStatus.aspx"><i class="text-c-pink f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-users-social bg-c-green card1-icon"></i>
                                    <span class="text-c-green f-m-600">Products</span>
                                    <h4><% Response.Write(Session["user"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="User.aspx"><i class="text-c-green f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                         <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-money-bag bg-c-yellow card1-icon"></i>
                                    <span class="text-c-yellow f-m-600">Sold Amount</span>
                                    <h4><% Response.Write(Session["soldAmount"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Report.aspx"><i class="text-c-yellow f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xl-3">
                            <div class="card widget-card-1">
                                <div class="card-block-small">
                                    <i class="icofont icofont-support-faq bg-c-blue card1-icon"></i>
                                    <span class="text-c-blue f-m-600">Feedbacks</span>
                                    <h4><% Response.Write(Session["contact"]); %></h4>
                                    <div>
                                        <span class="f-left m-t-10 text-muted">
                                            <a href="Contacts.aspx"><i class="text-c-blue f-16 icofont icofont-eye-alt m-r-10"></i>View Details</a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
