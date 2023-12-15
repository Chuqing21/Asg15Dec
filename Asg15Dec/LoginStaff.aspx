<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginStaff.aspx.cs" Inherits="AssignmentNew.LoginStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style11">
            <strong>
                <br />
                <asp:Label ID="lblStaffLogin" runat="server" Text="Staff Login" Font-Bold="True" Font-Size="35pt" CssClass="auto-style3"></asp:Label>
            </strong>

            <div class="form">
                <div class="field">
                    <asp:Label ID="lblStaffID" runat="server" Text="Staff ID" CssClass="auto-style1"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtStaffID" runat="server" Height="25px" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldStaffID" runat="server" ErrorMessage="Please Enter Staff ID" ControlToValidate="txtStaffID" Display="Dynamic"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                </div>
                <div class="field">
                    <asp:Label ID="lblStaffPass" runat="server" Text="Password" CssClass="auto-style1"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtStaffPass" runat="server" Height="25px" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="vldStaffPass" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txtStaffPass" Display="Dynamic"  ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me" Font-Size="10pt"/>
                </div>
                <div class="loginField">
                    <asp:Button ID="btnLoginStaff" runat="server" Text="Login" CssClass="btnLogin" Height="25px" Width="150px" style="font-size: 12pt"/>  
                    <br />
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ForgotPassword.aspx" Font-Size="10pt" CssClass="auto-style3">Forgot Password?</asp:HyperLink>
                </div>
                
                <div class="auto-style9">
                    <asp:HyperLink ID="hplBackLogin" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx" ForeColor="#006666">< Back</asp:HyperLink>
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
            color: #006666;
            font-size: 15pt;
            font-weight: 500;
            height: 390px;
            width: 300px;
            text-align: right;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid  #006666;
        }

        .field {
            align-items: center;
            justify-content: center;
            padding: 20px;
            text-align: left;
        }
        
        .btnLogin {
            border: 2px solid #006666;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1em;
            background-color:#006666 ;
            color: white;
            font-weight: 500;
            left: 50%;   
      }


        .auto-style9 {
            padding-top: 15px;
            text-align: left;
            justify-content: left;
            color: #6B9B90;
        }

        .auto-style11 {
            text-align: center;
        }

        .auto-style1 {
            font-size: 15pt;
        }

        .auto-style2 {
            font-size: 12pt;
            text-decoration: none;
            color: #006666;
        }
    </style>

</body>
</html>
