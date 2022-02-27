<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="doctorforgot.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.doctorforgot" %>

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
                <asp:TextBox ID="lidtxt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="pwdbtn" runat="server" CssClass="form-control" Text="Get Your Password" OnClick="pwdbtn_Click" />
            </td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="d-flex justify-content-center m-5">
            <tr>
                <td>Your Password: </td>
                <td>
                    <asp:TextBox ID="pwdtxt" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />

</asp:Content>
