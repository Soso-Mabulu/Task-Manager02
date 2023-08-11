<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assessment2_Practical.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TaskMaster - SignUp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="defaultStyles.css" />
     <!-- Link Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <!-- Link Google Fonts (young, mid-style font) -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            text-align: center;
            height: 30px;
        }
        .auto-style6 {
            text-align: center;
            height: 6px;
        }
        .auto-style7 {
            text-align: center;
            height: 25px;
        }
        .auto-style8 {
            height: 25px;
        }
        .auto-style9 {
            text-align: center;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            text-align: center;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 546px;
        }
        .auto-style14 {
            text-align: center;
            height: 25px;
            width: 546px;
        }
        .auto-style15 {
            text-align: center;
            width: 546px;
        }
        .auto-style16 {
            text-align: center;
            height: 23px;
            width: 546px;
        }
        .auto-style17 {
            text-align: center;
            height: 26px;
            width: 546px;
        }
        .auto-style18 {
            text-align: center;
            height: 22px;
        }
        .auto-style19 {
            text-align: center;
            height: 22px;
            width: 546px;
        }
        .auto-style20 {
            height: 22px;
        }
        .auto-style21 {
            font-size: medium;
        }
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

        .btn-signup {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-signup:hover {
            background-color: #0056b3;
        }

        .login-link {
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

                /* New styles for improved appearance and animations */
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            animation: fadeInUp 1s ease-in-out;
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


 /* Center and round the input fields */
        .centered-input {
            text-align: center;
        }

        .rounded-input {
            width: 100%;
            padding: 8px;
            border-radius: 10px;
            border: 1px solid #ccc;
            outline: none;
        }
        .responsive-image {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Height="221px" CssClass="responsive-image" ImageAlign="Top" ImageUrl="~/images/task-master-logo.PNG" Width="514px" />
                        <br />
                        <asp:Label ID="lblMainTitle" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Height="60px" Text="TASK-MASTER"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="container">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="3">
                        <h2 class="auto-style2">
                            <asp:Label ID="lblErrorMessage" runat="server" CssClass="auto-style21" ForeColor="Red"></asp:Label>
                        </h2>
                        <h2 class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text="Sign In"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td class="centered-input">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="rounded-input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="centered-input">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="centered-input">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSurname" runat="server" CssClass="rounded-input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please enter your surname:"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="centered-input">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="centered-input">
                        <asp:Label ID="lblUsername0" runat="server" Text="EmailAddress:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="rounded-input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter a valid emailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="centered-input">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="centered-input">
                        <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="rounded-input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="centered-input">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="centered-input">
                        <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="rounded-input"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm your password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <div class="container ">
            <table style="width: 100%;">
                <tr>
                    <td class="centered-input">
                        <asp:Button ID="btnSignUp" CssClass="btn btn-primary" runat="server"  OnClick="btnSignUp_Click1" Text="Sign Up" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="centered-input">
                        <asp:Label ID="Label3" runat="server" Text="Already have an account, "></asp:Label>
                        <asp:HyperLink ID="hplLogin" runat="server" NavigateUrl="~/Authentication.aspx"> click here to login</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>