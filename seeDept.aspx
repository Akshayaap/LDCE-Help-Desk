<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="seeDept.aspx.cs" Inherits="seeDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h3 style="text-decoration:underline; color:Teal;">List of All Deparments in LDCE</h3>
        <br />
        <br />
        
        
            <asp:GridView ID="gvAssignee" runat="server" AlternatingRowStyle-BackColor="PeachPuff" RowStyle-BackColor="PaleGreen" CellPadding="4" CellSpacing="1" AllowPaging="True" PageSize="5" AllowSorting="True"  DataSourceID="SqlDataSource1" Font-Size="16pt" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
<AlternatingRowStyle BackColor="PeachPuff"></AlternatingRowStyle>
                <Columns><asp:BoundField DataField="d_id" SortExpression="d_id" HeaderText="Department ID"></asp:BoundField>
                        <asp:BoundField DataField="d_name" SortExpression="d_name" HeaderText="Department Name"></asp:BoundField>
                        <asp:BoundField DataField="HOD" SortExpression="HOD" HeaderText="Head of Department" ></asp:BoundField>
                 </Columns>

<RowStyle BackColor="PaleGreen"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [department]" ConnectionString="<%$ ConnectionStrings:desktop-n0hcg1h.ldce_help_desk %>"></asp:SqlDataSource>
            
        </td>
    </tr>
    </table>
</asp:Content>

