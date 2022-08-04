<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <section class="ftco-section contact-section">
      <div class="container mt-15">
        <div class="row block-9">
            <p style="margin-left:10px; font-family:Arial; font-size:35px; color:burlywood;" >Log in</p>
					<div class="col-md-8 contact-info ftco-animate">
						<div class="row">
							<div class="col-md-12 mb-4">
	              
	            </div>

		</div>
					</div>
					<div class="col-md-1"></div>
          <div class="col-md-6 ftco-animate">
             
            <div  class="contact-form">
            	<div class="row">
            		<div class="col-md-6">
	                <div class="form-group">
<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your Email" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter valiad Email" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>

	                  
	                </div>
                </div>
                <div class="col-md-6">
	                <div class="form-group">
<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="password" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valiad password" ValidationExpression="[A-Za-z0-9._%+-@$%&*]{6}" ControlToValidate="TextBox2" Display="None"></asp:RegularExpressionValidator>
	                  
	                </div>
	                </div>
              </div>
             
              
              <div class="form-group">
<asp:Button ID="Button1" runat="server" Text="login" Height="50px" class="btn btn-primary py-3 px-5" OnClick="Button1_Click" ></asp:Button >
                
              </div>

                   </br>

                  <u style="font-size:20px"><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/forgotpass.aspx">forgot password........</asp:LinkButton></u>
              </br>
                  </br>
                
               <u style="font-size:20px"><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/registar.aspx">registar.......</asp:LinkButton></u>

              </div>
          </div>
          </div>
        </div>
      </div>
         
         
    </section>
</asp:Content>


