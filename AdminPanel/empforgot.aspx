<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="empforgot.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.empforgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Forgot Password....."></asp:Label>
    </h1>
    <table>
        <tr>
            <td>Enter Your Login Id</td>
            <td>
                <asp:TextBox ID="lidtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="pwdbtn" runat="server" Text="Get Your Password" OnClick="pwdbtn_Click" /></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="d-flex justify-content-center">
            <tr>
                <td>Your Password</td>
                <td>
                    <asp:TextBox ID="pwdtxt" runat="server"  CssClass="form-control"></asp:TextBox></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click"/>
</asp:Content>
