<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssignmentNew.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="lblLoginAs" runat="server" Text="Login" Font-Bold="True" Font-Size="35pt" CssClass="auto-style2"></asp:Label>
        </div>
        <div class="table-container">
            <table class="table" align="center">
                <tr>
                    <td class="auto-style1"><asp:ImageButton ID="imgBtnStudent" runat="server" Height="100px" ImageUrl="~/ImageFile/Student.png" PostBackUrl="~/LoginStud.aspx"/></td>
                    <td class="auto-style1"><asp:ImageButton ID="imgBtnTeacher" runat="server" Height="100px" ImageUrl="~/ImageFile/Teacher.png" PostBackUrl="~/LoginStaff.aspx"/></td>
                    <td class="auto-style1"><asp:ImageButton ID="imgBtnStaff" runat="server" Height="100px" ImageUrl="~/ImageFile/Staff.png" PostBackUrl="~/LoginAdmin.aspx"/></td>
                </tr>
                <tr >
                    <td class="auto-style5">
                        <strong>
                        <asp:HyperLink ID="hplStudent" runat="server" NavigateUrl="~/LoginStud.aspx" ForeColor="#006666" Font-Size="15pt" style="text-decoration: none;" CssClass="auto-style3">Student</asp:HyperLink>
                        </strong>
                    </td>
                    <td class="row2">
                        <strong>
                        <asp:HyperLink ID="hplTeacher" runat="server" NavigateUrl="~/LoginStaff.aspx" ForeColor="#006666" Font-Size="15pt" style="text-decoration: none;" CssClass="auto-style3">Staff</asp:HyperLink>
                        </strong>&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="row2">
                        <strong>
                        <asp:HyperLink ID="hplStaff" runat="server" NavigateUrl="~/LoginAdmin.aspx" ForeColor="#006666" Font-Size="15pt" style="text-decoration: none;">Admin</asp:HyperLink>
                        </strong>
                    </td>
                </tr>
            </table>
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
        
        .centered-label {
            display: block; 
            margin: 0 auto;  
            text-align: center; 
        }

        .table {
            width: 70%;
            text-align: center;
            margin: 60px 10px;
            table-layout: fixed; 
            background-color: white; 
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid  #006666;
        }

        .header {
            text-align: center;
        }

        .row2{
            padding: 20px 0px;
            justify-content: center;
            align-items: center;
            color: #006666;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid  #006666;
        }

        .row1 {
            padding: 30px 0; 
            
        }

        .row1 img {
            display: block;
            margin: 0 auto;
        }

        .auto-style1 {
            padding: 30px 0;
            width: 33.33%;
            height: 162px;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid  #006666;
        }

        .table-container {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: white; 
        }
        
        .auto-style2 {
            display: block;
            margin: 0 auto;
            text-align: center;
            color: #006666;
        }
        
        .auto-style3 {
            color: #6B9B90;
        }
        
        .auto-style5 {
            padding: 20px 0px;
            justify-content: center;
            align-items: center;
            color: #006666;
            background-color: transparent;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            width: 33%;
        }
        
    </style>

</body>
</html>
