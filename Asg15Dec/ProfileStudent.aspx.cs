using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asg15Dec
{
    public partial class ProfileStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            procontent.Style["display"] = "block";
            cpcontent.Style["display"] = "none";
            timecontent.Style["display"] = "none";
            editcontent.Style["display"] = "none";

            btnProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
                "background-color: #E5DDE8; color: #6B9B90";
        }



        protected void btnProfile_Click(object sender, EventArgs e)
        {
            if (procontent.Style["display"] == "block")
            {
                btnProfile.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChagPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnTimetable.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEdit.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                procontent.Style["display"] = "none";
            }
        }

        protected void btnChagPass_Click(object sender, EventArgs e)
        {
            if (cpcontent.Style["display"] == "none")
            {
                procontent.Style["display"] = "none";
                cpcontent.Style["display"] = "block";
                btnChagPass.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnTimetable.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEdit.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                cpcontent.Style["display"] = "none";
            }
        }

        protected void btnTimetable_Click(object sender, EventArgs e)
        {
            if (timecontent.Style["display"] == "none")
            {
                procontent.Style["display"] = "none";
                timecontent.Style["display"] = "block";
                btnTimetable.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChagPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnEdit.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                timecontent.Style["display"] = "none";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (editcontent.Style["display"] == "none")
            {
                procontent.Style["display"] = "none";
                editcontent.Style["display"] = "block";
                btnEdit.Attributes["style"] = "border-top-right-radius: 10px; border-top-left-radius: 10px;" +
               "background-color: #E5DDE8; color: #6B9B90";

                btnChagPass.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnTimetable.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
                btnProfile.Attributes["style"] = "background-color: #6B9B90; color: #E5DDE8";
            }
            else
            {
                editcontent.Style["display"] = "none";
            }
        }
    }
}