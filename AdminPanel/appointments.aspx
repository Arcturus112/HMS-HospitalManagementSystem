<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="appointments.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Rendezvous...."></asp:Label>
    </h1>
    <table>
        <tr>
            <td>Patient Id
            </td>
            <td>
                <asp:DropDownList ID="pidddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="pidddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Patient Name</td>
            <td>
                <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Age
            </td>
            <td>
                <asp:TextBox ID="agtxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Department
            </td>
            <td>
                <asp:TextBox ID="deptxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Doctor
            </td>
            <td>
                <asp:TextBox ID="doctxt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem NavigateUrl="~/AdminPanel/viewappointments.aspx" Text="View Appointments" Value="View Appointments"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/doctorsden.aspx" Text="doctorsden"></asp:MenuItem>
        </Items>
    </asp:Menu>

</asp:Content>
