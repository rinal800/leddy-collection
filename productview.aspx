<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="productview.aspx.cs" Inherits="productview" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

     <style type="text/css">
        .Star
        {
            
            background-image: url(images/Star.gif);
            height: 17px;
            width: 17px;
        }
        .WaitingStar
        {
            background-image: url(images/WaitingStar.gif);
            height: 17px;
            width: 17px;
        }
        .FilledStar
        {
            background-image: url(images/FilledStar.gif);       
            height: 17px;
            width: 17px;
        }
    </style>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"  >
        <EditItemTemplate>
            cnm:
            <asp:TextBox ID="cnmTextBox" runat="server" Text='<%# Bind("cnm") %>' />
            <br />
            pid:
            <asp:TextBox ID="pidTextBox" runat="server" Text='<%# Bind("pid") %>' />
            <br />
            stock:
            <asp:TextBox ID="stockTextBox" runat="server" Text='<%# Bind("stock") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            image:
            <asp:TextBox ID="imageTextBox" runat="server" Text='<%# Bind("image") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"/>
        </EditItemTemplate>
        
        <ItemTemplate>
              <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="images/menu-2.jpg" class="image-popup"><div class="img-fluid" alt="Colorlib Template">
                        <asp:Image ID="imageview" runat="server" ImageUrl= '<%# "~//images//"+Eval("image") %>' Height="550px" Width="550px"/>
                        </div>
                        </a>
    			</div>
                
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3 style="margin-left:70px"><%# Eval("cnm") %></h3>
    				<p class="price" style="margin-left:70px"><span>Rs. <%# Eval("price") %> /-</span></p>
    				<p style="margin-left:70px"><%# Eval("description") %></p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		             
		            </div>
                                
							</div>
							<div class="w-100">
                            
						<div class="input-group col-md-6 d-flex mb-3"  margin-left:"50px"; >
                                <div class="quantity"  style="margin-left:50px; ">
                                            <span class="icon-minus" onclick="var effect = document.getElementById('ContentPlaceHolder3_FormView1_TextBox1'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                            <asp:TextBox ID="TextBox1" runat="server" class="qty-text" step="1" min="1" max="99" name="quantity" value="1" Height="30px" Width="80px" ></asp:TextBox>
                                            <%-- <input type="number" class="qty-text" id="qty" step="1" min="1" max="99" name="quantity" value="1">--%>
                                            <span class="icon-plus" onclick="var effect = document.getElementById('ContentPlaceHolder3_FormView1_TextBox1'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                        </div>
                               <%--<asp:Button I D="Button1" runat="server" Text="add to cart" class="btn btn-primary btn-outline-primary" Height="50px" Width="120px" OnClick="Button1_Click" style="margin-left:70px"/>--%>
                            <asp:Button ID="Button1" runat="server" Text="add to cart"   class="btn btn-primary py-3 px-5  " OnClick="Button1_Click" style="margin-left:50px" Height="50px" Width="200px"></asp:Button >

   <%--                       	<p><a href="carts.aspx" class="btn btn-primary btn-outline-primary" style="margin-bottom:-50px;">Add to cart</a></p>--%>
          	<%--<p><a href="carts.aspx" class="btn btn-primary btn-outline-primary"  style="height:40px; width:150px;">Add to cart</a></p>--%>
          	<%--<p><a href="cart.html" class="btn btn-primary py-3 px-5">Add to Cart</a></p>--%>
    			</div>
	             	<%--<span class="input-group-btn mr-2">
         
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="icon-minus"></i>
	                	</button>
	            		</span>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control input-number" value="1" min="1" max="100" ></asp:TextBox>

	             
	             	<span class="input-group-btn ml-2">
                         

	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="icon-plus"></i>
	                 </button>
	             	</span>--%>
	          	</div>
                                </div>
          	</div>
                  

    		</div>
    	</div>
                  </div>
    </section>
    </ItemTemplate>
    </asp:FormView>
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <cc1:Rating ID="Rating1" AutoPostBack="true" OnChanged="OnRatingChanged" runat="server"
        StarCssClass="Star" WaitingStarCssClass="WaitingStar" EmptyStarCssClass="Star"
        FilledStarCssClass="FilledStar">
    </cc1:Rating>
    <br />
    <asp:Label ID="lblRatingStatus" runat="server" Text=""></asp:Label>

      



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [id],[cnm], [pid], [stock], [price], [image], [description] FROM [product] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


   <script>
		$(document).ready(function(){
		   
		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		       
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
	</script>
</asp:Content>


