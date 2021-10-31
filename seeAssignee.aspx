<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="seeAssignee.aspx.cs" Inherits="seeAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h3 style="text-decoration:underline; color:Teal;">List of Current Assignees in the System</h3>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAssignee" runat="server" AlternatingRowStyle-BackColor="PeachPuff" RowStyle-BackColor="PaleGreen" CellPadding="4" CellSpacing="1" AllowPaging="True" PageSize="5" AllowSorting="True"  DataSourceID="SqlDataSource1" Font-Size="16pt" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
<AlternatingRowStyle BackColor="PeachPuff"></AlternatingRowStyle>
                <Columns><asp:BoundField DataField="f_name" SortExpression="f_name" HeaderText="Fname"></asp:BoundField>
                        <asp:BoundField DataField="l_name" SortExpression="l_name" HeaderText="Lname"></asp:BoundField>
                        <asp:BoundField DataField="gender" SortExpression="gender" HeaderText="Gender" ></asp:BoundField>
                        <asp:BoundField DataField="username" SortExpression="username" HeaderText="Uusername" ></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                    <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                 </Columns>

<RowStyle BackColor="PaleGreen"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [assignee]" ConnectionString="<%$ ConnectionStrings:desktop-n0hcg1h.ldce_help_desk %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    </table>
</asp:Content>

