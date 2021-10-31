<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="requestArrivedForAdmin.aspx.cs" Inherits="requestArrivedForAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table width="100%">
            <tr>
                        <td align="center" style="height: 100px">
                        
                                  <h3 style="text-decoration:underline; color:Teal;">  NEW REQUEST ARRIVED!!! </h3>
                                    <br />
                                    <br />
                        </td>
            </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="gvRequest" BorderStyle="None" BorderColor="#CC9966" AllowSorting="True" runat="server" AllowPaging="True" PageSize="5"  DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False" Font-Bold="True" Font-Names="Consolas" Font-Size="Larger" DataKeyNames="q_id" BackColor="White" BorderWidth="1px" CellPadding="4">
                <Columns>
                        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="q_id" SortExpression="q_id" HeaderText="Query ID" InsertVisible="False" ReadOnly="True">
<ItemStyle HorizontalAlign="Left"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="username" SortExpression="username" HeaderText="username">
<ItemStyle HorizontalAlign="Left"></ItemStyle>
                        </asp:BoundField>
                    <asp:BoundField DataField="query" HeaderText="Query" SortExpression="query" />
                    <asp:BoundField DataField="sts" HeaderText="Status" SortExpression="sts" />
                    <asp:BoundField DataField="answer" HeaderText="Answer" SortExpression="answer" />
                 </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:desktop-n0hcg1h.ldce_help_desk %>" SelectCommand="SELECT * FROM [query]" ></asp:SqlDataSource>
            
        </td>
    </tr>
    
</table>


</asp:Content>

