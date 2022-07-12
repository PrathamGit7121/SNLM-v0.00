using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace SNLM_v0._00
{
    public partial class GestDetails : System.Web.UI.Page
    {
        SqlConnection con;
        String createdFileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);
        }

        protected void SAVEButton_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                    SqlCommand insertcmd1 = new SqlCommand("insert into [CustomerDetails] ( [RoomNo],[CustomerName] ,[ContactNo] ,[Address],[Nationality],[Occupation],[NoOfPerson],[DateOfArival],[ArrivedFrom],[PurposrOfVisit],[DurationOfDay],[AddressToProceeding],[IdProof],[VehicalNo],[DateOfDeparture]) values(@RoomNo,@CustomerName,@ContactNo,@Address,@Nationality,@Occupation,@NoOfPerson,@DateOfArival,@ArrivedFrom,@PurposrOfVisit,@DurationOfDay,@AddressToProceeding,@IdProof,@VehicalNo,@DateOfDeparture)  ", con);
                    insertcmd1.Parameters.AddWithValue("@RoomNo", DropRoomNo.SelectedItem.Text);
                    insertcmd1.Parameters.AddWithValue("@CustomerName", FullName.Text);
                    insertcmd1.Parameters.AddWithValue("@ContactNo", ContactNoid.Text);
                    insertcmd1.Parameters.AddWithValue("@Address", AddressID.Text);
                    insertcmd1.Parameters.AddWithValue("@Nationality", NationalityID.Text);
                    insertcmd1.Parameters.AddWithValue("@Occupation", OccupationID.Text);
                    insertcmd1.Parameters.AddWithValue("@NoOfPerson", DropNoOfPersonID.SelectedItem.Text);
                    insertcmd1.Parameters.AddWithValue("@DateOfArival", DateOfArivalID.Text);
                    insertcmd1.Parameters.AddWithValue("@ArrivedFrom", ArriverFromID.Text);
                    insertcmd1.Parameters.AddWithValue("@PurposrOfVisit", TexPerposeOfVisitIDtBox1.Text);
                    insertcmd1.Parameters.AddWithValue("@DurationOfDay", DurationOfDayID.Text);
                    insertcmd1.Parameters.AddWithValue("@AddressToProceeding", AddressToProcedingID.Text);
                    insertcmd1.Parameters.AddWithValue("@IdProof", createdFileName);
                    insertcmd1.Parameters.AddWithValue("@VehicalNo", VehicalNoID.Text);
                    insertcmd1.Parameters.AddWithValue("@DateOfDeparture", DateOFDpartureID.Text);
                    insertcmd1.ExecuteNonQuery();
                

                if (con.State == ConnectionState.Open) con.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }

            

            
        }

        protected void DropNoOfPersonID_Changed(object sender, EventArgs e)
        {
            if (DropNoOfPersonID.SelectedItem.Value == "One")
            {
                Person2.Visible = false;
                Person3.Visible = false;
                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else
            if (DropNoOfPersonID.SelectedItem.Value == "Two")
            {
              
                Person2.Visible = true;
                Person3.Visible = false;
                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Three")
            {
                Person2.Visible = true;
                Person3.Visible = true;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Four")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Five")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Six")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Seven")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Eight")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = true;
            }
            else
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = true;
                Person9.Visible = true;
                
            }
        }

        public void SetPreview( string idProof) {
            PrRoomNo.Text = DropRoomNo.SelectedItem.Text;
            PrFullName.Text = FullName.Text;
            PrContactID.Text = ContactNoid.Text;
            PrAddressID.Text = AddressID.Text;
            PrNationality.Text = NationalityID.Text;
            PrOccapation.Text = OccupationID.Text;
            PrNoOfPerson.Text = DropNoOfPersonID.SelectedItem.Text;
            PrDateOfArival.Text = DateOfArivalID.Text;
            PrArivalFrom.Text = ArriverFromID.Text;
            PrPerpose.Text = TexPerposeOfVisitIDtBox1.Text;
            PrDuration.Text = DurationOfDayID.Text;
            PrAddProceding.Text = AddressToProcedingID.Text;
            PrVehicalNo.Text = VehicalNoID.Text;
            PrDateOfDeparture.Text = DateOFDpartureID.Text;
        }

        protected void PREVIEWButton_Click(object sender, EventArgs e)
        {

            if (FileUTexIdProofID.HasFile)
            {
                //create the path to save the file to
                string fileName = FileUTexIdProofID.FileName;
                //save the file to our local path
                FileUTexIdProofID.PostedFile.SaveAs(Server.MapPath("~/IdProof/" + fileName));
                createdFileName = "IdProof/" + fileName;
                ImgIDproof.ImageUrl = createdFileName;
                SetPreview(createdFileName);
            }

            modalContainer.Visible = true;
            gestDetails.Visible = false;
        }

        
    }
}
