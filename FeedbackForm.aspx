<%@ Page Title="LDCE | Feedback" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="FeedbackForm.aspx.cs" Inherits="FeedbackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr align="center">
        <td align="center">
        
        <h3 style=" text-decoration:underline;color:Teal;">FEEDBACK DETAILS</h3>
        <br />
        <br />
        
            <asp:GridView ID="gvFeedback" runat="server" Font-Bold="true" CellPadding="4" CellSpacing="1" BorderStyle="Solid" BorderColor="BlueViolet" AllowPaging="true" PageSize="5"  DataSourceID="SqlDataSource1" Font-Size="Medium" EmptyDataText="There are no data records to display."  AutoGenerateColumns="False">
            
                <Columns>
                        
                        <asp:BoundField DataField="FirstName" SortExpression="FirstName" HeaderText="FirstName"></asp:BoundField>
                        <asp:BoundField DataField="LastName" SortExpression="LastName" HeaderText="LastName"></asp:BoundField>
                        <asp:BoundField DataField="UserName" SortExpression="UserName" HeaderText="UserName" ></asp:BoundField>
                        <asp:BoundField DataField="Comments" SortExpression="Comments" HeaderText="Comments" ></asp:BoundField>
                        <asp:HyperLinkField SortExpression="FIRSTNAME"   HeaderText="FIRSTNAME" DataNavigateUrlFields="UserName" DataNavigateUrlFormatString="specificUserFeedback.aspx?UserName={0}"  NavigateUrl="~/specificUserFeedback.aspx" Text="Details"  />
                        
                </Columns>
                
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ></asp:SqlDataSource>
            
        </td>
    </tr>
</table>
</asp:Content>

