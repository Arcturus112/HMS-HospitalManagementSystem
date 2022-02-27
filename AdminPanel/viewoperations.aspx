<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="viewoperations.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.viewoperations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Operation Reports Of Patients"></asp:Label>
    </h1>
    <table>
        <tr>
            <td>
                <span><span>Doctor Name :</span> </span>
            </td>
            <td>
                <asp:DropDownList ID="doctorddl" CssClass="form-control" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <asp:Button ID="appbtn" runat="server" Text="View Operations" OnClick="appbtn_Click" />
    <asp:GridView ID="GridView1" runat="server"  CssClass="form-control" Style="z-index: 102; left: 263px; position: absolute; top: 418px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:Button ID="backbtn" runat="server" Text="Back" OnClick="backbtn_Click"/>

</asp:Content>
