using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SNLM_v0._00
{
    public partial class GestDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SAVEButton_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Kidding')</script>");
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
            else if (DropNoOfPersonID.SelectedItem.Value == "Two")
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
                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Four")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Five")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Six")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Seven")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = false;
                Person9.Visible = false;
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
                Person9.Visible = false;
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

        /*protected void DropNoOfPersonID_Changed(object sender, EventArgs e)
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
            else if (DropNoOfPersonID.SelectedItem.Value == "Two")
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
                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Four")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Five")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Six")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Seven")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = false;
                Person9.Visible = false;
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
                Person9.Visible = false;
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
        }*/
    }
}
