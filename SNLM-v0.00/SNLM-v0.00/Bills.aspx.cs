using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SNLM_v0._00
{
    public partial class Bills : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

    }
}