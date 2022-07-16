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
    public partial class Bills : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);
        }

        public void AddValue()
        {
            int AmtOnline, AmtOffline, AmtTotal;
            if (BillOfflineID.Text != "")
                AmtOnline = Convert.ToInt32(BillOfflineID.Text);
            else
                AmtOnline = 0;
            if (BillOnlineID.Text != "")
                AmtOffline = Convert.ToInt32(BillOnlineID.Text);
            else
                AmtOffline = 0;

            AmtTotal = AmtOnline + AmtOffline;
            PrTotal.Text = AmtTotal.ToString();
        }

        protected void BillOfflineID_TextChanged(object sender, EventArgs e)
        {
            AddValue();
        }

        protected void BillOnlineID_TextChanged(object sender, EventArgs e)
        {
            AddValue();
        }
        public void SetPreview()
        {
            PreRoomNo.Text = BillDropRoomNo.SelectedItem.Text;
            PreFullName.Text = BillFullName.Text;
            PreOffline.Text = BillOfflineID.Text;
            PreOnline.Text = BillOnlineID.Text;
            PrBankName.Text = BillBankName.SelectedItem.Text;

            AddValue();
        }
        protected void PREVIEWButton_Click(object sender, EventArgs e)
        {
            SetPreview();
            BillContainer.Visible = true;
            gestBill.Visible = false;
        }

        protected void CancelPreview_Click(object sender, EventArgs e)
        {
            BillContainer.Visible = false;
            gestBill.Visible = true;
        }

        protected void SAVEButton_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO PaymentDetailss([RefId],[CustName],[OnlinePmt],[OfflinePmt],[BillAmount],[BankName]) VALUES(@RefId,@CustName,@OnlinePmt,@OfflinePmt,@BillAmount,@BankName) ", con);
                cmd.Parameters.AddWithValue("@RefId", BillDropRoomNo.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@CustName", BillFullName.Text);
                cmd.Parameters.AddWithValue("@OnlinePmt", BillOfflineID.Text);
                cmd.Parameters.AddWithValue("@OfflinePmt", BillOnlineID.Text);
                cmd.Parameters.AddWithValue("@BankName", BillBankName.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@BillAmount", PrTotal.Text);
                cmd.ExecuteNonQuery();
                if (con.State == ConnectionState.Open) con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            } 
            BillContainer.Visible = false;
            gestBill.Visible = true;
        }
        protected void Bill_Click(object sender, EventArgs e)
        {
            BillContainer.Visible = false;
            gestBill.Visible = false;
            PrintBill.Visible = true;
        }

        protected void PrintBillcancel_Click(object sender, EventArgs e)
        {
            BillContainer.Visible = false;
            PrintBill.Visible = false;
            gestBill.Visible = true;
        }
    }
}