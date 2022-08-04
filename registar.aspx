<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="registar.aspx.cs" Inherits="registar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <section class="ftco-section contact-section">
      <div class="container mt-5">
        <div class="row block-9">
					<div class="col-md-8 contact-info ftco-animate">
                         <p style="margin-left:10px; font-family:Arial; font-size:35px; color:burlywood;" >Registration</p>
						<div class="row">
							<div class="col-md-12 mb-4">
	             
	            </div>
	            
	            
	            
	            
						</div>
					</div>
					<div class="col-md-1"></div>
          <div class="col-md-6 ftco-animate">
            <div class="contact-form">
            	<div class="row">
            		<div class="col-md-6">
	                <div class="form-group">
                        
<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="Please Enter Your Username" Display="None" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
	                  
	                </div>
                </div>
                <div class="col-md-6">
	                <div class="form-group">
<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your email" ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
	                  
	                </div>
	                </div>
              </div>
                
              <div class="form-group">
<asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Contact no"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter your contact no"  ControlToValidate="TextBox4" Display="None"></asp:RequiredFieldValidator>
                  <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please Enter only 10 Digit" ControlToValidate="TextBox4" MinimumValue="10" MaximumValue="10" Display="None"></asp:RangeValidator>
	                  
                  
	                </div>
              <div class="form-group">
<asp:TextBox ID="TextBox3" runat="server"   class="form-control" placeholder="password" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Password" ControlToValidate="TextBox3" Display="None"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Your Password" ValidationExpression="[A-Za-z0-9._%+-@$%&*]{6}" Display="None" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                
              </div>
	              
	               
               <div class="form-group">
<asp:TextBox ID="TextBox5" runat="server"   class="form-control" placeholder="Conform password" TextMode="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your conform password" ControlToValidate="TextBox5" Display="None"></asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Please Type the password as above" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="None"></asp:CompareValidator>
                
              </div>
	              
	                </div>

              <div class="form-group">
<asp:Button ID="Button1" runat="server" Text="sign up" Height="50px" class="btn btn-primary py-3 px-5 " OnClick="Button1_Click"></asp:Button >
                
              </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"/>
            </div>
          </div>     
        </div>
      </div>       
    </section>
</asp:Content>


