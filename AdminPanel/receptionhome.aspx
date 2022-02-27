<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="receptionhome.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.receptionhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Reception..........."></asp:Label>
    </h1>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem Text="Patient Info" Value="Patient Info" NavigateUrl="~/AdminPanel/patientinfo.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Appointments" Value="Appointments" NavigateUrl="~/appointments.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Surgeries" Value="Surgeries" NavigateUrl="~/AdminPanel/surgeries.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>

</asp:Content>
