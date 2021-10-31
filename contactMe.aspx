<%@ Page Title="LDCE | Contact Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactMe.aspx.cs" Inherits="contactMe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table width="100%">
    <tr>
                <td align="center">
               
                <h2 style="color:Teal; text-decoration:underline; font-family:Lucida Bright; height:100px">....CONTACT US....</h2>
                
                </td>
    </tr>
    
        <tr>
                <td align="center">
                 <asp:ImageButton    BorderColor="Black" ID="vvp1" runat="server" ImageUrl="~/images/pics/ld.jpg
                     "/>
                </td>
            
        </tr>
        
        <tr>
            <td align="center">
            <p style=" font-size:14pt; text-decoration:underline;">
                OUR ADDRESS
            </p>
                       <asp:HyperLink runat="server" href="ldce.ac.in">LD COLLEGE OF ENGINEERING</asp:HyperLink> <br />
                        NO 120,CIRCULAR ROAD,<br />
                UNIVERSITY AREA,OPP<br />
                NAVARANGPURA, AHMEDABAD-380015.<br />
                        <br />
                        
                        <p style="text-decoration:underline; font-size:14pt;">
                        
                            OUR CONTACT NO'S:<br />
                        </p>
                        
                        <p style="font-size:12pt;">
                            PHONE : 079 2630 2887<br />
                            EMAIL : <a href="mailto:ldce_ciiilp@yahoo.com">ldce_ciiilp@yahoo.com</a></p>
                <p style="font-size:12pt;">
                        <br />
                        OUR WEBSITE:<br />
                        </p>
                            <asp:HyperLink runat="server" ID="hypWeb" ForeColor="blue">www.ldce.ac.in</asp:HyperLink>
                        
            </td>
            
            </tr>
        
        <tr>
            <td align="center">
                &nbsp;</td>
            
            </tr>
        
    </table>

</asp:Content>

