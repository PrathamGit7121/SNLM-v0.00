using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SNLM_v0._00
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);
            if (con.State == ConnectionState.Closed) con.Open();
            SqlCommand cmd1 = new SqlCommand("Select [RoomNoOne], [RoomNoTwo], [RoomNoThree], [RoomNoFour], [RoomNoFive] from [LURoomTable]", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["RoomNoOne"] = dr.GetValue(0).ToString();
                    Session["RoomNoTwo"] = dr.GetValue(1).ToString();
                    Session["RoomNoThree"] = dr.GetValue(2).ToString();
                    Session["RoomNoFour"] = dr.GetValue(3).ToString();
                    Session["RoomNoFive"] = dr.GetValue(4).ToString();
                }
            }
            //Button One session
            if (Session["RoomNoOne"].Equals("Lock"))
            {
                RoomOneLockButton.Text = "Reserved";
                RoomOneLockButton.BackColor = System.Drawing.Color.Red; RoomOneLockButton.ForeColor = System.Drawing.Color.White; RoomOneLockButton.BorderColor = System.Drawing.Color.Red;   
            }
            else 
            {
                RoomOneLockButton.Text = "Lock In";
                RoomOneLockButton.BackColor = new System.Drawing.Color(); RoomOneLockButton.ForeColor = new System.Drawing.Color(); RoomOneLockButton.BorderColor = new System.Drawing.Color();
            }
            //Button two session
            if (Session["RoomNoTwo"].Equals("Lock"))
            {
                RoomTwoLockButton.Text = "Reserved";
                RoomTwoLockButton.BackColor = System.Drawing.Color.Red; RoomTwoLockButton.ForeColor = System.Drawing.Color.White; RoomTwoLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomTwoLockButton.Text = "Lock In";
                RoomTwoLockButton.BackColor = new System.Drawing.Color(); RoomTwoLockButton.ForeColor = new System.Drawing.Color(); RoomTwoLockButton.BorderColor = new System.Drawing.Color();
            }
            //Button three session
            if (Session["RoomNoThree"].Equals("Lock"))
            {
                RoomThreeLockButton.Text = "Reserved";
                RoomThreeLockButton.BackColor = System.Drawing.Color.Red; RoomThreeLockButton.ForeColor = System.Drawing.Color.White; RoomThreeLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomThreeLockButton.Text = "Lock In";
                RoomThreeLockButton.BackColor = new System.Drawing.Color(); RoomThreeLockButton.ForeColor = new System.Drawing.Color(); RoomThreeLockButton.BorderColor = new System.Drawing.Color();
            }
            //Button four session
            if (Session["RoomNoFour"].Equals("Lock"))
            {
                RoomFourLockButton.Text = "Reserved";
                RoomFourLockButton.BackColor = System.Drawing.Color.Red; RoomFourLockButton.ForeColor = System.Drawing.Color.White; RoomFourLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomFourLockButton.Text = "Lock In";
                RoomFourLockButton.BackColor = new System.Drawing.Color(); RoomFourLockButton.ForeColor = new System.Drawing.Color(); RoomFourLockButton.BorderColor = new System.Drawing.Color();
            }
            //buttion five session
            if (Session["RoomNoFive"].Equals("Lock"))
            {
                RoomfiveLockButton.Text = "Reserved";
                RoomfiveLockButton.BackColor = System.Drawing.Color.Red; RoomfiveLockButton.ForeColor = System.Drawing.Color.White; RoomfiveLockButton.BorderColor = System.Drawing.Color.Red;
            }
            else
            {
                RoomfiveLockButton.Text = "Lock In";
                RoomfiveLockButton.BackColor = new System.Drawing.Color(); RoomfiveLockButton.ForeColor = new System.Drawing.Color(); RoomfiveLockButton.BorderColor = new System.Drawing.Color();
            }

            if (con.State == ConnectionState.Open) con.Close();
        }
        protected void RoomOneLockButton_Click(object sender, EventArgs e)
        {
                if (con.State == ConnectionState.Closed) con.Open();
                if (RoomOneLockButton.Text == "Lock In")
                {
                    SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoOne = 'Lock' WHERE RoomNoOne = 'Unlock' ", con);
                    RoomOneLockButton.Text = "Reserved";
                    RoomOneLockButton.BackColor = System.Drawing.Color.Red; RoomOneLockButton.ForeColor = System.Drawing.Color.White; RoomOneLockButton.BorderColor = System.Drawing.Color.Red;
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoOne = 'Unlock' WHERE RoomNoOne = 'Lock' ", con);
                    RoomOneLockButton.Text = "Lock In";
                    RoomOneLockButton.BackColor = new System.Drawing.Color(); RoomOneLockButton.ForeColor = new System.Drawing.Color(); RoomOneLockButton.BorderColor = new System.Drawing.Color();
                    cmd.ExecuteNonQuery();
                }

                if (con.State == ConnectionState.Open) con.Close();
        }
        protected void RoomTwoLockButton_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed) con.Open();
            if (RoomTwoLockButton.Text == "Lock In")
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoTwo = 'Lock' WHERE RoomNoTwo = 'Unlock' ", con);
                RoomTwoLockButton.Text = "Reserved";
                RoomTwoLockButton.BackColor = System.Drawing.Color.Red; RoomTwoLockButton.ForeColor = System.Drawing.Color.White; RoomTwoLockButton.BorderColor = System.Drawing.Color.Red;
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoTwo = 'Unlock' WHERE RoomNoTwo = 'Lock' ", con);
                RoomTwoLockButton.Text = "Lock In";
                RoomTwoLockButton.BackColor = new System.Drawing.Color(); RoomTwoLockButton.ForeColor = new System.Drawing.Color(); RoomTwoLockButton.BorderColor = new System.Drawing.Color();
                cmd.ExecuteNonQuery();
            }

            if (con.State == ConnectionState.Open) con.Close();
        }

        protected void RoomThreeLockButton_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed) con.Open();
            if (RoomThreeLockButton.Text == "Lock In")
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoThree = 'Lock' WHERE RoomNoThree = 'Unlock' ", con);
                RoomThreeLockButton.Text = "Reserved";
                RoomThreeLockButton.BackColor = System.Drawing.Color.Red; RoomThreeLockButton.ForeColor = System.Drawing.Color.White; RoomThreeLockButton.BorderColor = System.Drawing.Color.Red;
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoThree = 'Unlock' WHERE RoomNoThree = 'Lock' ", con);
                RoomThreeLockButton.Text = "Lock In";
                RoomThreeLockButton.BackColor = new System.Drawing.Color(); RoomThreeLockButton.ForeColor = new System.Drawing.Color(); RoomThreeLockButton.BorderColor = new System.Drawing.Color();
                cmd.ExecuteNonQuery();
            }

            if (con.State == ConnectionState.Open) con.Close();
        }

        protected void RoomFourLockButton_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed) con.Open();
            if (RoomFourLockButton.Text == "Lock In")
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoFour = 'Lock' WHERE RoomNoFour = 'Unlock' ", con);
                RoomFourLockButton.Text = "Reserved";
                RoomFourLockButton.BackColor = System.Drawing.Color.Red; RoomFourLockButton.ForeColor = System.Drawing.Color.White; RoomFourLockButton.BorderColor = System.Drawing.Color.Red;
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoFour = 'Unlock' WHERE RoomNoFour = 'Lock' ", con);
                RoomFourLockButton.Text = "Lock In";
                RoomFourLockButton.BackColor = new System.Drawing.Color(); RoomFourLockButton.ForeColor = new System.Drawing.Color(); RoomFourLockButton.BorderColor = new System.Drawing.Color();
                cmd.ExecuteNonQuery();
            }

            if (con.State == ConnectionState.Open) con.Close();
        }

        protected void RoomfiveLockButton_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed) con.Open();
            if (RoomfiveLockButton.Text == "Lock In")
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoFive = 'Lock' WHERE RoomNoFive = 'Unlock' ", con);
                RoomfiveLockButton.Text = "Reserved";
                RoomfiveLockButton.BackColor = System.Drawing.Color.Red; RoomfiveLockButton.ForeColor = System.Drawing.Color.White; RoomfiveLockButton.BorderColor = System.Drawing.Color.Red;
                cmd.ExecuteNonQuery();
            }
            else
            {
                SqlCommand cmd = new SqlCommand("UPDATE LURoomTable SET RoomNoFive = 'Unlock' WHERE RoomNoFive = 'Lock' ", con);
                RoomfiveLockButton.Text = "Lock In";
                RoomfiveLockButton.BackColor = new System.Drawing.Color(); RoomfiveLockButton.ForeColor = new System.Drawing.Color(); RoomfiveLockButton.BorderColor = new System.Drawing.Color();
                cmd.ExecuteNonQuery();
            }

            if (con.State == ConnectionState.Open) con.Close();
        }

    }
}