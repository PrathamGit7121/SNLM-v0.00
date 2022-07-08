using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SNLM_v0._00
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void RoomOneLockButton_Click(object sender, EventArgs e)
        {
            if (RoomOneLockButton.Text == "Lock In")
            {
                RoomOneLockButton.Text = "Reserved";
                RoomOneLockButton.BackColor = System.Drawing.Color.Red;
                RoomOneLockButton.ForeColor = System.Drawing.Color.White;
                RoomOneLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomOneLockButton.Text = "Lock In";
                RoomOneLockButton.BackColor = new System.Drawing.Color();
                RoomOneLockButton.ForeColor = new System.Drawing.Color();
                RoomOneLockButton.BorderColor = new System.Drawing.Color();
            }
        }
        protected void RoomTwoLockButton_Click(object sender, EventArgs e)
        {
            if (RoomTwoLockButton.Text == "Lock In")
            {
                RoomTwoLockButton.Text = "Reserved";
                RoomTwoLockButton.BackColor = System.Drawing.Color.Red;
                RoomTwoLockButton.ForeColor = System.Drawing.Color.White;
                RoomTwoLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomTwoLockButton.Text = "Lock In";
                RoomTwoLockButton.BackColor = new System.Drawing.Color();
                RoomTwoLockButton.ForeColor = new System.Drawing.Color();
                RoomTwoLockButton.BorderColor = new System.Drawing.Color();
            }
        }

        protected void RoomThreeLockButton_Click(object sender, EventArgs e)
        {
            if (RoomThreeLockButton.Text == "Lock In")
            {
                RoomThreeLockButton.Text = "Reserved";
                RoomThreeLockButton.BackColor = System.Drawing.Color.Red;
                RoomThreeLockButton.ForeColor = System.Drawing.Color.White;
                RoomThreeLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomThreeLockButton.Text = "Lock In";
                RoomThreeLockButton.BackColor = new System.Drawing.Color();
                RoomThreeLockButton.ForeColor = new System.Drawing.Color();
                RoomThreeLockButton.BorderColor = new System.Drawing.Color();
            }
        }

        protected void RoomFourLockButton_Click(object sender, EventArgs e)
        {
            if (RoomFourLockButton.Text == "Lock In")
            {
                RoomFourLockButton.Text = "Reserved";
                RoomFourLockButton.BackColor = System.Drawing.Color.Red;
                RoomFourLockButton.ForeColor = System.Drawing.Color.White;
                RoomFourLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomFourLockButton.Text = "Lock In";
                RoomFourLockButton.BackColor = new System.Drawing.Color();
                RoomFourLockButton.ForeColor = new System.Drawing.Color();
                RoomFourLockButton.BorderColor = new System.Drawing.Color();
            }
        }

        protected void RoomfiveLockButton_Click(object sender, EventArgs e)
        {
            if (RoomfiveLockButton.Text == "Lock In")
            {
                RoomfiveLockButton.Text = "Reserved";
                RoomfiveLockButton.BackColor = System.Drawing.Color.Red;
                RoomfiveLockButton.ForeColor = System.Drawing.Color.White;
                RoomfiveLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomfiveLockButton.Text = "Lock In";
                RoomfiveLockButton.BackColor = new System.Drawing.Color();
                RoomfiveLockButton.ForeColor = new System.Drawing.Color();
                RoomfiveLockButton.BorderColor = new System.Drawing.Color();
            }
        }

    }
}