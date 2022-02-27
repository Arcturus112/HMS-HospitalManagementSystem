<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="outpatient.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.outpatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Out-Patient Details "></asp:Label>
    </h1>

    <table>
        <tr>
            <td><span>Patient Name :</span></td>
            <td>
                <asp:TextBox ID="pntxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span>Patient Id :</span></td>
            <td>
                <asp:TextBox ID="pidtxt" Enabled="false" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span>Age :</span></td>
            <td>
                <asp:TextBox ID="agetxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span>Gender :</span></td>
            <td>
                <asp:DropDownList ID="gddl" runat="server" CssClass="form-control">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td><span>Address :</span></td>
            <td>
                <asp:TextBox ID="addtxt" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span>Assigned Doctor :</span></td>
            <td>
                <asp:DropDownList ID="doctorddl" runat="server" CssClass="form-control">
                    <asp:ListItem>Dr.venkateswarao</asp:ListItem>
                    <asp:ListItem>Dr.Ramarao</asp:ListItem>
                    <asp:ListItem>Dr.Teja</asp:ListItem>
                    <asp:ListItem>Dr.Chinnareddy</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td><span>Phoen no(Home) :</span></td>
            <td>
                <asp:TextBox ID="restxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span>Phone no(mobile) :</span></td>
            <td>
                <asp:TextBox ID="mobtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td><span>Op Date :</span></td>
            <td>
                <asp:TextBox ID="optxt" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>

        <tr>
            <td><span>Department :</span></td>
            <td>
                <asp:DropDownList ID="depddl" runat="server" CssClass="form-control">
                    <asp:ListItem>Orthopedic</asp:ListItem>
                    <asp:ListItem>Pediatric</asp:ListItem>
                    <asp:ListItem>Neurology</asp:ListItem>
                    <asp:ListItem>Urology</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>


    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel"/></td>

        </tr>
    </table>

</asp:Content>
