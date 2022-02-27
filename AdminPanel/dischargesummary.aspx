<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="dischargesummary.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.dischargesummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Discharge Summary......."></asp:Label>
    </h1>
    <table>
        <tr>
            <td>
                <span>Enter Patient ID:</span></td>
            <td>
                <asp:DropDownList ID="PID" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="PID_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <span>Patient Name:</span></td>
            <td>
                <asp:TextBox ID="TextBox1" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Joining Date:</span></td>
            <td>
                <asp:TextBox ID="TextBox2" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Discharge Date:</span></td>
            <td>
                <asp:TextBox ID="TextBox3" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Summary Report" /></td>
        </tr>
    </table>
    <asp:Button ID="Button2" runat="server" Text="...." OnClick="Button2_Click" />
    <asp:Calendar ID="Calendar1" runat="server"  OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>

</asp:Content>
