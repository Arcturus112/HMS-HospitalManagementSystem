<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="emplogin.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.emplogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Employee Login Here..."></asp:Label>
    </h1>
        <table>
            <tr>
                <td>
                    <span>UserID:</span></td>
                <td>
                    <asp:TextBox ID="lidtxt" CssClass="form-control" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <span>Password:</span></td>
                <td>
                    <asp:TextBox ID="pwdtxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="65px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="New user Signup" Value="New user Signup" NavigateUrl="~/AdminPanel/empsignup.aspx"></asp:MenuItem>
                <asp:MenuItem Text="|Forgot Password?" Value="|Forgot Password?" NavigateUrl="~/AdminPanel/empforgot.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" Text=""></asp:Label>
</asp:Content>
