<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET CRUD APP</h1>
        <h3>Please Login Here</h3>
    </div>

        
        <div class="jumbotron">
            <table style="width: 40%; margin:auto;">
                <tr>
                    <td class="auto-style1" style="width: 28%">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td>
                        <asp:TextBox class="txtborder curve" placeholder="Enter Your Username" ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1" style="width: 28%">
                        <br />
                        <asp:Label style="margin-top:40px" ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox style="margin-top:20px" class="txtborder curve" placeholder="Enter Your Password" ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td class="auto-style1" style="width: 28%">&nbsp;</td>
                    <td>
                        <asp:Button style="margin-top:20px; " Class=" curve btn-primary" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Height="28px" Width="103px"></asp:Button></td>
                </tr>
                <tr>
                    <td class="auto-style1" style="width: 28%"></td>
                    <td>
                        <asp:Label  ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>


        </div>
    
    

</asp:Content>
