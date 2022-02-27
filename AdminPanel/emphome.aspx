<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="emphome.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.emphome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Underling........"></asp:Label>
    </h1>
    <asp:Menu ID="Menu1" runat="server" Font-Names="Modern" Font-Size="14pt" ForeColor="Red"
        Height="80px" Style="z-index: 104; left: 96px; position: absolute; top: 336px"
        Width="136px">
        <Items>
            <asp:MenuItem NavigateUrl="~/AdminPanel/laborataries.aspx" Text="Labtechnicians" Value="Labtechnicians"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/pharmacy.aspx" Text="Pharmacy" Value="Pharmacy"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/home.aspx" Text="Home" Value="Home"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/home.aspx" Text="Logout" Value="Logout"></asp:MenuItem>
        </Items>
    </asp:Menu>

</asp:Content>
