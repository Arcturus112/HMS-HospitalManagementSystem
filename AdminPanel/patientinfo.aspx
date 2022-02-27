<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="patientinfo.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.patientinfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Patient Info........."></asp:Label>
    </h1>
    <table>
        <tr>
            <td>
                <span>Enter Patient ID:</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Select Type:</span></td>
            <td>
                <asp:DropDownList ID="type" runat="server" AutoPostBack="True" >
                    <asp:ListItem>....select....</asp:ListItem>
                    <asp:ListItem>In-Patient</asp:ListItem>
                    <asp:ListItem>Out-Patient</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
    

<div>

 <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
     <RowStyle BackColor="#EFF3FB" />
     <EditRowStyle BackColor="#2461BF" />
    </asp:GridView></div>
    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
</asp:Content>
