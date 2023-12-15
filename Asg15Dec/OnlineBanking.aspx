<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineBanking.aspx.cs" Inherits="AssignmentNew.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
            <strong>
                <br />
                <asp:HyperLink ID="hplBackPayment" runat="server" CssClass="auto-style1" NavigateUrl="~/Payment.aspx" style="text-decoration: none; font-size: 35pt; ">< Online Banking</asp:HyperLink>
            </strong>
        
            <div class="form">
                <div class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="[LabelTotalAmount]"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblBankSelection" runat="server" Text="Select Your Bank" CssClass="auto-style4"></asp:Label>
                    <asp:DropDownList ID="ddlBankSelection" runat="server" AutoPostBack="True" CssClass="auto-style3" Height="30px" Width="120px" OnSelectedIndexChanged="ddlBankSelection_SelectedIndexChanged">
                        <asp:ListItem Value="0">Select Bank</asp:ListItem>
                        <asp:ListItem>CIMB Bank</asp:ListItem>
                        <asp:ListItem>Maybank</asp:ListItem>
                        <asp:ListItem>Public Bank</asp:ListItem>
                        <asp:ListItem>Hong Leong Bank</asp:ListItem>
                        <asp:ListItem>RHB Bank</asp:ListItem>
                        <asp:ListItem>AM Bank</asp:ListItem>
                    </asp:DropDownList>

                    <br />
                    <asp:RequiredFieldValidator ID="rfvBankSelection" runat="server" ControlToValidate="ddlBankSelection" InitialValue="0" ErrorMessage="Please select a bank" ForeColor="Red" Display="Dynamic" ValidationGroup="YourValidationGroup" CssClass="auto-style5"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <strong>
                        <asp:Label ID="lblBankSelected" runat="server" CssClass="auto-style4" ></asp:Label>
                    </strong>
                    <br />
                    <br />
                    <asp:Label ID="lblAccountDetail" runat="server" Text="Enter Your Account Detail" CssClass="auto-style4"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblAccNo" runat="server" Text="Account Number" CssClass="auto-style5"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtUserId" runat="server" OnTextChanged="TextBox1_TextChanged" Height="25px" Width="170px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="auto-style5"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="170px"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnComfirmAcc" runat="server" CssClass="btnConfirm" Height="25px" Text="Confirm" Width="150px" ValidationGroup="YourValidationGroup" style="font-size: 12pt" PostBackUrl="~/PaymentCompleted.aspx"/>
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
        
        .form {
            border-radius: 25px;
            margin: 60px 20px;
            font-size: 15pt;
            font-weight: 500;
            height: 480px;
            width: 380px;
            padding-left: 30px;
            align-content: center;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
        }

        .contentForm {
            margin: 20px;
            padding-top: 20px;
            padding-bottom: 20px;
            padding-left: 10px;
            padding-right: 10px;
        }

            
        .btnConfirm {
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

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            padding: 20px 10px;
            margin: 20px;
            text-align: left;
        }

        .auto-style1 {
            font-size: 35pt;
            text-decoration: none;
            color: #006666;
        }

        .auto-style3 {
            margin-left: 5px;
        }

        .auto-style4 {
            font-size: 15pt;
        }
        
        .auto-style5 {
            font-size: 12pt;
        }
    </style>
    </body>
</html>
