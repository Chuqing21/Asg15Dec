<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileStudent.aspx.cs" Inherits="Asg15Dec.ProfileStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="container">
            <div class="tab">
                <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btnTab" OnClick="btnProfile_Click" style="width: 110px"/>
                <asp:Button ID="btnChagPass" runat="server" Text="Change Password" CssClass="btnTab" OnClick="btnChagPass_Click"/>
                <asp:Button ID="btnTimetable" runat="server" Text="View Timetable" CssClass="btnTab" OnClick="btnTimetable_Click"/>
                <asp:Button ID="btnEdit" runat="server" Text="Edit Profile" CssClass="btnTab" OnClick="btnEdit_Click" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="imgBtnLogout" runat="server" Height="25px" ImageUrl="~/ImageFile/Logout.png" PostBackUrl="~/Login.aspx" Width="25px" />
            </div>

            <div class="tabcontent">
                <div id="procontent" runat="server">
                    <strong>
                    <asp:Label ID="lblProfile" runat="server" Text="Student Profile" CssClass="auto-style7"></asp:Label>
                    </strong>
                    <br />
                    <br />
                    <table class="content1">
                        <tr>
                            <td class="auto-style8"><asp:Label ID="lblStudID" runat="server" Text="Student ID"></asp:Label></td>
                            <td class="auto-style8"><asp:Label ID="lblGetID" runat="server" Text="[GetStudentID]"></asp:Label></td>
                        </tr>
    
                        <tr>
                            <td class="auto-style8"><asp:Label ID="lblStudName" runat="server" Text="Student Name"></asp:Label></td>
                            <td><asp:Label ID="lblGetName" runat="server" Text="[GetStudentName]"></asp:Label></td>
                        </tr>
   
                        <tr>
                            <td class="auto-style8"><asp:Label ID="lblEmail" runat="server" Text="Student Email"></asp:Label></td>
                            <td class="auto-style8"><asp:Label ID="lblGetEmail" runat="server" Text="[GetEmail]"></asp:Label></td>
                        </tr>
    
                        <tr>
                            <td class="auto-style8"><asp:Label ID="lblCN" runat="server" Text="Student Contact Number"></asp:Label></td>
                            <td><asp:Label ID="lblGetCN" runat="server" Text="[GetContactNum]"></asp:Label></td>
                        </tr>
    
                        <tr>
                            <td class="auto-style8"><asp:Label ID="lblPCN" runat="server" Text="Parent Contact Number"></asp:Label></td>
                            <td><asp:Label ID="lblGetPCN" runat="server" Text="[GetParentContactNum]"></asp:Label></td>
                        </tr>
                    </table>
                </div>

                <div id="cpcontent" runat="server">
                    <strong>
                    <asp:Label ID="lblChgPass" runat="server" Text="Change Password" CssClass="auto-style7"></asp:Label>
                    </strong>
                    <br />
                    <br />
                    <div>
                    <asp:ChangePassword ID="ChangePassword1" runat="server">
                        <ChangePasswordTemplate>
                            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;" class="content2">
                                <tr>
                                    <td class="auto-style1">
                                        <table cellpadding="0">
                                            <tr>
                                                <td align="left" class="auto-style9">
                                                    <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Current Password</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password" Height="25px" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="auto-style9">
                                                    <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password" Height="25px" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="auto-style9">
                                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm Password:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password" Height="25px" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
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
                                                <td align="right" class="auto-style9">
                                                    <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Change Password" ValidationGroup="ChangePassword1" CssClass="btnleft" Height="25px" Width="150px" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btnright" Height="25px" Width="150px" />
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

                <div id="timecontent" runat="server">
                    <strong>
                    <asp:Label ID="lblTimetable" runat="server" Text="Timetable" CssClass="auto-style7"></asp:Label>
                    </strong>
                    <br />
                    <br />
                    <table class="content3">
                        <tr>
                            <td class="auto-style4"><asp:Label ID="lblDay1" runat="server" Text="[Day1]" CssClass="auto-style3"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="lblTime1" runat="server" Text="[Time]"></asp:Label></td>
                            <td><asp:Label ID="lblCourse1" runat="server" Text="[Course1]"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="lblDay2" runat="server" Text="[Day2]" CssClass="auto-style3"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="lblTime2" runat="server" Text="[Time2]"></asp:Label></td>
                            <td><asp:Label ID="lblCourse2" runat="server" Text="[Course2]"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="lblDay3" runat="server" Text="[Day3]" CssClass="auto-style3"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="lblTime3" runat="server" Text="[Time3]"></asp:Label></td>
                            <td><asp:Label ID="lblCourse3" runat="server" Text="[Course3]"></asp:Label></td>
                        </tr>
                    </table>
                </div>

                <div id="editcontent" runat="server">
                    <strong>
                    <asp:Label ID="lblEditProfile" runat="server" Text="Edit Profile" CssClass="auto-style7"></asp:Label>
                    </strong>
                    <br />
                    <br />
                    <table class="content4">
                        <tr>
                            <td class="auto-style4"><asp:Label ID="Label1" runat="server" Text="Email"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox1" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="Label2" runat="server" Text="Contact Number"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox2" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="Label3" runat="server" Text="Parent Contact Number"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox3" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="Label4" runat="server" Text="Other"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox4" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style4"><asp:Label ID="Label5" runat="server" Text="Other"></asp:Label></td>
                            <td><asp:TextBox ID="TextBox5" runat="server" Width="170px" Height="25px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><asp:Button ID="btnSaveEdit" runat="server" Text="Save" Height="25px" Width="130px" CssClass="btnleft"/></td>
                            <td class="auto-style5"><asp:Button ID="btnCancelEdit" runat="server" Text="Cancel" Height="25px" Width="130px" CssClass="btnright" /></td>
                        </tr>
                    </table>
                    
                    
                </div>

            </div>





        </div>
    </form>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: white;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .tab .btnTab {
            font-size: 15pt;
            font-weight: 500;
            color: white;
            background-color: #6B9B90;
            border: none;
            padding: 15px;
            cursor: pointer;
        }

        .container {
            border-radius: 25px;
            margin-top: 30px;
            margin-bottom: 30px;
            margin-left: 20px;
            margin-right: 20px;
            color: white;
            font-size: 15pt;
            font-weight: 500;
            background-color: #6B9B90;
            height: 50%;
            width: 700px;
            box-shadow: 0 2px 16px rgba(0,0,0,.1);
            padding: 30px;
            grid-template-columns: 1fr 1fr;
            grid-gap: 40px;
        }

        .content1 {
            width: 500px;
        }

        .content2 {
            width: 500px;
        }

        .content3 {
            width: 500px;
        }

        .content4 {
            width: 500px;
        }

        #procontent {
            text-align: left;
            margin-left: 30px;
            padding-bottom: 30px;
            margin-top: 50px;
        }
    

        #cpcontent {
            text-align: left;
            margin-left: 30px;
            padding-bottom: 30px;
            margin-top: 50px;
        }


        #timecontent {
            text-align: left;
            margin-left: 30px;
            padding-bottom: 30px;
            margin-top: 50px;
        }

        #editcontent {
            text-align: left;
            margin-left: 30px;
            padding-bottom: 30px;
            margin-top: 50px;
        }

            

        


        .auto-style1 {
            text-align: left;
        }


        .btnleft {
            font-size: 12pt;
            border: 2px solid #006666;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            background-color:#006666 ;
            color: white;
            font-weight: 500;
            left: 50%;
            margin: 10px 20px;
        }

        .btnright {
            border: 2px solid white;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 12pt;
            background-color: white;
            color: #006666;
            font-weight: 500;
            left: 50%;
            margin: 10px 20px;
        }

        

        .auto-style3 {
            color: #006666;
        }


        .auto-style4 {
            width: 50%;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .btnedit {
            width: 50%;
            align-content: center;
            text-align: center;
        }

        

        .auto-style5 {
            width: 50%;
            align-content: center;
            text-align: left;
        }
        .auto-style6 {
            width: 50%;
            align-content: center;
            text-align: right;
        }

        

        .auto-style7 {
            font-size: 20pt;
            color: #006666;
            font-weight: bold;
        }

        

        .auto-style8 {
            height: 25px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        

        .auto-style9 {
            width: 50%;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        

    </style>



</body>
</html>
