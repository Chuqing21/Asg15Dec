<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffProfile.aspx.cs" Inherits="AssignmentNew.StaffProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="tab">
                <asp:Button ID="btnProfile" runat="server" Text="Profile" CssClass="btnTab" />
                <asp:Button ID="btnChgPass" runat="server" Text="Change Password"  CssClass="btnTab" />
                <asp:Button ID="btnViewTime" runat="server" Text="View Timetable"  CssClass="btnTab" />
                <asp:Button ID="btnViewStu" runat="server" Text="View Students"  CssClass="btnTab" />
            </div>
            <div class="tabcontent">
                <div class="content">
                    <h2>Profile</h2>
        
                    <br />
                    Staff ID: <asp:Label ID="lblStaffId" runat="server" Text=""></asp:Label>
                    <br />
                    Name: <asp:Label ID="lblStaffName" runat="server" Text=""></asp:Label>
                    <br />
                    Gender: <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                    <br />
                    Contact No: <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
                    <br />
                    Hired Data: <asp:Label ID="lblHired" runat="server" Text=""></asp:Label>
                    <br />

                </div>
            </div>
            <asp:Button ID="btnBack" runat="server" Text="Back to Homepage"  CssClass="button1" PostBackUrl="~/homepage.aspx"/>
            <asp:Button ID="btnEdit" runat="server" Text="Edit Profile"  CssClass="button2" style="left: 50%; top: 507px"/>
        </div>
    </form>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins', sans-serif;
        }

        body{
            background-color: #E5DDE8;
            display:flex;
            justify-content:center;
            align-items:center;
      
        }

        .container{
            border-radius:25px;
            margin-top:100px;
            margin-bottom:30px;
            margin-left:20px;
            margin-right:20px;
            color:#E5DDE8;
            //text-align:center;
            font-size:15pt;
            font-weight:500;
            background-color:#6B9B90;
            height:50%;
            width:600px;
            box-shadow:0 2px 16px rgba(0,0,0,.1);
            padding:30px;
        }

        .tab{
            width:100$;
            display:flex;
            justify-content:space-around;
            align-items:center;
            border-bottom:2px solid rgba(229,229,229);
        }

        .content{
            text-align:left;
            margin-left:30px;
            padding-bottom:30px;
        }

        .content h2{
            padding-top:30px;
        }

        .tab .btnTab{
            font-size:13pt;
            font-weight:500;
            color: #E5DDE8;
            background-color:#6B9B90;
            border:none;
            padding:15px;
            cursor:pointer;
            //border-radius:25px;
        }

        .tab .btnTab:hover{
            background-color:#E5DDE8;
            color:#6B9B90;
        }

        .tab .btnTab:active{
            background-color:#E5DDE8;
            color:#6B9B90;
        }

        .tabcontent{
            padding:20px;
        }

        .container .button1{
            background-color:transparent;
            border: 2px solid #6B9B90;
            outline:none;
            border-radius:6px;
            cursor:pointer;
            font-size:1em;
            color:#6B9B90;
            font-weight:500;
            transition:0.5s;
            position: absolute;
            left: 50%;
            -ms-transform: translate(-27%, -50%);
            transform: translate(-27%, -50%);
            margin-top:70px;
            margin-bottom:50px;
            height: 49px;
            width: 210px;
        }

        .container .button2{
            background-color:#6B9B90;
            border: 2px solid #6B9B90;
            outline:none;
            border-radius:6px;
            cursor:pointer;
            font-size:1em;
            color:#fff;
            font-weight:500;
            transition:0.5s;
            position: absolute;
            left: 50%;
            -ms-transform: translate(150%, -50%);
            transform: translate(150%, -50%);
            margin-top:70px;
            margin-bottom:50px;
            height: 49px;
            width: 117px;
        }

        .container .button1:hover{
            background:#6B9B90;
            color:#fff;
        }

         .container .button2:hover{
            background:#E5DDE8;
            color:#6B9B90;
            border-color:#6B9B90;
         }

    </style>
</body>
</html>
