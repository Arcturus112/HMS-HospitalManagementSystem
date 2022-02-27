<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="doctorlogin.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.doctorlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Doctors Login Here..."></asp:Label>
    </h1>
    <table>
        <tr>
            <td>
                <span>UserID:</span></td>
            <td>
                <asp:TextBox ID="lidtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Password:</span></td>
            <td >
                <asp:TextBox ID="pwdtxt" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
        <Items>
            <asp:MenuItem Text="New user Signup" Value="New user Signup" NavigateUrl="~/AdminPanel/doctorsignup.aspx"></asp:MenuItem>
            <asp:MenuItem Text="| Forgot Password?" Value="| Forgot Password?" NavigateUrl="~/AdminPanel/doctorforgot.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" Text="" ></asp:Label>
</asp:Content>
