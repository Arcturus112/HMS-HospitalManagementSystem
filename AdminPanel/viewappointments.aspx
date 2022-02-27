<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="viewappointments.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.viewappointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Rendezvous Of Patients"></asp:Label>
    <table>
        <tr>
            <td>
                <span><span>Doctor Name :</span> </span>
            </td>
            <td>
                <asp:DropDownList ID="doctorddl" runat="server"  CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="doctorddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="appbtn" runat="server" Text="View Appointments" OnClick="appbtn_Click" />
    <asp:GridView ID="GridView1" runat="server" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:Button ID="backbtn" runat="server" Text="Back" OnClick="backbtn_Click"/>

</asp:Content>
