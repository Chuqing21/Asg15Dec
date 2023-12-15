<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileStud.aspx.cs" Inherits="AssignmentNew.ProfileStud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
    <div class="tab">
        <asp:Button ID="btnStudProfile" runat="server" Text="Profile" CssClass="btnTab" OnClientClick="showTab('profileTab'); return false;" OnClick="btnStudProfile_Click" />
        <asp:Button ID="btnChagPass" runat="server" Text="Change Password" CssClass="btnTab" OnClientClick="showTab('chgPassTab'); return false;" OnClick="btnChagPass_Click" />
        <asp:Button ID="btnViewTimetable" runat="server" Text="View Timetable" CssClass="btnTab" OnClientClick="showTab('viewTimeTab'); return false;" />
        <asp:Button ID="btnProfileEdit" runat="server" Text="Edit Profile" CssClass="btnTab" OnClientClick="showTab('viewStuTab'); return false;" />
    </div>
    <div class="tabcontent">
        <div class="content">
            <asp:Label ID="lblStudProfile" runat="server" Text="Profile"></asp:Label>
            <table style="width: 100%;">
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Student ID"></asp:Label></td>
                    <td><asp:Label ID="Label13" runat="server" Text="[GetStudentID]"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Student Name"></asp:Label></td>
                    <td><asp:Label ID="Label14" runat="server" Text="[GetStudentName]"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label9" runat="server" Text="Email"></asp:Label></td>
                    <td><asp:Label ID="Label15" runat="server" Text="[GetEmail]"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label8" runat="server" Text="Contact Number"></asp:Label></td>
                    <td><asp:Label ID="Label12" runat="server" Text="[GetContactNum]"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label10" runat="server" Text="Parent Contact Number"></asp:Label></td>
                    <td><asp:Label ID="Label11" runat="server" Text="[GetParentContactNum]"></asp:Label></td>
                </tr>
            </table>
            

        </div>

        <div id="chgPassTab" class="tabcontent">
            <div class="content">
                <asp:Label ID="lblChgPass" runat="server" Text="Change Password"></asp:Label>
                <br />
                <asp:ChangePassword ID="ChangePassword1" runat="server">
    <ChangePasswordTemplate>
        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
            <tr>
                <td>
                    <table cellpadding="0">
                        <tr>
                            <td>
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Current Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Change Password" ValidationGroup="ChangePassword1" />
                            </td>
                            <td>
                                <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </ChangePasswordTemplate>
</asp:ChangePassword>
            
            </div>
        </div>

        <div id="viewTimeTab" class="tabcontent">
            <div class="content">
                <asp:Label ID="lblViewTimetable" runat="server" Text="Timetable"></asp:Label>
                <table style="width: 100%;">
                    <tr>
                        <td>Day1</td>
                    </tr>
                    <tr>
                        <td>Time</td>
                        <td>Course</td>
                    </tr>
                </table>
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td>Day2</td>
                    </tr>
                    <tr>
                        <td>Time</td>
                        <td>Course</td>
                    </tr>
                </table>
            </div>
        </div>

        <div id="viewStuTab" class="tabcontent">
            <div class="content">
                <asp:Label ID="lblEdit" runat="server" Text="Edit Profile"></asp:Label>
                <br />
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Email"></asp:Label></td>
                        <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label></td>
                        <td class="auto-style5"><asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Parent Contact"></asp:Label></td>
                        <td class="auto-style3"><asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Other"></asp:Label></td>
                        <td class="auto-style3"><asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><asp:Label ID="Label5" runat="server" Text="Other"></asp:Label></td>
                        <td class="auto-style3"><asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Save" Height="25px" Width="120px" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" Height="25px" Width="120px" />
            </div>
        </div>
    </div>
    <asp:Button ID="btnBack" runat="server" Text="Back to Homepage"  CssClass="button1" PostBackUrl="~/homepage.aspx"/>
</div>
        
    </form>

      


<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family:'Poppins', sans-serif;
    }

    body{
        background-color: #E5DDE8;
        display:flex;
        justify-content:center;
        align-items:center;
  
    }

    .container{
        border-radius:25px;
        margin-top:100px;
        margin-bottom:30px;
        margin-left:20px;
        margin-right:20px;
        color:#E5DDE8;
        //text-align:center;
        font-size:15pt;
        font-weight:500;
        background-color:#6B9B90;
        height:50%;
        width:600px;
        box-shadow:0 2px 16px rgba(0,0,0,.1);
        padding:30px;
    }

    .tab{
        width:100$;
        display:flex;
        justify-content:space-around;
        align-items:center;
        border-bottom:2px solid rgba(229,229,229);
    }

    .content{
        text-align:left;
        margin-left:30px;
        padding-bottom:30px;
    }

    .content h2{
        padding-top:30px;
    }

    .tab .btnTab{
        font-size:13pt;
        font-weight:500;
        color: #E5DDE8;
        background-color:#6B9B90;
        border:none;
        padding:15px;
        cursor:pointer;
   
    }

    .tab .btnTab:hover{
        background-color:#E5DDE8;
        color:#6B9B90;
    }

    .tab .btnTab:active{
        background-color:#E5DDE8;
        color:#6B9B90;
    }

    .tabcontent{
        padding:20px;
    }

    .container .button1{
        background-color:transparent;
        border: 2px solid #6B9B90;
        outline:none;
        border-radius:6px;
        cursor:pointer;
        font-size:1em;
        color:#6B9B90;
        font-weight:500;
        transition:0.5s;
        position: absolute;
        left: 50%;
        -ms-transform: translate(-27%, -50%);
        transform: translate(-27%, -50%);
        margin-top:70px;
        margin-bottom:50px;
        height: 49px;
        width: 210px;
    }

    .container .button2{
        background-color:#6B9B90;
        border: 2px solid #6B9B90;
        outline:none;
        border-radius:6px;
        cursor:pointer;
        font-size:1em;
        color:#fff;
        font-weight:500;
        transition:0.5s;
        position: absolute;
        left: 50%;
        -ms-transform: translate(150%, -50%);
        transform: translate(150%, -50%);
        margin-top:70px;
        margin-bottom:50px;
        height: 49px;
        width: 117px;
    }

    .container .button1:hover{
        background:#6B9B90;
        color:#fff;
    }

     .container .button2:hover{
        background:#E5DDE8;
        color:#6B9B90;
        border-color:#6B9B90;
     }

    .auto-style2 {
        width: 256px;
        text-align: left;
    }
    .auto-style3 {
        text-align: left;
    }
    .auto-style4 {
        width: 256px;
        text-align: left;
        height: 25px;
    }
    .auto-style5 {
        text-align: left;
        height: 25px;
    }

</style>


</body>
</html>
