<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="Administration.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Administration.."></asp:Label>
    </h1>
    <asp:Menu ID="Menu1" runat="server" Font-Bold="true" Width="96px">
        <Items>
            <asp:MenuItem Text="Doctors" Value="Doctors" NavigateUrl="~/AdminPanel/doctorlogin.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Employees" Value="Employees" NavigateUrl="~/AdminPanel/emplogin.aspx"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/home.aspx" Text="Home" Value="Home"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
