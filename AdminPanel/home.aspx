<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <asp:Menu ID="Menu2" runat="server">
        <Items>
            <asp:MenuItem Text="|   Login" Value="New Item" NavigateUrl="~/AdminPanel/Administration.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   Laboratory" Value="New Item" NavigateUrl="~/AdminPanel/laborataries.aspx" > </asp:MenuItem>
            <asp:MenuItem Text="|   Patient Registration" Value="New Item" NavigateUrl="~/AdminPanel/registration.aspx">
            </asp:MenuItem>
            <asp:MenuItem Text="|   DischargeSummary" Value="|   DischargeSummary" NavigateUrl="~/AdminPanel/dischargesummary.aspx"></asp:MenuItem>
            <asp:MenuItem Text="|   Reception" Value="|   Reception" NavigateUrl="~/AdminPanel/receptionhome.aspx" ></asp:MenuItem>
            <asp:MenuItem Text="|   Medicalstore" Value="|   Medicalstore" NavigateUrl="~/AdminPanel/pharmacy.aspx"></asp:MenuItem>
        </Items>
    </asp:Menu>
</asp:Content>
