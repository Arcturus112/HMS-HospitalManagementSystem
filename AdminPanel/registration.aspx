<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Register Here..."></asp:Label>
    </h1>
    <asp:Menu ID="Menu1" runat="server">
        <items>
            <asp:MenuItem NavigateUrl="~/AdminPanel/ipregister.aspx" Text="In-Patient" Value="In-Patient"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/outpatient.aspx" Text="Out-Patient" Value="Out-Patient"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/home.aspx" Text="Home" Value="Home"></asp:MenuItem>
        </items>
    </asp:Menu>
</asp:Content>
