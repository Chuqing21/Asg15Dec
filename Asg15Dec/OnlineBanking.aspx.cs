using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssignmentNew
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlBankSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlBankSelection.SelectedIndex == 0)
            {
                lblBankSelected.Text = "Please select your bank";
            }
            else if (ddlBankSelection.SelectedIndex == 1)
            {
                lblBankSelected.Text = "CIMB Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 2)
            {
                lblBankSelected.Text = "Maybank";
            }
            else if (ddlBankSelection.SelectedIndex == 3)
            {
                lblBankSelected.Text = "Public Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 4)
            {
                lblBankSelected.Text = "Hong Leong Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 5)
            {
                lblBankSelected.Text = "RHB Bank";
            }
            else if (ddlBankSelection.SelectedIndex == 6)
            {
                lblBankSelected.Text = "AM Bank";
            }
        }
    }
}