<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Authentication.aspx.cs" Inherits="Assessment2_Practical.Authentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TaskMaster - Login</title>
    <style type="text/css">
        body {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
            animation: fadeInUp 1s ease-in-out;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .form-label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .form-control {
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }

        .btn-login {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .signup-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .responsive-image {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="221px" ImageAlign="Top" CssClass="responsive-image" ImageUrl="~/images/task-master-logo.PNG" Width="510px" />
                        <br />
                        <asp:Label ID="lblMainTitle" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Height="60px" Text="TASK-MASTER"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="3">
                        <h2 class="auto-style2">
                            <asp:Label ID="lblErrorMessage" runat="server" CssClass="auto-style21" ForeColor="Red"></asp:Label>
                        </h2>
                        <h2 class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" Width="229px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Enter A Valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" Width="225px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnLogin" runat="server" Height="35px" OnClick="btnLogin_Click" Text="Login" Width="193px" CssClass="btn-login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Don't have an account yet, "></asp:Label>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx" CssClass="signup-link">Click here to sign up</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
