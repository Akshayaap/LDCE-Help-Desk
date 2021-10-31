<%@ Page Title="LDCE | New Request" Language="C#" MasterPageFile="~/studentMaster.master" AutoEventWireup="true" CodeFile="newRequest.aspx.cs" Inherits="newRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table width="100%">
    
            
        <tr>
       
        
            <td align="center" colspan="2">
            
            
            
            
            
                
                                    <h2 style="color:Teal; text-decoration:underline"> Create a new Request</h2>
               
                     
            </td>
            
        </tr>
        
        
        
        <tr>
                <td align="center" colspan="2" style="font-weight:bold; font-size:14pt;">
               
                
                
                    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                   
                    &nbsp;<asp:Label ID="lblLtime" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    </td>
                    
        </tr>
        
        
        
        <tr>
                
        
           
            <td align="right" style="width: 200px">
                 &nbsp;</td>
            
             <td >        
                
                    &nbsp;</td>
            
        </tr>
        
        
        <tr>
                <td  align="right" style="width: 200px" >
                
               
                
                    <br />
                    <br />
                </td>
                <td  >    
                    
                        <br />
                        <br />
                   
     
                        
               </td>
        </tr>
        
        
        <tr>
        
            
                
               
            
            <td align="right" style="width: 200px">
                
                <asp:Label ID="lblQuery"  Font-Bold="True" Font-Size="14pt" Width="375px" ForeColor="ForestGreen" runat="server" Text="ENTER YOUR QUERY HERE:-" style="vertical-align: middle; text-align: left"></asp:Label>
                
               
               </td>
               <td> 
                                  
                <asp:TextBox ID="txtRequest" runat="server" Font-Bold="true" Font-Size="15pt" TextMode="MultiLine" style="width: 280px" ></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqfvQuery" ControlToValidate="txtRequest"  runat="server" ErrorMessage="Query Field Cannot be Left Blank"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        
        <tr>
                <td align="right" style="width: 200px">
                <br />
               
                    
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" ForeColor="floralwhite" BackColor="crimson" Text="SUBMIT" />
                </td>
                <td align="left" style="width: 548px">
                    
                <br />
              
                   <asp:Button ID="btnCancel" runat="server"  Font-Bold="true" ForeColor="floralwhite" BackColor="crimson" CausesValidation="false"  Text="CANCEL"  />&nbsp;
                   
                </td>
        </tr>
    </table>


</asp:Content>

