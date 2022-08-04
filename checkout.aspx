<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server"  >


    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 ftco-animate">
						<form action="#" class="billing-form ftco-bg-dark p-3 p-md-5">
							 <p style="margin-left:-10px; font-family:Arial; font-size:35px; color:burlywood;" >Billing Details</p>
						<div class="row">
	          	<div class="row align-items-end">
	          		<div class="col-md-6">
	                <div class="form-group">
	                	<label for="firstname">First Name</label>
	                  <%--<input type="text" class="form-control" placeholder="">--%>
                        <asp:TextBox ID="TextBox1" runat="server"  class="form-control" placeholder="" ></asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your FirstName" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>--%>
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname">Last Name</label>
	                  <%--<input type="text" class="form-control" placeholder="">--%>
                        <asp:TextBox ID="TextBox2" runat="server"  class="form-control" placeholder="" ></asp:TextBox>
              <%--             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name" Display="None" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>--%>
	                </div>
                </div>
                      <div class="col-md-6">
	                <div class="form-group">
	                	<label for="lastname">State / Country</label>
	                  <%--<input type="text" class="form-control" placeholder="">--%>
                        <asp:TextBox ID="TextBox7" runat="server"  class="form-control" placeholder="" ></asp:TextBox>
                         <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your State" ControlToValidate="TextBox3" Display="None"></asp:RequiredFieldValidator>--%>
	                </div>
                </div>
               <%-- <div class="w-100"></div>
		            <div class="col-md-12">
		            	<div class="form-group">
		            		<label for="country">State / Country</label>
                           
		            		<div class="select-wrap">

		                  <select name="" id="" class="form-control">
                              <asp:DropDownList ID="DropDownList1" runat="server" class="select-wrap">
                                  <asp:ListItem>Select Country</asp:ListItem>
                                  <asp:ListItem Value="1">Italy</asp:ListItem>
                              </asp:DropDownList>
		                  	<option value="">France</option>
		                    <option value="">Italy</option>
		                    <option value="">Philippines</option>
		                    <option value="">South Korea</option>
		                    <option value="">Hongkong</option>
		                    <option value="">Japan</option>
		                  </select>
		                </div>
		            	</div>
		            </div>--%>
		          
		       
		            <div class="w-100"></div>
		            <div class="col-md-6">
		            	<div class="form-group">
	                	<label for="towncity">Town / City</label>
	                  <%--<input type="text" class="form-control" placeholder="">--%>
                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder=""></asp:TextBox>
	                </div>
		            </div>
		            <div class="col-md-6">
		            	<div class="form-group">
		            		<label for="postcodezip">Postcode / ZIP *</label>
	                 <%-- <input type="text" class="form-control" placeholder="">--%>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder=""></asp:TextBox>
                             <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Your Postcode/Zip" Display="None"  ControlToValidate="TextBox5"></asp:RequiredFieldValidator>--%>
	                </div>
		            </div>
		            <div class="w-100"></div>
		            <div class="col-md-6">
	                <div class="form-group">
	                	<label for="phone">Phone</label>
	                 <%-- <input type="text" class="form-control" placeholder="">--%>
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder=""  > </asp:TextBox>
                        <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter your Phone no"  ControlToValidate="TextBox4" Display="None"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please Enter only 10 Digit" ControlToValidate="TextBox4" MinimumValue="10" MaximumValue="10" Display="None"></asp:RangeValidator>--%>
	                </div>
	              </div>
	              <div class="col-md-6">
	                <div class="form-group">
	                	<label for="emailaddress">Email Address</label>
	                 <%-- <input type="text" class="form-control" placeholder="">--%>
                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="" ></asp:TextBox>
                          <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your Addresss" ControlToValidate="TextBox5" Display="None"></asp:RequiredFieldValidator>--%>
	                </div>
                </div>
                       <asp:Button ID="Button1" runat="server" Text="Place On Order" Height="50px" class="btn btn-primary py-3 px-5 " OnClick="Button1_Click"></asp:Button >
                
              
									<%--<p><a href="#"class="btn btn-primary py-3 px-4">Place an order</a></p>--%>
               </div>
	            </div>
	          </form><!-- END -->
              
              


	          <div class="row mt-5 pt-3 d-flex">
	          	<div class="col-md-6 d-flex">
	          		<div class="cart-detail cart-total ftco-bg-dark p-3 p-md-4">
	          			<h3 class="billing-heading mb-4">Cart Total</h3>
                          <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                              
                              <ItemTemplate>
                                
                                   <p class="d-flex">
		    						<span>Subtotal</span>
                                     
		    						<span style="margin-left:100px;"> <%# Eval("total") %></span>
                                        <asp:HiddenField ID="HiddenField1" runat="server" Value=' <%# Eval("total") %>' /> 
		    					</p>
                              </ItemTemplate>
                          </asp:FormView>


                          <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:cn %>' SelectCommand="SELECT sum(total) as total  FROM [cart2] WHERE (([uname] = @uname) AND ([orderstatus] = @orderstatus))">

                              <SelectParameters>
                                  <asp:sessionParameter SessionField="user" Name="uname" Type="String"></asp:sessionParameter>
                                   <asp:Parameter DefaultValue="0" Name="orderstatus" Type="Int32"></asp:Parameter>
                              </SelectParameters>
                          </asp:SqlDataSource>
                          
                         
		    					<p class="d-flex">
		    						<span>Shipping</span>
		    						<span>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
		    					</p>
		    					
		    					<hr>
		    					<p class="d-flex total-price">
		    						<span>Total</span>
		    						<span>
                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
		    					</p>
								</div>
	          	</div>
	          
									
									
									
                        
								</div>
	          	</div>
	          </div>
          </div> <!-- .col-md-8 -->

        </section>


           

          

       

</asp:Content>


