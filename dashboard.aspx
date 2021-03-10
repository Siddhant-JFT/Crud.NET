<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="dashboard.aspx.cs" Inherits="CRUD.dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <br />
        <asp:Button ID="btnLogOut" Class="curve btn-primary" runat="server" Text="Logout" OnClick="btnLogOut_Click" Width="85px" />
    </div>
    <div style="margin-top: 20px; margin-bottom: 10px;" class="jumbotron">

        <table class="auto-style1">
            <tr>
                <td class="auto-style18" style="width: 170px; height: 39px; margin-left: 20px;">Name</td>
                <td class="auto-style17" style="height: 39px; width: 122px; margin-left: 31px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age</td>
                <td class="auto-style18" style="height: 39px; margin-left: 38px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Number</td>
                <td class="auto-style18" style="height: 39px">&nbsp;&nbsp;&nbsp;&nbsp; Designation</td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 170px">
                    <asp:TextBox class="txtborder curve" ID="nameBox" runat="server" placeholder="Enter Your Fullname"></asp:TextBox>
                </td>
                <td class="auto-style13" style="width: 122px">
                    <asp:TextBox class="txtborder curve" ID="ageBox" runat="server" Style="margin-left: 31px" Width="135px" placeholder="Enter Your Age"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox class="txtborder curve" ID="contactBox" runat="server" Style="margin-left: 38px;" placeholder="Enter Your Contact No"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList class="curve" Style="border: 1px solid black;" ID="designationList" runat="server">
                            <asp:ListItem>General Manager</asp:ListItem>
                            <asp:ListItem>Senior Manager</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Assistant Manager</asp:ListItem>
                            <asp:ListItem>Intern</asp:ListItem>
                        </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" style="width: 199px"></td>
                <td class="auto-style15" style="width: 13px">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button Style="margin-top: 20px" Class="curve btn-primary" ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="108px" />
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style8" style="width: 199px">&nbsp;</td>
                <td class="auto-style15" style="width: 13px">&nbsp;</td>
                <td class="auto-style15">
                    <br />
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" Width="108px" />
                </td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" style="width: 199px">&nbsp;</td>
                <td class="auto-style15" style="width: 13px">&nbsp;</td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>

        <div class="flex-center" style="margin-left: 76px">
            <table class="auto-style12" style="margin-left: 0px">
                <tr>
                    <td>
                        <asp:GridView  ID="GridView1" runat="server" Height="155px" Width="92%" CssClass="auto-style9 auto-margin">
                        </asp:GridView>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>
