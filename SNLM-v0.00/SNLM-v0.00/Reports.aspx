<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="SNLM_v0._00.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box" style="width:auto;">
                    <div class="right-side">

        <!-------------------------------------
              form start here 
        -------------------------------------->

                        <div class="card">
                            <div class="card-header">
                                <h5>REPORTS</h5>
                            </div>
                            <div class="card-body">

                                
        <!-------------------------------------
            Row One (room No)
        -------------------------------------->

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <div class="form-group"><!--Room No-->
                                            <asp:Label ID="BillRoomNoLabel" for="BillDropRoomNo" runat="server" Text="Room No."></asp:Label>
                                            <asp:DropDownList ID="BillDropRoomNo" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose Room</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>


        <!-------------------------------------
             Row Two (Name, contact, address, nationality, occupation)
        -------------------------------------->

                                <div class="form-row">
                                    <div class="form-group col-md-6"><!--Full Name-->
                                        <asp:Label for="BillFullName" ID="FullNameLabe" Text="Full Name" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillFullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Offline Bill-->
                                        <asp:Label for="BillOfflineID" ID="BillOfflineLabel" Text="Offline Amount" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillOfflineID" runat="server" CssClass="form-control" placeholder="Rs."></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Online Bill-->
                                        <asp:Label for="BillOnlineID" ID="BillOnlineLabel" Text="Online Amount" runat="server"></asp:Label>
                                        <asp:TextBox ID="BillOnlineID" runat="server" CssClass="form-control" placeholder="Rs."></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Bank Name-->
                                        <asp:Label ID="BillBankNameLabel" runat="server" Text="Bank Name"></asp:Label>
                                        <asp:DropDownList ID="BillBankName" runat="server" CssClass="form-control">
                                            <asp:ListItem>choose Bank</asp:ListItem>
                                            <asp:ListItem>Bank Of India</asp:ListItem>
                                            <asp:ListItem>Bank of Maharastra</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group col-md-6"><!--Total Bill-->
                                        <asp:Label ID="BillTotalLabel" Text="TOtal Amount :" runat="server"></asp:Label>
                                        <h3>
                                            <asp:Label ID="BillTotalID" runat="server" Text=""></asp:Label>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-right">
                                    <a href="#Preview"><!--Preview Button-->
                                        <div class="btn btn-outline-primary" id="PreviewButton" onclick="openPopUp()">
                                            Preview
                                        </div>
                                    </a>
                            </div>
                        </div>
                    </div>
            </div>

        </div>
    </section>

</asp:Content>
