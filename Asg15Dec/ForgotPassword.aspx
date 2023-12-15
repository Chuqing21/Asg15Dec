<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="AssignmentNew.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <br />
            <asp:Label ID="lblForgotPassword" runat="server" Text="Retrieve Password" Font-Bold="True" Font-Size="35pt" CssClass="auto-style8"></asp:Label>
            <div class ="form">
                <div class="contentForm">
                <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnSendingMail="PasswordRecovery1_SendingMail">
                    <UserNameTemplate>
                        <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                            <tr>
                                <td>
                                    <table cellpadding="0" class="content">
                                        <tr>
                                            <td align="left" class="auto-style1"><b><strong><font-size="15pt">Enter User ID To Receive Your P</font-><font>assword</font></strong></b>.</td>
                                        </tr>
                                        <tr class="content">
                                            <td align="left" class="auto-style1">
                                                <strong>
                                                    <br />
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="auto-style3">User ID</asp:Label>
                                                </strong>
                                            </td>
                                            <tr>
                                                <td class="auto-style7">
                                                    <asp:TextBox ID="UserName" runat="server" Width="170px" Height="25px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1" CssClass="redAsterisk">*</asp:RequiredFieldValidator>
                                                    <br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="auto-style10">
                                                    <br />
                                                    <asp:Label ID="lblStudEmail" runat="server" Text="Email"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="auto-style1">
                                                    <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="170px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvStudEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Must Fill In" ToolTip="User Name is required." CssClass="redAsterisk">*</asp:RequiredFieldValidator>
                                                    <span class="redAsterisk">*</span></td>
                                            </tr>
                                            <tr>
                                                <td align="center" style="color:Red;" class="auto-style1">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </tr>
                                        <tr>
                                            <td class="auto-style7">
                                                <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" CssClass="btnSubmit" Font-Bold="False" Width="150px" Font-Size="12pt" ValidationGroup="PasswordRecovery1" OnClick="SubmitButton_Click" Height="25px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:HyperLink ID="hplBack" runat="server" ForeColor="#006666" style="text-decoration: none;" NavigateUrl="~/LoginAs.aspx" CssClass="auto-style2">< Back To Login</asp:HyperLink>
                    </UserNameTemplate>
                </asp:PasswordRecovery>
                </div>
            </div>
        </div>
    </form>

    <style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family:'Poppins', sans-serif;
    }

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0;
    }

    .form {
        border-radius: 25px;
        margin: 60px 10px;
        font-size: 15pt;
        font-weight: 500;
        height: 450px;
        width: 350px;
        padding-left: 30px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-color: transparent;
        box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
        border: 2px solid #006666;
        color: #006666;
    }

    .form .btnSubmit {
        border: 2px solid #006666;
        outline: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1em;
        background-color: #006666;
        color: white;
        font-weight: 500;
        left: 50%;   
    }

    .contentForm {
        margin: 20px;
        padding: 10px;
        width: 300px;
    }
        
    .auto-style2 {
        font-size: 12pt;
        color: #006666;
    }
    
    .auto-style3 {
        font-weight: normal;
    }
        
    .auto-style7 {
        width: 282px;
        text-align: left;
    }

    .auto-style8 {
        font-size: 35pt;
        color: #006666;
    }
    
    .redAsterisk {
        color: red;
    }
    
    .auto-style1 {
        width: 280px;
    }

    .auto-style10 {
        width: 280px;
        height: 25px;
    }

    .auto-style11 {
        text-align: center;
    }
    </style>

</body>
</html>
