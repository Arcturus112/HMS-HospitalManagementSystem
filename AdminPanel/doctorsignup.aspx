<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="doctorsignup.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.doctorsignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text=" Register Here "></asp:Label>
    </h1>
    <table>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="nametxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="nametxt">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Login Id</td>
            <td>
                <asp:TextBox ID="lidtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Login Id" ControlToValidate="lidtxt">*</asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="pwdtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pwdtxt" ErrorMessage="Enter Password">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="conpwdtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwdtxt" ControlToValidate="conpwdtxt" ErrorMessage="Not Matching">*</asp:CompareValidator></td>
        </tr>
        <tr>
            <td>Department</td>
            <td>
                <asp:DropDownList ID="depddl" runat="server" CssClass="form-control">
                    <asp:ListItem>----Select----</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Neurology</asp:ListItem>
                    <asp:ListItem>Opthalmology,</asp:ListItem>
                    <asp:ListItem>Nephrology</asp:ListItem>
                    <asp:ListItem>Surgery</asp:ListItem>
                    <asp:ListItem>Pediatrics</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="depddl"
                    ErrorMessage="Enter Your Department" Style="position: relative">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Specialization</td>
            <td>
                <asp:DropDownList ID="speddl" runat="server" CssClass="form-control">
                    <asp:ListItem>----Select----</asp:ListItem>
                    <asp:ListItem>Pulmonology</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Neurology</asp:ListItem>
                    <asp:ListItem>Nephrology</asp:ListItem>
                    <asp:ListItem>Opthalmology</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="speddl" ErrorMessage="Specialization">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>
                <asp:TextBox ID="phtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="addtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>E-Mail</td>
            <td>
                <asp:TextBox ID="emtxt" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emtxt" ErrorMessage="Incorrect Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="subbtn" runat="server" Text="Submit" OnClick="subbtn_Click" /></td>
            <td>
                <asp:Button ID="Resbtn" runat="server" Text="Reset" OnClick="Resbtn_Click" /></td>
            <td>
                <asp:Button ID="canbtn" runat="server" Text="Cancel" OnClick="canbtn_Click" /></td>
        </tr>
    </table>

</asp:Content>
