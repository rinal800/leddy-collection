<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="carts.aspx.cs" Inherits="carts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">




    	<section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Product</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
                                   
						      </tr>
						    </thead>
						    <tbody>




                                 
                                  <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" OnUpdateCommand="DataList1_UpdateCommand" OnDeleteCommand="DataList1_DeleteCommand">
        <ItemTemplate>



						      <tr class="text-center">
						        <td class="product-remove">
                                     <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/delete.jpg"  Height="30px" Width="30px" CommandName="delete" /></td>
						        
						        <td class="image-prod"><div class="img" >
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("image") %>' style="height:80px;width:80px;margin-left:60px" />

						                               </div></td>
                                  <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("id") %>'/>
						        
						        <td class="product-name" >
						        	<h3 style="margin-left: 80px;"><%# Eval("cnm") %></h3>
						        	
						        </td>
                                  <asp:HiddenField ID="HiddenField2" runat="server" Value='<%# Eval("price") %>'/>
						        
						        <td class="price"><h6 style="margin-left: 150px;"><%# Eval("price") %></h6></td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3" style="margin-left:150px">
                                        	<%--<span class="input-group-btn mr-2">
         
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field=""  onclick="var result = document.getElementById('ContentPlaceHolder3_DataList1_TextBox1_0'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;">
	                   <i class="icon-minus"></i>
	                	</button>
	            		</span>--%>
					             	<%--<input type="text" name="quantity" class="quantity form-control input-number"  value="1" min="1" max="100">--%>
<asp:TextBox ID="TextBox1" runat="server" class="quantity form-control input-number"   Text='<%# Eval("qty") %>' min="1" max="100" ></asp:TextBox>
					        
                                        	             	<%--<span class="input-group-btn ml-2">
                        

	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field=""  onclick="var result = document.getElementById('ContentPlaceHolder3_DataList1_TextBox1_0'); var sst = result.value; if( !isNaN( sst )  ) result.value++;return false;">
	                     <i class="icon-plus"></i>
	                 </button>
	             	</span>--%>
                                          	</div>
					          </td>
						        
						        <td class="total"><h5 style="margin-left: 280px;"><%# Eval("total") %></h5></td>

                                  <td style="margin-left:-15px">
                                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/edit1.png"  Height="45px" Width="45px"   CommandName="update" style="margin-left: 50px;"/>
                                   </td>
                                    <td>
                                     
                                   </td>
						      </tr><!-- END TR-->
           
            </ItemTemplate>
                                  
            </asp:DataList>

						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		<div class="row justify-content-end">
    			<div class="col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					
    				
    					<hr>


               <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
       
        <ItemTemplate>
          
            <p class="d-flex total-price">
    						<span>SubTotal</span>
    						<span style="margin-left:100px;"><asp:Label Text='<%# Bind("total") %>' runat="server" ID="totalLabel" /></span>
    					</p>
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:cn %>' SelectCommand="SELECT sum(total) as total FROM [cart1] WHERE ([uname] = @uname)">
        <SelectParameters>
            <asp:SessionParameter SessionField="user" Name="uname" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    					
    				</div>

    				<p class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="processed to checkout" OnClick="button_click" /></p>
    			</div>
    		</div>
			</div>
		</section>


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT * FROM [cart1] WHERE ([uname] = @uname)">
         <SelectParameters>
             <asp:SessionParameter SessionField="user" Name="uname" Type="String"></asp:SessionParameter>
            
         </SelectParameters>
    </asp:SqlDataSource>


    
   
</asp:Content>


