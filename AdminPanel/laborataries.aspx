<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="laborataries.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.laborataries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Laboratary...."></asp:Label>
    </h1>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem Text="Operation Theater" Value="New Item" NavigateUrl="~/AdminPanel/operationth.aspx"></asp:MenuItem>
            <asp:MenuItem Text="medical Tests" Value="medical Tests" NavigateUrl="~/AdminPanel/medicaltests.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

</asp:Content>
