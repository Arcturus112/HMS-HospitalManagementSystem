<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="viewsurgeries.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.viewsurgeries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Surgery Info......."></asp:Label>
    </h1>
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
    <asp:Button ID="appbtn" runat="server" Text="View Surgeries" OnClick="appbtn_Click" />
    <asp:GridView ID="GridView1" runat="server" Style="z-index: 102; left: 176px; position: absolute; top: 392px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:Button ID="backbtn" runat="server" Text="Back" OnClick="backbtn_Click" />

</asp:Content>
