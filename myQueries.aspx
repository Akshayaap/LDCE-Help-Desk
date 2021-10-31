<%@ Page    Title="LDCE | Dashbord" Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeFile="myQueries.aspx.cs" Inherits="myQueries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table width="100%">
    <tr align="center">
        <td align="center" colspan="2"  >
        <h2 style="text-decoration:underline; font-weight:bold; color:Teal;">List Of My Answered Queries!!</h2>
        <br />
        <br />
        
        
        
            <asp:GridView ID="gvAllMyQueries" AllowPaging="True" PageSize="7"  runat="server" BorderColor="#CC9966" RowStyle-Font-Size="15pt" RowStyle-Font-Bold="true" RowStyle-HorizontalAlign="Left"  EmptyDataText="There are no data records to display." CellPadding="4"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderStyle="None" BorderWidth="1px">
                <Columns>
                        <asp:BoundField DataField="query" SortExpression="query" HeaderStyle-ForeColor="Crimson" HeaderText ="Query">
<HeaderStyle ForeColor="Crimson"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="sts" SortExpression="sts" HeaderStyle-ForeColor="crimson" HeaderText="Status">
<HeaderStyle ForeColor="Crimson"></HeaderStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="answer" SortExpression="answer" HeaderStyle-ForeColor="crimson" HeaderText="Answer">
<HeaderStyle ForeColor="Crimson"></HeaderStyle>
                        </asp:BoundField>
                        
                        
                 </Columns>

                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />

<RowStyle HorizontalAlign="Left" Font-Size="15pt" BackColor="White" ForeColor="#330099"></RowStyle>
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            
            
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:desktop-n0hcg1h.ldce_help_desk %>" SelectCommand="SELECT [query], [sts], [answer] FROM [query] WHERE ([username] = @username)">
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            
            
        </td>
    </tr>
    </table>
</asp:Content>

