<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="operationth.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.operationth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Operation Theater..."></asp:Label>
    </h1>
    <table id="TABLE1">
        <tr>
            <td>Patient Type
            </td>
            <td>
                <asp:DropDownList ID="pttypeddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="pttypeddl_SelectedIndexChanged">
                    <asp:ListItem>...Select...</asp:ListItem>
                    <asp:ListItem>In-Patient</asp:ListItem>
                    <asp:ListItem>Out-Patient</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Patient Id
            </td>
            <td>
                <asp:DropDownList ID="pidddl" runat="server" AutoPostBack="True" OnSelectedIndexChanged="pidddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Patient Name
            </td>
            <td>
                <asp:TextBox ID="pntxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Refered Doctor
            </td>
            <td>
                <asp:TextBox ID="doctxt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Operation Type
            </td>
            <td>
                <asp:DropDownList ID="optddl" runat="server">
                    <asp:ListItem>...Select...</asp:ListItem>
                    <asp:ListItem>Heart</asp:ListItem>
                    <asp:ListItem>Brain</asp:ListItem>
                    <asp:ListItem>Lungs</asp:ListItem>
                    <asp:ListItem>Bone</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Operation Result
            </td>
            <td>
                <asp:DropDownList ID="orddl" runat="server" OnSelectedIndexChanged="pttypeddl_SelectedIndexChanged">
                    <asp:ListItem>...Select...</asp:ListItem>
                    <asp:ListItem>Success</asp:ListItem>
                    <asp:ListItem>Fail</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="sbtn" runat="server" Text="Submit" OnClick="sbtn_Click" /></td>
            <td>
                <asp:Button ID="canbtn" runat="server" Text="Cancel" /></td>
        </tr>
    </table>
</asp:Content>
