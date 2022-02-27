<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="viewtests.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.viewtests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Test Reports Of Patients"></asp:Label>
    </h1>
    <table>
    <tr>
       <td>
           <span><span>
           Test Type :</span> </span>
       </td>
       <td>
          <asp:DropDownList ID="testddl" runat="server" CssClass="form-control" OnSelectedIndexChanged="pttyddl_SelectedIndexChanged" >
          </asp:DropDownList>
       </td>
    </tr>
    <tr>
       <td>
           <span><span>
           Patient Type :</span> </span>
       </td>
       <td>
          <asp:DropDownList ID="pttyddl" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="pttyddl_SelectedIndexChanged" >
          </asp:DropDownList>
       </td>
    </tr>
    
    <tr>
       <td>
           <span><span>
           Patient Id :</span> </span>
       </td>
       <td>
          <asp:DropDownList ID="pidddl"  CssClass="form-control" runat="server" AutoPostBack="True" >
          </asp:DropDownList>
       </td>
    </tr>
    
    </table>
    <asp:Button ID="appbtn" runat="server" Text="View TestReorts" OnClick="appbtn_Click" />
    <div>
    <asp:GridView ID="GridView1" runat="server"  BackColor="White" CssClass="form-control" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView></div>
    <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click"/>
</asp:Content>
