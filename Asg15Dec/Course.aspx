<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="AssignmentNew.Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height:100%"">
    <form id="form1" runat="server">
        <asp:Label ID="headerlabel" runat="server" Text=""></asp:Label>
        <div class="content" style="height:100%">
            <div class="container">
                <h2>Courses We Provide</h2>
                All courses will have quizzes, exercies, challenges and tests. <br />
                Select whichever course you like to enroll.
                <div class="courses">
                    <div class="card">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/ImageFile/Chinese.png" Height="70px" Width="70px" />
                        <h4 style="color:#6B9B90">
                        Chinese Language<asp:CheckBox ID="chkboxCh" runat="server" /></h4>
                        RM2400/year
                        <br /><br />
                        +Chinese Essay Writing <br />
                        +Basic Chinese Pronunciation Practice <br />
                        +Advanced Chinese Speaking <br />
                        +Chinese Listening <br />
                    </div>
                    <div class="card">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/ImageFile/Eng.png" Height="70px" Width="70px" />
                        <h4 style="color:#6B9B90">
                        English Language<asp:CheckBox ID="chkboxEn" runat="server" /></h4>
                        RM2400/year
                        <br /><br />
                        +English Essay Writing <br />
                        +Basic English Pronunciation Practice <br />
                        +Advanced English Speaking <br />
                        +English Listening <br />
                    </div>
                    <div class="card">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/ImageFile/BM.png" Height="70px" Width="70px" />
                        <h4 style="color:#6B9B90">
                        Bahasa Melayu Language<asp:CheckBox ID="chkboxBm" runat="server" /></h4>
                        RM2400/year
                        <br /><br />
                        +BM Essay Writing <br />
                        +Basic BM Pronunciation Practice <br />
                        +Advanced BM Speaking <br />
                        +BM Listening <br />
                    </div>
                    <div class="card">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/ImageFile/Math.png" Height="70px" Width="70px" />
                        <h4 style="color:#6B9B90">
                        Mathematics<asp:CheckBox ID="chkboxMath" runat="server" /></h4>
                        RM2400/year
                        <br /><br />
                        +Quadratic Equations <br />
                        +Quantitave Studies <br />
                        +Algebra Expression <br />
                        +Discrete Mathematics <br />
                    </div>
                    <div class="card">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/ImageFile/Science.png" Height="70px" Width="70px" />
                        <h4 style="color:#6B9B90">
                        Science<asp:CheckBox ID="chkboxSc" runat="server" /></h4>
                        RM2400/year
                        <br /><br />
                        +Reproduction <br />
                        +Electricity <br />
                        +Weather and Climate <br />
                        +Light Principles <br />
                    </div>
                    <div class="card">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/ImageFile/History.png" Height="70px" Width="70px" />
                        <h4 style="color:#6B9B90">
                        History<asp:CheckBox ID="chkboxHt" runat="server" /></h4>
                        RM2400/year
                        <br /><br />
                        +World War I & II <br />
                        +Black Death <br />
                        +Vietnam War <br />
                        +Great Depression <br />
                    </div>
                </div>
            </div>
            <asp:Button ID="btnBack" runat="server" Text="Back to Homepage"  CssClass="button1" PostBackUrl="~/homepage.aspx"/>
            <asp:Button ID="btnEnroll" runat="server" Text="Enroll"  CssClass="button2"/>
        </div>
        <asp:Label ID="footerlabel" runat="server" Text=""></asp:Label>
    </form>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins', sans-serif;
        }

        .content{
            background-color:#E5DDE8;
            height:100%;
            margin-bottom:80px;
        }

        .container{
            position:relative;
            border-radius:25px;
            margin-top:130px;
            margin-bottom:10px;
            margin-left:50px;
            margin-right:50px;
            color:#E5DDE8;
            text-align:center;
            font-size:1em;
            font-weight:500;
            background-color:#6B9B90;
            height:80%;       
        }

        .container h2{
            padding-top:50px;
        }

        .courses{
            margin-top:30px;
            display:grid;
            //grid-template-columns:repeat(3,1fr);
            grid-template-columns:auto auto;
            grid-template-rows:auto auto auto;
            //gap:3rem;
            grid-gap:20px;
            width:100%;
            padding:20px 100px 20px 100px;
            //color:#6B9B90;
        }

        .courses .card{
            background-color:#E5DDE8;
            padding:20px;
            border:2px solid #D6CED6;
            border-radius:10px;
            transition:all 0.3s ease;
            text-align:left;
            color:#6B9B90;
            
        }

        .content .button1{
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
            -ms-transform: translate(85%, -50%);
            transform: translate(85%, -50%);
            margin-top:30px;
            margin-bottom:50px;
            height: 49px;
            width: 220px;
        }

        .content .button2{
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
            -ms-transform: translate(370%, -50%);
            transform: translate(370%, -50%);
            margin-top:30px;
            margin-bottom:50px;
            height: 49px;
            width: 117px;
        }

        .content .button1:hover{
            background:#6B9B90;
            color:#fff;
        }

         .content .button2:hover{
            background:#E5DDE8;
            color:#6B9B90;
            border-color:#6B9B90;
         }


         /*doesnt work*/
         .chkboxCh, /*.chkboxEn:checked, .chkboxBm:checked, .chkboxMath:checked, .chkboxSc:checked, .chkboxHt:checked*/{
             position: absolute;
             top: 0;
             left: 0;
             height: 25px;
             width: 25px;
         }

         input:checked ~ .chkboxCh{
             background-color: #6B9B90;
         }
         



    </style>
</body>
</html>
