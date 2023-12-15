<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginStud.aspx.cs" Inherits="AssignmentNew.LoginStud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style12">
            <strong>
                <br />
                <asp:Label ID="lblStudLogin" runat="server" Text="Student Login" Font-Bold="True" Font-Size="35pt" CssClass="auto-style10"></asp:Label>
            </strong>

            <div class="form">
                <div class="field">
                    <asp:Label ID="lblStudID" runat="server" Text="Student ID" CssClass="auto-style11"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtStudID" runat="server" Height="25px" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldStudID" runat="server" ErrorMessage="Please enter Student ID" ControlToValidate="txtStudID" Display="Dynamic"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                </div>
                <div class="field">
                    <asp:Label ID="lblStudPass" runat="server" Text="Password" CssClass="auto-style11"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtStudPass" runat="server" Height="25px" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldStudPass" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txtStudPass" Display="Dynamic"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" Font-Size="10pt" CssClass="auto-style10"/>
                </div>
                <div class="loginField">
                    <asp:Button ID="btnLoginStud" runat="server" Text="Login" CssClass="btnLogin" Height="25px" Width="150px" style="font-size: 12pt"/>  
                    <br />
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx" Font-Size="10pt" CssClass="auto-style10">Forgot Password?</asp:HyperLink>
                </div>
                <div class="auto-style8">
                    <font size="3"><span class="auto-style10">Need an account? </span> <strong> <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3">Register Student</asp:HyperLink>
                    </strong>
                    </font>
                </div>
                <div class="auto-style9">
                    <asp:HyperLink ID="hplBackLogin" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx">< Back</asp:HyperLink>
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
            background-color:white;
        }

        .auto-style3 {
            color: #006666;
            font-weight: bold;
            text-decoration: underline;
        }

        .loginField {
            align-items: center;
            justify-content: center;
            padding: 20px;
            text-align: center;
        }

        .form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border-radius: 25px;
            margin: 60px 10px;
            font-size: 15pt;
            font-weight: 500;
            background-color: transparent; 
            height: 450px;
            width: 300px;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            text-align: right;
            border: 2px solid  #006666; 
        }

        .field {
            align-items: center;
            justify-content: center;
            padding: 20px;
            text-align: left;
        }

        .auto-style8 {
            text-align: center;
            padding-top: 40px;
        }

        .btnLogin {
            border: 2px solid #006666;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1em;
            background-color:#006666;
            color: white;
            font-weight: 500;
            left: 50%;    
        }

        .auto-style9 {
            padding-top: 15px;
            justify-content: left;
        }

        .auto-style10 {
            color: #006666;
        }
        .auto-style11 {
            font-size: 15pt;
            color: #006666;
        }

        .auto-style12 {
            text-align: center;
        }

        .auto-style2 {
            font-size: 12pt;
            text-decoration: none;
            color: #006666;
        }

    </style>

</body>
</html>
