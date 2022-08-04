<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="admin_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">



     <section class="ftco-section contact-section">
      <div class="container mt-5">
        <div class="row block-9">
					<div class="col-md-8 contact-info ftco-animate">
                                <p style="margin-bottom:10px; font-family:Arial; font-size:35px; color:burlywood; height: 20px;" >Product</p>
						<div class="row">
							<div class="col-md-12 mb-4">
	      
	            </div>
	            
	        
						</div>
					</div>
					<div class="col-md-1"></div>
          <div class="col-md-6 ftco-animate">
            <form class="contact-form">
            	<div class="row">
            		<div class="col-md-6">
	                <div class="form-group">
              
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [cnm] FROM [category]"></asp:SqlDataSource>
      <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="cnm"></asp:TextBox>
                        
	                </div>
                </div>
                <div class="col-md-6">
	                <div class="form-group">

<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="pid"></asp:TextBox>
	              
	                </div>
	                </div>
              </div>
              <div class="form-group">
<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="price"></asp:TextBox>
              
              </div>

                <div class="form-group">
<asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="stock"></asp:TextBox>         
              </div>
                
              <div class="form-group">
<asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" placeholder="image"/>    
              </div>

                 <div class="form-group">
<asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="description"></asp:TextBox>         
              </div>

               <div class="form-group">
<asp:Button ID="Button1" runat="server" Height="50px" Text="send" class="btn btn-primary py-3 px-5" OnClick="Button1_Click"></asp:Button >
                
              </div>
            </form>
          </div>
                    
        </div>
      </div>
    </section>



</asp:Content>


