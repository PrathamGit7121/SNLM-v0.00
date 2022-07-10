<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="GestDetails.aspx.cs" Inherits="SNLM_v0._00.GestDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box" style="width: auto;">
                    <div class="right-side">

                        <!--  form start here  -->

                        <div class="card">
                            <div class="card-header">
                                <h5>GEST DETAILS</h5>
                            </div>
                            <div class="card-body">


                                <!-- Row One (room No) -->

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <div class="form-group"><!--Room No.-->
                                            <asp:Label ID="Label1" for="DropRoomNo" runat="server" Text="Room No."></asp:Label>
                                            <asp:DropDownList ID="DropRoomNo" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose one</asp:ListItem>
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
                                    <div class="form-group col-md-6"><!--Full Name-->
                                        <asp:Label for="FullName" ID="FullNameLabe" Text="Full Name" runat="server"></asp:Label>
                                        <asp:TextBox ID="FullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Contact Number-->
                                        <asp:Label for="ContactNoID" ID="ContactNoLabel" Text="Mobile/Phone No." runat="server"></asp:Label>
                                        <asp:TextBox ID="ContactNoid" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12"><!--Address-->
                                        <asp:Label for="AddressID" ID="AddressLabel" Text="Address" runat="server"></asp:Label>
                                        <asp:TextBox ID="AddressID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Nationality-->
                                        <asp:Label for="NationalityID" ID="NationalityLabel" Text="Nationality" runat="server"></asp:Label>
                                        <asp:TextBox ID="NationalityID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Occupation-->
                                        <asp:Label for="OccupationID" ID="OccupationLabel" Text="Servie or Bussiness" runat="server"></asp:Label>
                                        <asp:TextBox ID="OccupationID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>


                                <!-- Row Three -->

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <div class="form-group"><!--No of Persons-->
                                            <asp:Label ID="DropNoOfPersonLabel" for="DropNoOfPersonID" runat="server" Text="No Of Person"></asp:Label>
                                            <asp:DropDownList ID="DropNoOfPersonID" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropNoOfPersonID_Changed">
                                                <asp:ListItem Text="1" Value="One"></asp:ListItem>
                                                <asp:ListItem Text="2" Value="Two"></asp:ListItem>
                                                <asp:ListItem Text="3" Value="Three"></asp:ListItem>
                                                <asp:ListItem Text="4" Value="Four"></asp:ListItem>
                                                <asp:ListItem Text="5" Value="Five"></asp:ListItem>
                                                <asp:ListItem Text="6" Value="Six"></asp:ListItem>
                                                <asp:ListItem Text="7" Value="Seven"></asp:ListItem>
                                                <asp:ListItem Text="8" Value="Eight"></asp:ListItem>
                                                <asp:ListItem Text="9" Value="Nine"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <div class="form-row">
                                            <div class="form-group col-md-8"><!--Person No 1-->
                                                <asp:Label for="PersonOne" ID="personLabel1" Text="Person 1" runat="server"></asp:Label>
                                                <asp:TextBox ID="PersonOne" runat="server" CssClass="form-control" Placeholder="Person 1"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-4"><!--Age No 1-->
                                                <asp:Label for="AgeOne" ID="AgeLabel1" Text="age" runat="server"></asp:Label>
                                                <asp:TextBox ID="AgeOne" runat="server" CssClass="form-control" Placeholder="Age"></asp:TextBox>
                                            </div>
                                        </div>

                                        <!-- From person "two" to person "Nine" Name and Age Id -->

                                        <asp:Label ID="Person2" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 2-->
                                                    <asp:TextBox ID="PersonTwo" runat="server" CssClass="form-control" Placeholder="Person 2"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 2-->
                                                    <asp:TextBox ID="AgeTwo" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person3" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 3-->
                                                    <asp:TextBox ID="PersonThree" runat="server" CssClass="form-control" Placeholder="Person 3"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 3-->
                                                    <asp:TextBox ID="AgeThree" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person4" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 4-->
                                                    <asp:TextBox ID="PersonFour" runat="server" CssClass="form-control" Placeholder="Person 4"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 4-->
                                                    <asp:TextBox ID="AgeFour" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person5" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 5-->
                                                    <asp:TextBox ID="PersonFive" runat="server" CssClass="form-control" Placeholder="Person 5"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 5-->
                                                    <asp:TextBox ID="AgeFive" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person6" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 6-->
                                                    <asp:TextBox ID="PersonSix" runat="server" CssClass="form-control" Placeholder="Person 6"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 6-->
                                                    <asp:TextBox ID="AgeSix" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person7" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 7-->
                                                    <asp:TextBox ID="PersonSeven" runat="server" CssClass="form-control" Placeholder="Person 7"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 7-->
                                                    <asp:TextBox ID="AgeSeven" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person8" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 8-->
                                                    <asp:TextBox ID="PersonEight" runat="server" CssClass="form-control" Placeholder="Person 8"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 8-->
                                                    <asp:TextBox ID="AgeEight" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                        <asp:Label ID="Person9" runat="server" Text="" Visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8"><!--Person 9-->
                                                    <asp:TextBox ID="PersonNine" runat="server" CssClass="form-control" Placeholder="Person 9"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4"><!--Age 9-->
                                                    <asp:TextBox ID="AgeNine" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </asp:Label>
                                    </div>
                                </div>

<!-- Row Three (Arrival from, perpose of visit, date of arival, address to proceding, departure, duration vehical no, id proof) -->

                                <div class="form-row">
                                    <div class="form-group col-md-6"><!--Arriver from-->
                                        <asp:Label for="ArriverFromID" ID="ArriverFromLabel" Text="Arriver From" runat="server"></asp:Label>
                                        <asp:TextBox ID="ArriverFromID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Perpose of Visit-->
                                        <asp:Label for="PerposeOfVisitID" ID="PerposeOfVisitLabe" Text="Perpose Of Visit" runat="server"></asp:Label>
                                        <asp:TextBox ID="TexPerposeOfVisitIDtBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Date of Arrival-->
                                        <asp:Label for="DateOfArivalID" ID="DateOfArivalLabel" Text="Date of Arival" runat="server"></asp:Label>
                                        <asp:TextBox ID="DateOfArivalID" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Date of Departure-->
                                        <asp:Label for="DateOFDpartureID" ID="DateOFDpartureLabel" Text="Date of Dparture" runat="server"></asp:Label>
                                        <asp:TextBox ID="DateOFDpartureID" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12"><!--Address To Proceding-->
                                        <asp:Label for="AddressToProcedingID" ID="AddressToProcedingLabel" Text="Address To Proceding" runat="server"></asp:Label>
                                        <asp:TextBox ID="AddressToProcedingID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Duration Of Day-->
                                        <asp:Label for="DurationOfDayID" ID="DurationOfDayLabel" Text="Duration Of Day" runat="server"></asp:Label>
                                        <asp:TextBox ID="DurationOfDayID" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Vehica No-->
                                        <asp:Label for="VehicalNoID" ID="VehicalNoLabel" Text="Vehical No." runat="server"></asp:Label>
                                        <asp:TextBox ID="VehicalNoID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6"><!--Poto Id-->
                                        <asp:Label for="IdProofID" ID="IdProofLabel" Text="Id Proof(upload PhotoId)" runat="server"></asp:Label>
                                        <asp:FileUpload ID="FileUTexIdProofID" CssClass="form-control-file" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer text-right"><!--Preview Button-->
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
        </div>

        <!-------------------------------------
            Preview Tab
        -------------------------------------->


        <div class="modal-container" id="modal_container">
            <div class="container"><div class="container">
                <div class="card text">
                    <div class="card-header">
                        <h4>Preview</h4>
                    </div>

        <!-------------------------------------
            Preview content
        -------------------------------------->

                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-6"><!--Preview Room No.-->
                                <asp:Label ID="PrRoomNoLabel" Text="Full Name :" runat="server"></asp:Label>
                                <asp:Label ID="PrRoomNo" Text="" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><!--Preview Contact No.-->
                                <asp:Label ID="PrContactLabel" Text="Mobile/Phone No. :" runat="server"></asp:Label>
                                <asp:Label ID="PrContactID" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-12"><!--Preview Address-->
                                <asp:Label ID="PrAddressLabel" Text="Address :" runat="server"></asp:Label>
                                <asp:Label ID="PrAddressID" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Nationality-->
                                <asp:Label ID="PrNationalityLabel" Text="Nationality :" runat="server"></asp:Label>
                                <asp:Label ID="PrNationality" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Occupation-->
                                <asp:Label ID="PrOccapationLabel" Text="Servie or Bussiness :" runat="server"></asp:Label>
                                <asp:Label ID="PrOccapation" Text="" runat="server"></asp:Label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><!--Preview No OF Person-->
                                <asp:Label ID="PrNoOfPersonLabel" Text="Persons :" runat="server"></asp:Label>
                                <asp:Label ID="PrNoOfPerson" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="form-row">
                                    <div class="form-group col-md-10"><!--Preview Person 1-->
                                        <asp:Label ID="PrP1NameLabel" Text="Person :" runat="server"></asp:Label><br />
                                        <asp:Label ID="PrP1Name" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-2"><!--Preview Age 1-->
                                        <asp:Label ID="PrP1AgeLabel" Text="Age :" runat="server"></asp:Label><br />
                                        <asp:Label ID="PrP1Age" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-10"><!--Preview Person 2-->
                                        <asp:Label ID="PrP2Name" Text="" runat="server"></asp:Label>
                                    </div>
                                    <div class="form-group col-md-2"><!--Preview Age 2-->
                                        <asp:Label ID="PrP2Age" Text="" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6"><!--Arriver from-->
                                <asp:Label ID="PrArivalFromLabel" Text="Arriver From :" runat="server"></asp:Label>
                                <asp:Label ID="PrArivalFrom" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Perpose of Visit-->
                                <asp:Label ID="PrPerposeLabel" Text="Perpose Of Visit :" runat="server"></asp:Label>
                                <asp:Label ID="PrPerpose" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Date of Arrival-->
                                <asp:Label ID="PrDateOfArivalLabel" Text="Date Of Arival :" runat="server"></asp:Label>
                                <asp:Label ID="PrDateOfArival" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Date of Departure-->
                                <asp:Label ID="PrDateOfDepartureLabel" Text="Date Of Departure :" runat="server"></asp:Label>
                                <asp:Label ID="PrDateOfDeparture" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-12"><!--Preview Address-->
                                <asp:Label ID="PrAddProcedingLabel" Text="Address To Proceding :" runat="server"></asp:Label>
                                <asp:Label ID="PrAddProceding" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Duration-->
                                <asp:Label ID="PrDurationLabel" Text="Duration Of Day :" runat="server"></asp:Label>
                                <asp:Label ID="PrDuration" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Preview Vehical No-->
                                <asp:Label ID="PrVehicalNOLabel" Text="Vehical No :" runat="server"></asp:Label>
                                <asp:Label ID="PrVehicalNo" Text="" runat="server"></asp:Label>
                            </div>
                            <div class="form-group col-md-6"><!--Prevew Photo Id-->
                                <asp:Label ID="PrIdProofLabel" Text="Id Proof :" runat="server"></asp:Label>
                                
                                <asp:Label ID="PrIdProof" Text="" runat="server"></asp:Label>
                                <!-- Tuch add kar kay te mala nay mahit @SUMIT -->
                            </div>
                        </div>
                    </div>

        <!-------------------------------------
            Preview Buttons
        -------------------------------------->

                    <div class="card-footer text-right">
                        <asp:Button ID="SAVEButton" runat="server" Text="SAVE" CssClass="btn btn-outline-success" OnClick="SAVEButton_Click" />
                        <a href="#PreviewButton">
                            <div class="btn btn-outline-primary" onclick="closePopUp()">Cancel</div>
                        </a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
