<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Footer.aspx.cs" Inherits="AssignmentNew.Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="footer">
            <div>
                <hr />
                <br />
            </div>
            <div class="location">
                Location :<br />
                A+ Education<br />
                62-1, Jalan 8/23e,<br />
                Taman Danau Kota,
                <br />
                53300 Kuala Lumpur, <br />
                Wilayah Persekutuan Kuala Lumpur<br />
                <br />
            </div>
            <div class="contact us">
                Phone :<br />
                03-23212034<br />
                019-2343242 (Ms.Ng)
            </div>
            <div class="clearfix"></div>
        </div>
    </form>
</body>
</html>

<style>
    .footer {
        background-color: #D6CED6;
    }

    .location {
        text-align: center;
        float: left;
        width: 50%;
    }

    .contact {
        text-align: center;
        float: right;
        width: 50%;
    }

    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }
</style>