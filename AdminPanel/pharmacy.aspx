<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="pharmacy.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.pharmacy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="PHARMACY"></asp:Label>
    </h1>
    <table>
        <tr>
            <td>
                <span>PatientvType:</span></td>
            <td>
                <asp:DropDownList ID="ptntyp" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>In-Patient</asp:ListItem>
                    <asp:ListItem>Out-Patient</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <span>PatientID:</span></td>
            <td>
                <asp:DropDownList ID="ptntid" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <span>Department:</span></td>
            <td>
                <asp:TextBox ID="dpt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Patient Name:</span></td>
            <td>
                <asp:TextBox ID="ptntname" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Medicine Used:</span></td>
            <td>
                <asp:TextBox ID="mdcnusd" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset"/>
            </td>
        </tr>
    </table>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem NavigateUrl="~/AdminPanel/emphome.aspx" Text="Home" Value="Home"></asp:MenuItem>
        </Items>
    </asp:Menu>

</asp:Content>
