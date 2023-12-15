<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="AssignmentNew.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>
                <br />
                <asp:Label ID="lblPayment" runat="server" Text="Payment" Font-Bold="True" Font-Size="35pt" CssClass="auto-style13"></asp:Label>
            </strong>
            
            <div class="form">
                <div>
                    <div class="contentForm">
                        <asp:Label ID="lblPaymentMethod" runat="server" Font-Bold="True" Font-Size="15pt" Text="Select Payment Method" CssClass="auto-style6"></asp:Label>
                        <div class="method">
                            <div class="bullet-link highlighted methodS" id="Method1" onmouseover="changeBackgroundColor('Method1', '#E5DDE8')" onmouseout="changeBackgroundColor('Method1', '#6B9B90')" click="redirectToPage('<%= ResolveUrl("~/OnlineBanking.aspx") %>')">
                                <asp:ImageButton ID="imgBtnOnlineBanking" runat="server" Height="30px" ImageUrl="~/ImageFile/FPX.png" PostBackUrl="~/OnlineBanking.aspx" />
                                 <strong><asp:HyperLink ID="hplOnlineBanking" runat="server" CssClass="auto-style15" NavigateUrl="~/OnlineBanking.aspx" Height="25px" Width="200px">Online Banking</asp:HyperLink>
                                </strong>
                            </div>
                            <div class="bullet-link highlighted methodS" id="Method2" onmouseover="changeBackgroundColor('Method2', '#E5DDE8')" onmouseout="changeBackgroundColor('Method2', '#6B9B90')" onclick="redirectToPage('<%= ResolveUrl("~/Card.aspx") %>')">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="imgBtnCreDebit" runat="server" Height="30px" ImageUrl="~/ImageFile/Credit.png" PostBackUrl="~/Card.aspx" />
                                <strong>&nbsp;
                                <asp:HyperLink ID="hplCreditDebit" runat="server" CssClass="auto-style15" NavigateUrl="~/Card.aspx" Height="25px" Width="190px">Credit/Debit Card</asp:HyperLink>
                                </strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="auto-style1">
                    <span class="auto-style5"><asp:CheckBox ID="chbTC" runat="server" CssClass="auto-style12" />By continuing, you have agree to the </span><font size="2">
                        <span class="auto-style13">
                            <br />
                            <strong>
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style14" NavigateUrl="~/TermService.aspx">Terms and Conditions</asp:HyperLink>
                            </strong>
                        </span>
                        <asp:Label ID="Label1" runat="server" Text="[*Must Agree]"></asp:Label>
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

     #form1 {
         display: flex;
         flex-direction: column;
         align-items: center;

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
         height: 350px;
         width: 370px;
         background-color: transparent;
         box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
         border: 2px solid #006666;
         color: #006666;
     }
     
     .contentForm {
         margin: 20px;
         padding-bottom: 10px;
         justify-content: center;
         display: flex;
         flex-direction: column;
         align-items: center;
     }

    .method{
        margin: 20px 10px;
    }

    .methodS{
        padding-top: 20px;
        padding-bottom: 10px;
    }

     .bullet-link {
        list-style-type: none; 
        margin-left: 20px;
     }
     
     .highlighted  {
        background-color: white;
        transition: background-color 0.3s;
        color: #E5DDE8;
     }
     
     .highlighted:hover {
         background-color: #E5DDE8;
         color: #006666;
     }
    
    .auto-style1 {
        text-align: center;
    }
    
    .auto-style5 {
        font-size: 10pt;
    }

    .auto-style6 {
        font-size: 15pt;
    }

    .auto-style12 {
        font-size: 12pt;
    }

    .auto-style13 {
        color: #006666;
    }
    
    .auto-style14 {
        color: #006666;
        font-weight: bold;
    }

    .auto-style15 {
        font-size: 12pt;
        text-decoration: none;
        color: #006666;
        font-weight: bold;
    }
    </style>
</body>
</html>

<script type="text/javascript">
    function redirectToPage(url) {
        window.location.href = url;
    }
</script>
