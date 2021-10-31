<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="seeUsers.aspx.cs" Inherits="seeUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h3 style="text-decoration:underline; color:Teal;">LIST OF CURRENT ASSIGNEES IN THE SYSTEM</h3>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAssignee" runat="server" AlternatingRowStyle-BackColor="PeachPuff" RowStyle-BackColor="PaleGreen" CellPadding="4" CellSpacing="1" AllowPaging="True" PageSize="5" AllowSorting="True"  DataSourceID="SqlDataSource1" Font-Size="16pt" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" DataKeyNames="username">
<AlternatingRowStyle BackColor="PeachPuff"></AlternatingRowStyle>
                <Columns><asp:BoundField DataField="f_name" SortExpression="f_name" HeaderText="Fname"></asp:BoundField>
                        <asp:BoundField DataField="l_name" SortExpression="l_name" HeaderText="Lname"></asp:BoundField>
                        <asp:BoundField DataField="gender" SortExpression="gender" HeaderText="Gender" ></asp:BoundField>
                        <asp:BoundField DataField="username" SortExpression="username" HeaderText="Username" ReadOnly="True" ></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                    <asp:BoundField DataField="emailid" HeaderText="Email" SortExpression="emailid" />
                    <asp:BoundField DataField="d_name" HeaderText="Deparment" SortExpression="dept_name" />
                    <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="sem" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="mob_no" HeaderText="Phone" SortExpression="mob_no" />
                    <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
                 </Columns>

<RowStyle BackColor="PaleGreen"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [std_login]" ConnectionString="<%$ ConnectionStrings:desktop-n0hcg1h.ldce_help_desk %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    </table>
</asp:Content>

