<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assessment2_Practical.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TaskMaster - Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Navbar styling */
        ul.navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #87CEEB; /* Sky blue color */
            border-top: 3px dotted #55A8DB; /* Dotted border */
            border-bottom: 3px dotted #55A8DB; /* Dotted border */
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        ul.navbar li {
            float: left;
        }

        ul.navbar li a {
            display: block;
            color: #333;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            transition: background-color 0.3s ease, border-radius 0.3s ease;
        }

        ul.navbar li a:hover {
            background-color: #55A8DB;
            border-radius: 30px; /* Rounded border on hover */
        }

        /* Task Master header styling */
        .taskmaster {
            background-color: #87CEEB;
            color: #FFF;
            font-size: 24px;
            font-weight: bold;
            padding: 10px;
            text-align: center;
        }

        /* Main content container */
        .content {
            padding: 20px;
        }

        /* Button styling */
        .rounded-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #87CEEB;
            color: #FFF;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .rounded-button:hover {
            background-color: #55A8DB;
            transform: scale(1.05);
        }

        /* GridView styling */
        .gridview {
            width: 100%;
            max-width: 800px; /* Adjust the maximum width as needed */
            margin: 0 auto; /* Center the GridView horizontally */
        }

        /* Calendar styling */
        .calendar {
            width: 100%;
            max-width: 400px; /* Adjust the maximum width as needed */
            margin: 0 auto; /* Center the calendar horizontally */
            border: 1px solid #DDD;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="taskmaster">
            <h1>Task Master</h1>
        </div>

        <ul class="navbar">
            <li><a href="#">Home</a></li>
            <li><a href="TaskDetail.aspx">Task Details</a></li>
            <li><a href="Profile.aspx">Profile</a></li>
            <li style="float:right"><a href="default.aspx">Logout</a></li>
        </ul>

        <div class="content">
            <h2>Overview</h2>
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br /><br />

            <table class="gridview">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
                    </td>
                </tr>
            </table>

            <br /><br />

            <div style="text-align: center;">
                <asp:Button ID="btnAddTask" runat="server" CssClass="rounded-button" Text="Add New Activity" OnClick="Button1_Click" />
                <asp:Button ID="btnViewTaskDetails" runat="server" CssClass="rounded-button" OnClick="btnViewTaskDetails_Click" Text="View Task Details" />
            </div>

            <br /><br />

            <div class="calendar">
                <asp:Calendar ID="Calendar1" runat="server" CssClass="calendar" OnSelectionChanged="Calendar1_SelectionChanged1"></asp:Calendar>
            </div>
        </div>
    </form>
</body>
</html>
