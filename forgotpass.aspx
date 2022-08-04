<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="forgotpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <div class="container mt-15">
        <div class="row block-9">
            <h2 class="h4">forgot password</h2>
					<div class="col-md-8 contact-info ftco-animate">
						<div class="row">
							<div class="col-md-12 mb-4">
	              
	            </div>

		</div>
					</div>
					<div class="col-md-1"></div>
          <div class="col-md-6 ftco-animate">
            <form action="#" class="contact-form">
            	<div class="row">
            		<div class="col-md-6">
	                <div class="form-group">
<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Your Email"  ></asp:TextBox>
	                
                        
                        
                        <div class="form-group">
<asp:Button ID="Button1" runat="server" Text="send" Height="50px" class="btn btn-primary py-3 px-5 "  OnClick="Button1_Click"></asp:Button >
                
              </div>  
	                </div>
                </div>
               
              </div>
            
            </form>
          </div>
        </div>
      </div>
</asp:Content>


