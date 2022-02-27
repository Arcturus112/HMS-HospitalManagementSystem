<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="doctorsden.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.doctorsden" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Doctor's Den...."></asp:Label>
    </h1>
    <asp:Menu ID="Menu1" runat="server">
        <Items>
            <asp:MenuItem Text="Appointments" Value="Appointments" NavigateUrl="~/AdminPanel/viewappointments.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Surgerys" Value="Surgerys" NavigateUrl="~/AdminPanel/viewsurgeries.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Patients Info" Value="Patients Info" NavigateUrl="~/AdminPanel/patientinfo.aspx"></asp:MenuItem>
            <asp:MenuItem Text="TestReports"  NavigateUrl="~/AdminPanel/viewtests.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Operation Reports"  NavigateUrl="~/AdminPanel/viewoperations.aspx"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/AdminPanel/doctorlogin.aspx" Text=" Logout" Value=" Logout"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
