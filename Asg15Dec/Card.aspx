<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="AssignmentNew.CreditDebit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
                <br />
                <asp:HyperLink ID="hplBackPayment" runat="server" CssClass="auto-style4" NavigateUrl="~/Payment.aspx" style="text-decoration: none; font-size: 35pt; ">< Credit/Debit Card</asp:HyperLink>
            </strong>
            
            <div class="auto-style3">            
                <div class="contentForm">
                    <asp:Label ID="lblCardDetail" runat="server" Text="Enter Card Detail" CssClass="auto-style4" style="font-size: 15pt"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblCardName" runat="server" Text="Name" CssClass="auto-style6"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCardName" runat="server" Height="25px" Width="170px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblCardNo" runat="server" Text="Card Number" CssClass="auto-style6"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCardNo" runat="server" Height="25px" Width="170px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblExp" runat="server" Text="Expiration (MM/YY)" CssClass="auto-style6"></asp:Label>
                    &nbsp;&nbsp;<span class="auto-style5">CVV</span><br />
                    <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="170px"></asp:TextBox>
                    &nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="50px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnComfirmCard" runat="server" CssClass="btnConfirm" Height="25px" Text="Confirm" ValidationGroup="YourValidationGroup" Width="150px" OnClick="btnComfirmCard_Click" style="font-size: 12pt; left: 60%; top: 390px;" PostBackUrl="~/PaymentCompleted.aspx" />
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

        .content{
            height:100%;
            margin-bottom:80px;
        }
        
        .contentForm {
            margin: 20px;
            padding-top: 20px;
            padding-bottom: 20px;
            padding-left: 10px;
            padding-right: 10px;
        }

        .contentForm .btnConfirm {
            border: 2px solid #006666;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 1em;
            color: white;
            background-color: #006666;
            font-weight: 500;
            left: 50%;    
        }

        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            border-radius: 25px;
            margin: 60px 10px;
            color: white;
            font-size: 15pt;
            font-weight: 500;
            height: 400px;
            width: 350px;
            padding-left: 30px;
            align-content: center;
            text-align: left;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
        }

        .auto-style4 {
            font-size: 12pt;
            color: #006666;
        }

        .auto-style5 {
            color: #006666;
        }

        .auto-style6 {
            font-size: 15pt;
            color: #006666;
        }
    </style>
</body>
</html>
