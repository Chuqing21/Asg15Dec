<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="AssignmentNew.About_Us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="title">
                <br />
                <asp:Label ID="lblWelcome" runat="server" Text="About Us" Font-Bold="True" Font-Size="35pt" CssClass="auto-style3"></asp:Label>
            </div>

            <div class="form">     
                <div class="auto-style4">
                    <asp:Label ID="lblAboutUs" runat="server" Text="Welcome To A+ Education" Font-Bold="True" Font-Size="15pt" CssClass="auto-style1"></asp:Label>
                    <br />
                    <asp:Label ID="lblContent1" runat="server" Font-Size="12pt" Text="At A+ Education, we believe in nurturing young minds and laying the foundation for a lifetime of learning.<br /><br />Our dedicated team of educators is committed to providing exceptional primary tuition that goes beyond the textbooks, fostering a love for learning that lasts a lifetime."></asp:Label>
                </div>
                <div class="auto-style4">
                    <asp:Label ID="lblCourse" runat="server" Text="Course We Provide" Font-Bold="True" Font-Size="15pt" CssClass="auto-style3"></asp:Label>
                    <br />
                    <asp:Label ID="lblContent2" runat="server" Font-Size="12pt" Text="English<br/>Bahasa Malaysia<br/>Chinese<br/>Mathematic<br/>Science<br/>History"></asp:Label>
                </div>
                <div class="auto-style5">
                    <asp:Label ID="lblJoinUs" runat="server" Text="Join Us on the Journey" Font-Bold="True" Font-Size="15pt" CssClass="auto-style2"></asp:Label>
                    <br />
                    <asp:Label ID="lblContent3" runat="server" Font-Size="12pt" Text="We invite you to join us on the journey of educational discovery. 
                        <br/><br/>Whether your child needs extra support in a specific subject or is eager to excel beyond the classroom, we are here to guide them every step of the way.
                        <br/><br/>Contact us today to learn more about our programs and how we can help student reach their full potential.<br />Contact Number: +6012 3456789<br />Email: aPlus@gmail.com"></asp:Label>
                </div>
            </div>
        </div>

  
    </form>

    <style>
        .title {
            text-align: center;
        }
        
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
            background-color:white;
        }

    
        .form {
            display: flex;
            flex-direction: column;
            justify-content: left;
            align-items: flex-start; 
            padding-top: 20px;
            height: 600px;
            max-width: 900px;
            background-color: white;
            margin: 60px 10px;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
        }

        content {
            padding: 25px 10px;
            text-align: justify;
        }
        
        .auto-style1 {
            font-size: 20pt;
            color: #006666;
        }
        
        .auto-style3 {
            color: #006666;
        }
        
        .auto-style4 {
            justify-content: left;
            padding: 25px 10px;
            text-align: justify;
        }
        
        .auto-style5 {
            justify-content: left;
            padding: 25px 10px;
        }
    </style>

</body>
</html>
