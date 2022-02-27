<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="medicaltests.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.medicaltests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Medical Tests"></asp:Label>
    </h1>
    <table id="TABLE1">
        <tr>
            <td>Patient Type
            </td>
            <td>
                <asp:DropDownList ID="pttypeddl" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="pttypeddl_SelectedIndexChanged">
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
                <asp:DropDownList ID="pidddl" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="pidddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Patient Name
            </td>
            <td>
                <asp:TextBox ID="pntxt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Medical Test Type
            </td>
            <td>
                <asp:DropDownList ID="mttddl" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="mttddl_SelectedIndexChanged">
                    <asp:ListItem>...Select...</asp:ListItem>
                    <asp:ListItem>Blood Test</asp:ListItem>
                    <asp:ListItem>Urin Test</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

    </table>
    <asp:Button ID="Button1" runat="server" Text="Ok" OnClick="Button1_Click" />
    <asp:Panel ID="Panel1" runat="server">

        <table>
            <tr>
                <td>Blood Group
                </td>
                <td>
                    <asp:TextBox ID="bgtxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Haemoglobin</td>
                <td>
                    <asp:TextBox ID="hmtxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Blood sugar 
                </td>
                <td>
                    <asp:TextBox ID="bstxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Serum Uric Acid
                </td>
                <td>
                    <asp:TextBox ID="suatxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Report Description
                </td>
                <td>
                    <asp:TextBox ID="rd1txt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>

        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" >

        <table>
            <tr>
                <td>Color
                </td>
                <td>
                    <asp:TextBox ID="colortxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Clarity</td>
                <td>
                    <asp:TextBox ID="clartxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Odor 
                </td>
                <td>
                    <asp:TextBox ID="odtxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Specific gravity
                </td>
                <td>
                    <asp:TextBox ID="sgtxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Glucose
                </td>
                <td>
                    <asp:TextBox ID="gltxt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Report Description
                </td>
                <td>
                    <asp:TextBox ID="rd2txt" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>

        </table>
    </asp:Panel>
    <table>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" /></td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" /></td>
        </tr>
    </table>

</asp:Content>
