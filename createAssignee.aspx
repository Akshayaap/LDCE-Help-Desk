<%@ Page Title="LDCE | Create Assignee" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="createAssignee.aspx.cs" Inherits="createAssignee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%"  style="text-align:justify"  >
    <tr align="center" >
    
                <td align="center" style="color:Teal; text-decoration:underline; height: 138px;" colspan="2">
                <br />
                <br />
                    <h3>    CREATE A NEW ASSIGNEE NOW!!!</h3>
                        <br />
                        <br />
                </td>
    </tr>
    
            <tr align="center">
            <td  style="width: 550px; background-color:Transparent; height: 26px;" align="right" valign="bottom" >
            <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
            

            
                <asp:Label ID="lblFname" runat="server" Text="FirstName"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtFname"  runat="server" EnableViewState="false"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rqfvFname" runat="server" ErrorMessage="FIRST NAME CANNOT BE NULL" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="revFName" runat="server" ErrorMessage="Enter only text in first name !" ControlToValidate="txtFname" ValidationExpression= "[a-zA-Z]{1,20}"></asp:RegularExpressionValidator>
               
               
            </td>
    </tr>
        
    
    
                <tr align="center">
            <td align="right"><span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
            

            
                <asp:Label ID="lblLname" runat="server" Text="LastName"></asp:Label>     
            </td>
            <td align="left">
                <asp:TextBox ID="txtLname"  runat="server" EnableViewState="false"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="FIRST NAME CANNOT BE NULL" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Enter only text in first name !" ControlToValidate="txtLname" ValidationExpression= "[a-zA-Z]{1,20}"></asp:RegularExpressionValidator>
               
               
            </td>
    </tr>
    
    
    
       
        
            <tr>       
            <td align="right">
                    <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
                    <asp:Label ID="lblAsiUname" runat="server" Text="User Name"></asp:Label>
                    
                    
            </td>
            
            <td>
                    <asp:TextBox ID="txtAsiUname" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="rqfvAsiUname" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtAsiUname"></asp:RequiredFieldValidator>
                    
                    
            </td>
            
            
        </tr>
        <tr>
            <td align="right"><span style="color:Red; font-size:10pt; font-family:Arial;">#</span>
            
            
                <asp:Label ID="lblGender" runat="server" Text="GENDER" Height="19px"></asp:Label>     
            </td>
            
            <td align="left">
                    <asp:RadioButton  Text="MALE" GroupName="rbtGender" ID="rbtMale" runat="server" />
                    <asp:RadioButton  Text="FEMALE" GroupName="rbtGender" ID="rbtFemale" runat="server" />
            </td>

        </tr>
        <tr>
                            <td align="right">
                                <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
                                  <asp:Label ID="lblPswd" runat="server" Text="Password"></asp:Label>
                                    
                            </td>
                            
                            <td>
                                  <asp:TextBox ID="txtPswd" TextMode="Password" runat="server"></asp:TextBox>
                                  
                                  <asp:RequiredFieldValidator ID="rqfvPswd" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtPswd"></asp:RequiredFieldValidator>
                            </td>
        
        
        </tr>
        
        <tr>
                        <td align="right">
                            <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
                                  <asp:Label ID="lblCopswd" runat="server" Text="Confirm Password"></asp:Label>  
                            </td>
                            
                            <td>
                                  <asp:TextBox ID="txtCopswd" TextMode="Password" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="rqfvCopswd" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtCopswd"></asp:RequiredFieldValidator>
                                  <asp:CompareValidator ID="cvPswd" runat="server" ControlToCompare="txtPswd" ControlToValidate="txtCopswd" ErrorMessage="BOTH PASSWORD'S DO NOT MATCH."  Operator="Equal" ></asp:CompareValidator>
                                  
                            </td>
        
        </tr>
        <tr>
            <td align="right">
                <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
                <asp:Label ID="lblphone" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPhone" TextMode="Number" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr >
            <td align="right">
                <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
                 <asp:Label ID="lblEmail" runat="server" Text="E-mail ID"></asp:Label>  
            </td>
            <td>

                <asp:TextBox ID="txtEmail" TextMode="singleLine" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                  
            </td>
        </tr>
        
        <tr>
        <td align="right">
            <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
            <asp:Label ID="lblDob" runat="server" Text="Date Of Birth"></asp:Label>
        </td>
        <td align="left">
        
               
                 
                 <asp:TextBox ID="txtdob" MaxLength="10" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field Cannot Be Left Blank" ControlToValidate="txtdob"></asp:RequiredFieldValidator>
                                  
        </td>
        
        
        
            
        </tr>
        <tr>
                <td align="right">
                <span style=" color:Red; font-size:10pt; font-family:Arial;">#</span>
                <asp:Label ID="lblDept" runat="server" Text="Department Name"></asp:Label>
                
                </td>
        
        
            <td align="left">
                <asp:DropDownList ID="ddlDept" runat="server">
                
                <asp:ListItem>Mechanical Engg</asp:ListItem>
                <asp:ListItem>Electrical Engg</asp:ListItem>
                <asp:ListItem>Chemical Engg</asp:ListItem>
                <asp:ListItem>Computer Engg</asp:ListItem>
                <asp:ListItem>Biotechnology</asp:ListItem>
                <asp:ListItem>Civil Engg</asp:ListItem>
                <asp:ListItem>Information & Technology</asp:ListItem>
                <asp:ListItem>Electronics & Communication</asp:ListItem>
                
                </asp:DropDownList>
                
                <asp:RequiredFieldValidator ID="rqfDeptname" runat="server" ErrorMessage="Plz enter department name" ControlToValidate="ddlDept"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblAdd" Text="Address" runat="server"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="txtAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
                
                <td align="right">
                <br />
                    <asp:Button ID="btnSubmit" runat="server" Font-Bold="true" Font-Size="12pt" ForeColor="floralwhite" BackColor="crimson" Text="Create Assignee" OnClick="btnSubmit_Click"  />
                </td>
                <td align="left">
                <br />
                <asp:Button ID="btnCancel" runat="server"  Text="Cancel" Font-Size="12pt" Font-Bold="true" ForeColor="floralwhite" BackColor="crimson" CausesValidation="false" Width="132px" />
                </td>
        </tr>
    </table>
</asp:Content>

