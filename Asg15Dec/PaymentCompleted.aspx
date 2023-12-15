<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentCompleted.aspx.cs" Inherits="AssignmentNew.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <strong>
                <br />
                <asp:Image ID="Image1" runat="server" Height="42px" ImageUrl="~/ImageFile/Paid.png" />
                &nbsp;
                <asp:Label ID="lblPaid" runat="server" Text="Payment Completed" Font-Bold="True" Font-Size="35pt" CssClass="auto-style5"></asp:Label>
            </strong>

            <div class="auto-style1">
                <div class="auto-style2">
                    <asp:Label ID="lblPaymentDetail" runat="server" Text="Payment Details"></asp:Label>
                </div>
                <div>
                    <table class="table">
                    <tr class="detail">
                        <td><asp:Label ID="lblPayID1" runat="server" Text="Payment ID"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="lblPayID2" runat="server" Text="[GetPaymentID]"></asp:Label></td>
                    </tr>
                    <tr class="detail">
                        <td><asp:Label ID="lblPayDate1" runat="server" Text="Payment Date"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="lblPayDate2" runat="server" Text="[GetPaymentDate]"></asp:Label></td>
                    </tr>
                    <tr class="detail">
                        <td><asp:Label ID="lblPayMeth1" runat="server" Text="Payment Method"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="lblPayMeth2" runat="server" Text="[GetPaymentMethod]"></asp:Label></td>
                    </tr>
                    <tr class="detail">
                        <td><asp:Label ID="lblTotalAmt1" runat="server" Text="Total Amount"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="lblTotalAmt2" runat="server" Text="[GetPaymentAmount]"></asp:Label></td>
                    </tr>
                    <tr class="detail">
                        <td><asp:Label ID="lblOtherDet1" runat="server" Text="[OtherDetail]"></asp:Label></td>
                        <td class="auto-style2"><asp:Label ID="lblOtherDet2" runat="server" Text="[GetOtherDetail]"></asp:Label></td>
                    </tr>
                </table>
                    <div class="auto-style3">
                        <asp:Button ID="btnHome" runat="server" Text="Back To Home" CssClass="auto-style6" Height="25px" Width="150px" />
                        &nbsp;
                        <asp:Button ID="btnTimetable" runat="server" Text="View Detail" CssClass="auto-style7" Height="25px" Width="150px" />
                    </div>
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
          
        .table {
            width: 500px;
            margin: 0 auto;
        }

        .detail td {
            padding: 15px;
            width: 50%;
        }

        .titleDet {
            padding-bottom: 10px;
        }

        .auto-style1 {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            border-radius: 25px;
            margin: 60px 10px;
            font-size: 15pt;
            font-weight: 500;
            height: 405px;
            width: 600px;
            text-align: left;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
        }  
    
        .auto-style2 {
            padding: 10px;
            text-align: left;
        }

        .auto-style3 {
            text-align: center;
            margin-top: 25px;
            
        }

        .auto-style5 {
            color: #006666;
        }

        .auto-style6 {
            border: 2px solid #006666;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 12pt;
            background-color: #006666;
            color: white;
            font-weight: 500;
            left: 50%;
            margin: 10px 20px;
        }

        .auto-style7 {
            border: 2px solid #006666;
            outline: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 12pt;
            background-color: transparent;
            color: #006666;
            font-weight: 500;
            left: 50%;
            margin: 10px 20px;
        }


    </style>

</body>
</html>
