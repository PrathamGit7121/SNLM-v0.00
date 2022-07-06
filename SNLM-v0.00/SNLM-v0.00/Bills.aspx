<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Bills.aspx.cs" Inherits="SNLM_v0._00.Bills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box" style="width:auto;">
                    <div class="right-side">

                        <!--  form start here  -->

                        <div class="card">
                            <div class="card-header">
                                <h5>GEST Bill</h5>
                            </div>
                            <div class="card-body">


                                <!-- Row One (room No) -->

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <div class="form-group">
                                            <asp:Label ID="BillRoomNoLabel" for="BillDropRoomNo" runat="server" Text="Room No."></asp:Label>
                                            <asp:DropDownList ID="BillDropRoomNo" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose Room</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>


                                <!-- Row Two (Name, contact, address, nationality, occupation) -->

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <asp:Label for="BillFullName" ID="FullNameLabe" Text="Full Name" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label for="ContactNoID" ID="BillOrderLabel" Text="Order" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillOrderID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label for="BillOfflineID" ID="BillOfflineLabel" Text="Offline Amount" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillOfflineID" runat="server" CssClass="form-control" placeholder="Rs." OnTextChanged="BillOfflineID_TextChanged"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label for="BillOnlineID" ID="BillOnlineLabel" Text="Online Amount" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillOnlineID" runat="server" CssClass="form-control" placeholder="Rs." OnTextChanged="BillOnlineID_TextChanged"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="BillTotalLabel" Text="TOtal Amount :" runat="server"></asp:Label>
                                        <h3><asp:Label ID="BillTotalID" runat="server" Text=""></asp:Label></h3>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-right">
                                    <a href="#Preview">
                                        <div class="btn btn-outline-primary" id="PreviewButton" onclick="openPopUp()">
                                            Preview
                                        </div>
                                    </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            

        <!-------------------------------------
            Preview Tab
        -------------------------------------->

            <div class="modal-container" id="modal_container">
                <div class="container">
                    <div class="container">
                        <div class="card text">
                            <div class="card-header">
                                <h4>Preview</h4>
                            </div>

                            <!-------------------------------------
            Preview content
        -------------------------------------->

                            <div class="card-body">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="preRoomNoLabel" Text="Room No :" runat="server"></asp:Label>
                                        <asp:Label ID="PreRoomNo" Text="" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="PreFullNameLabel" Text="Gest Name :" runat="server"></asp:Label>
                                        <asp:Label ID="PreFullName" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="PreOrderLabel" Text="Order :" runat="server"></asp:Label>
                                        <asp:Label ID="PreOrder" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="PreOfflineLabel" Text="Offline Payment :" runat="server"></asp:Label>
                                        <asp:Label ID="PreOffline" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="PreOnlineLabel" Text="Online Payment :" runat="server"></asp:Label>
                                        <asp:Label ID="PreOnline" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="PreTotalLabel" Text="Total Amount :" runat="server"></asp:Label>
                                        <asp:Label ID="Label2" Text="" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>

                            <!-------------------------------------
            Preview Buttons
        -------------------------------------->

                            <div class="card-footer text-right">
                                <asp:Button ID="SAVEButton" runat="server" Text="SAVE" CssClass="btn btn-outline-success" />
                                <a href="#body">
                                    <div class="btn btn-outline-primary" onclick="closePopUp()">Cancel</div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sales-boxes">
                <div class="recent-sales box">
                    <div class="title">Recent Sales</div>
                    <div class="sales-details">
                        <ul class="details">
                            <li class="topic">Date</li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Customer</li>
                            <li><a href="#">Alex Doe</a></li>
                            <li><a href="#">David Mart</a></li>
                            <li><a href="#">Roe Parter</a></li>
                            <li><a href="#">Diana Penty</a></li>
                            <li><a href="#">Martin Paw</a></li>
                            <li><a href="#">Doe Alex</a></li>
                            <li><a href="#">Aiana Lexa</a></li>
                            <li><a href="#">Rexel Mags</a></li>
                            <li><a href="#">Tiana Loths</a></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Sales</li>
                            <li><a href="#">Delivered</a></li>
                            <li><a href="#">Pending</a></li>
                            <li><a href="#">Returned</a></li>
                            <li><a href="#">Delivered</a></li>
                            <li><a href="#">Pending</a></li>
                            <li><a href="#">Returned</a></li>
                            <li><a href="#">Delivered</a></li>
                            <li><a href="#">Pending</a></li>
                            <li><a href="#">Delivered</a></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Total</li>
                            <li><a href="#">$204.98</a></li>
                            <li><a href="#">$24.55</a></li>
                            <li><a href="#">$25.88</a></li>
                            <li><a href="#">$170.66</a></li>
                            <li><a href="#">$56.56</a></li>
                            <li><a href="#">$44.95</a></li>
                            <li><a href="#">$67.33</a></li>
                            <li><a href="#">$23.53</a></li>
                            <li><a href="#">$46.52</a></li>
                        </ul>
                    </div>
                    <div class="button">
                        <a href="#">See All</a>
                    </div>
                </div>
                <div class="top-sales box">
                    <div class="title">Current Gests</div>
                    <ul class="top-sales-details">
                        <li>
                            <a href="#">
                                <span class="product"><b>Gest Names</b></span>
                            </a>
                            <span class="price"><b>Rm. No.</b></span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Gest Name Room 1</span>
                            </a>
                            <span class="price">01</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Gest Name Room 2</span>
                            </a>
                            <span class="price">02</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Gest Name Room 3</span>
                            </a>
                            <span class="price">03</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Gest Name Room 4</span>
                            </a>
                            <span class="price">04</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Gest Name Room 5</span>
                            </a>
                            <span class="price">05</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
