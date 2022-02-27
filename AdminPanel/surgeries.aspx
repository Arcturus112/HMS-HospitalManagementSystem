<%@ Page Title="" Language="C#" MasterPageFile="~/Content/HMSMaster.Master" AutoEventWireup="true" CodeBehind="surgeries.aspx.cs" Inherits="HMS_HospitalManagementSystem_.AdminPanel.surgeries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainContent" runat="server">
    <h1 class="d-flex justify-content-center">
        <asp:Label ID="Label1" runat="server" Text="Surgery Information"></asp:Label>
    </h1>
    <table>
        <tr>
            <td>Patient Id
            </td>
            <td>
                <asp:DropDownList ID="pidddl" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="pidddl_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Patient Name</td>
            <td>
                <asp:TextBox ID="pntxt" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Age
            </td>
            <td>
                <asp:TextBox ID="agtxt" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Surgery Date
            </td>
            <td>
                <asp:TextBox ID="sdtxt" runat="server"  CssClass="form-control"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>Department
            </td>
            <td>
                <asp:TextBox ID="deptxt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Doctor
            </td>
            <td>
                <asp:TextBox ID="doctxt" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <asp:Calendar ID="Calendar1" runat="server" CssClass="form-control" Style="z-index: 102; left: 548px; color: white; position: absolute; top: 376px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <SelectorStyle BackColor="#CCCCCC" />
        <WeekendDayStyle BackColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
    </asp:Calendar>
</asp:Content>
