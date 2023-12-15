<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="AssignmentNew.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />
        
        <div>
            <div class="auto-style1">
                <br />
                <asp:Label ID="lblFAQ" runat="server" Text="Frequently Ask Question" Font-Bold="True" Font-Size="35pt" CssClass="centered-label" style="color: #006666"></asp:Label>
                <br />
                <br />
            </div>

            <div class="container">
                <asp:UpdatePanel runat="server" ID="updatePanel" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="accordion">
                            <div class="accordion-item">
                                <strong>
                                    <asp:Button ID="btnFAQ1" runat="server" Text=" How do I register for a course?" CssClass="auto-style8" Height="40px" Width="800px" OnClick="btnFAQ1_Click1" />
                                </strong>
                        
                                <div class="answer">
                                    <strong>
                                        <asp:Label ID="lblAns1" runat="server" CssClass="auto-style2"></asp:Label>
                                    </strong>
                                </div>
                            </div>
                    
                            <div class="accordion-item">
                                <strong>
                                    <asp:Button ID="btnFAQ2" runat="server" Text=" What information do I need to provide during the registration process?" CssClass="auto-style7" Height="40px" Width="800px" OnClick="btnFAQ2_Click" />
                                </strong>
                                <div class="answer">
                                    <strong>
                                        <asp:Label ID="lblAns2" runat="server"></asp:Label>
                                    </strong>
                                </div>
                            </div>
                    
                            <div class="accordion-item">
                                <strong>
                                    <asp:Button ID="btnFAQ3" runat="server" Text=" How can I pay for the course?" CssClass="auto-style7" Height="40px" Width="800px" OnClick="btnFAQ3_Click" />
                                </strong>
                                <div class="answer">
                                    <strong>
                                        <asp:Label ID="lblAns3" runat="server"></asp:Label>
                                    </strong>
                                </div>
                            </div>
                    
                            <div class="accordion-item">
                                <strong>
                                    <asp:Button ID="btnFAQ4" runat="server" Text=" Can I register for multiple courses at once?" CssClass="auto-style7" Height="40px" Width="800px" OnClick="btnFAQ4_Click" />
                                </strong>
                                <div class="answer">
                                    <strong>
                                        <asp:Label ID="lblAns4" runat="server"></asp:Label>
                                    </strong>
                                </div>
                            </div>
                   
                            <div class="accordion-item">
                                <strong>
                                    <asp:Button ID="btnFAQ5" runat="server" Text=" Is there a deadline for course registration?" Height="40px" Width="800px" CssClass="auto-style7" OnClick="btnFAQ5_Click" />
                                </strong>
                                <div class="answer">
                                    <strong>
                                        <asp:Label ID="lblAns5" runat="server"></asp:Label>
                                    </strong>
                                </div>
                            </div>
                     
                            <div class="accordion-item">
                                <strong>
                                    <asp:Button ID="btnFAQ6" runat="server" Text=" Can I transfer my registration to another person?" CssClass="auto-style7" Height="40px" Width="800px" OnClick="btnFAQ6_Click" />
                                </strong>
                                <div class="answer">
                                    <strong>
                                        <asp:Label ID="lblAns6" runat="server"></asp:Label>
                                    </strong>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
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

        .auto-style1 {
            text-align: center;
            width: 900px;
        }


        .auto-style2 {
            font-size: 12pt;
        }

        .auto-style5,
        .auto-style6 {
            font-size: 12pt;
            font-weight: bold;
            text-align: left;
            display: block;
            max-width: 800px;
            margin: 0 auto;
        }

        .answer {
            text-align: left;
            max-width: 800px;
            margin-top: 10px;
            color: #006666;
        }

        .container {
            padding-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 750px;
            max-width: 900px;
            background-color: white;
            margin: 60px 10px;
            box-shadow: 0 2px 16px rgba(0, 0, 0, .1);
            border: 2px solid #006666;
            color: #006666;
        }
       
        .accordion-item {
            margin: 20px;
            height: 100px;
            overflow: hidden;
            width: 800px;
        }
        
        .auto-style7 {
            font-size: 12pt;
            font-weight: bold;
            text-align: left;
            display: block;
            width: 100%;
            max-width: 800px;
            height: 35px;
            color: #006666;
            margin: 0 auto;
            background-color:aliceblue;
            border: 1px solid #006666;
        }

        .auto-style8 {
            font-size: 12pt;
            font-weight: bold;
            text-align: left;
            display: block;
            width: 100%;
            max-width: 800px;
            height: 35px;
            margin: 0 auto;
            color: #006666;
            background-color:aliceblue;
            border: 1px solid #006666;
        }
    </style>

</body>
</html>
