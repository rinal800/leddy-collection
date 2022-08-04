<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="categorys.aspx.cs" Inherits="admin_categorys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">






     <section class="ftco-section contact-section" style="margin-top:-130px;">
      <div class="container mt-5">
        <div class="row block-9">
					<div class="col-md-8 contact-info ftco-animate">
                             <p style="margin-bottom:10px; font-family:Arial; font-size:35px; color:burlywood; height: 20px;" >Category</p>
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
<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="cnm" ></asp:TextBox>
	                  
	                </div>
                </div>
                
              </div>
       
              <div class="form-group">
<asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" placeholder="image"/>

                
              </div>
               <div class="form-group">
<asp:Button ID="Button1" runat="server" Text="send" Height="50px" class="btn btn-primary py-3 px-5" OnClick="Button1_Click" ></asp:Button >
                
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

</asp:Content>


