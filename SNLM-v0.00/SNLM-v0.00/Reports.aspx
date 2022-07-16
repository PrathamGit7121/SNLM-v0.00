<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="SNLM_v0._00.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box" style="width: auto;">
                    <div class="right-side">

                        <!-------------------------------------
              form start here 
        -------------------------------------->
                        
                        <div class="container">
                            <div class="card border-primary">
                                <div class="card-header border-primary">
                                    <h5>REPORTS</h5>
                                </div>
                                <div class="card-body">

                                    <!-------------------------------------
            Select date (From date 2 to date)
        -------------------------------------->

                                    <div class="form-row md-12">
                                        <div class="form-group col-md-6">
                                            <!--From Date-->
                                            <asp:Label ID="RepFromDateLabel" Text="From Date" runat="server"></asp:Label>
                                            <asp:TextBox ID="RepFromDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <!--To Date-->
                                            <asp:Label ID="RepToDateLabel" Text="To Date" runat="server"></asp:Label>
                                            <asp:TextBox ID="RepToDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-------------------------------------
            Select dropdown (select Report Type)
        -------------------------------------->

                                    <div class="form-row md-12">
                                        <div class="form-group">
                                            <!--Select report type dropdown-->
                                            <asp:Label ID="BillRoomNoLabel" for="BillDropRoomNo" runat="server" Text="Report Type"></asp:Label>
                                            <asp:DropDownList ID="BillDropRoomNo" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose Report</asp:ListItem>
                                                <asp:ListItem>Total Report</asp:ListItem>
                                                <asp:ListItem>Online/offline report</asp:ListItem>
                                                <asp:ListItem>remaining report</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <!-------------------------------------
            Report Buttons (Search & Export to Excel)
        -------------------------------------->

                                <div class="card-footer border-primary text-right">
                                    <asp:Button ID="RepExport" runat="server" Text="Export To Excel" CssClass="btn btn-outline-success" />
                                    <asp:Button ID="RepSearch" runat="server" Text="SEARCH" CssClass="btn btn-outline-primary" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="sales-boxes" style="width: auto;">
                <div class="recent-sales box">
                    <div class="card border-primary">
                        <div class="card-header">
                            <h3>USER DETAILS </h3>
                        </div>
                        <div class="card-body border-primary">
                            <asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="RefId" HeaderText="Room No." SortExpression="RefId" />
                                    <asp:BoundField DataField="CustName" HeaderText="Gest Name" SortExpression="CustName" />
                                    <asp:BoundField DataField="OfflinePmt" HeaderText="Offline Payment" SortExpression="OfflinePmt" />
                                    <asp:BoundField DataField="OnlinePmt" HeaderText="Online Payment" SortExpression="OnlinePmt" />
                                    <asp:BoundField DataField="BankName" HeaderText="BaBank Name" SortExpression="BankName" />
                                    <asp:BoundField DataField="BillAmount" HeaderText="Total Bill" SortExpression="BillAmount" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNLMConnectionString %>" SelectCommand="SELECT [RefId], [CustName], [OfflinePmt], [OnlinePmt], [BankName], [BillAmount] FROM [PaymentDetailss]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div><br />
        </div>


    </section>

</asp:Content>
