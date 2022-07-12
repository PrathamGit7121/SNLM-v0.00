﻿using System;
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
        String createdFileName;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);
        }

        protected void AddValue()
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
            BillTotalID.Text = AmtTotal.ToString();
        }

        protected void BillOfflineID_TextChanged(object sender, EventArgs e)
        {
            AddValue();
        }

        protected void BillOnlineID_TextChanged(object sender, EventArgs e)
        {
            AddValue();
        }
        public void SetPreview(string idProof)
        {
            PreRoomNo.Text = BillDropRoomNo.SelectedItem.Text;
            PreFullName.Text = BillFullName.Text;
            PreOffline.Text = BillOfflineID.Text;
            PreOnline.Text = BillOnlineID.Text;
            PrBankName.Text = BillBankName.SelectedItem.Text;
            PrTotal.Text = BillTotalID.Text;
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

    }
}