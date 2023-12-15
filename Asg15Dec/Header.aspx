<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="AssignmentNew.Header" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div class="header1">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/ImageFile/A+.jpg" Height="126px" Width="135px" />
                <span class="auto-style1">A+Education</span></div>
            <div class="header2">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2">Home</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server">Courses</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server">About</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server">Contact</asp:HyperLink>
                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="button"/>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button"/>
            </div>
        </div>
    </form>
</body>
</html>

<style>
    #header{
            top:0;
            left:0;
            width:100%;
            display:flex;
            justify-content:space-between;
            align-items:center;
            background-color:#D6CED6;
        }

        #header a{
            position:relative;
            font-size:1em;
            color:#6B9B90;
            text-decoration:none;
            font-weight:500;
            margin-left:30px;
        }
        
        #header a::after{
            content:'';
            position:absolute;
            left:0;
            bottom:-6px;
            width:100%;
            height:3px;
            background-color:#6B9B90;
            border-radius:5px;
            transform:scaleX(0);
            transition:transform .5s;
            transform-origin:right;
        }

        #header a:hover::after{
            transform:scaleX(1);
            transform-origin:left;
        }

        .button{
            width:100px;
            height:30px;
            background-color:transparent;
            border: 2px solid #6B9B90;
            outline:none;
            border-radius:6px;
            cursor:pointer;
            font-size:1em;
            color:#6B9B90;
            font-weight:500;
            transition:0.5s;
            margin-left:30px;
        }

        .button:hover{
            background:#6B9B90;
            color:#E5DDE8;
        }



    .auto-style1 {
        font-size: 25pt;
    }
    .auto-style2 {
        font-size: 15pt;
    }



</style>