<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="ipregister.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.ipregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">

    <table>
        <tr>
            <td>
                <span>Patientname:</span></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <span>AdmissionID:</span></td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Patient ID:</span></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox></td>
            <td>
                <span>AdmissionDate:</span></td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Gender:</span></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <span>AdmissionTime:</span></td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Age:</span></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <span>Status:</span></td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <span>Address:</span></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox></td>
            <td>
                <span>Symptoms:</span></td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Phoneno(resi):</span></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <span>Department:</span></td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Cardiology</asp:ListItem>
                    <asp:ListItem>Orthopedic</asp:ListItem>
                    <asp:ListItem>Gynacology</asp:ListItem>
                    <asp:ListItem>Dental</asp:ListItem>
                    <asp:ListItem>Opthology</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <span>Phoneno(mob):</span></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <span>AssignedDoctor:</span></td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                    <asp:ListItem>...select...</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <span>Martialstatus:</span></td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <span>Wardno:</span></td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <span>Occupation:</span></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox></td>
            <td>
                <span>Bedno:</span></td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Text="In-Patient Registration"></asp:Label>
    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" /></td>
        </tr>
    </table>

</asp:Content>
