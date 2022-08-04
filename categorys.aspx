<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="categorys.aspx.cs" Inherits="categorys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <section class="ftco-menu mb-5 pb-5">
    	<div class="container" style="margin-top:-110px">
    		<div class="row d-md-flex">
	    		<div class="col-lg-12 ftco-animate p-md-5">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		 		              <p style=" font-family:Arial; font-size:35px; color:#c8a382;" ><b>Category</b></p>
		              
		            </div>
		          </div>
		          
                       <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT [cnm], [image] FROM [category]"></asp:SqlDataSource>
                  
		              <div class="tab-pane" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
		                <div class="row">    
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="2">
                          <ItemTemplate>
		              		 <div class="col-md-4 text-center" style="margin-left:100px">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4">
                                          <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# "~\\images\\" + Eval("image") %>' Height="350px" Width="350px" PostBackUrl='<%#"~/subcategorys.aspx?cat="+Eval("cnm") %>'  />
                                          <h1></h1>     
		              				</a>
		              				<div class="text">
		              					</br>
                                          </br>
		              					<p><h1 style="font-family:Arial; font-size:35px; color:#c8a382;"><%# Eval("cnm")  %> </h1></p>
		              				</div>
		              			</div>
		              		   
                          </ItemTemplate>
                      </asp:DataList>	</div></div>
                        <div class="container" style="margin-top:-510px">
		              		<div class="row" >
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap" >
		              				
		              				<div class="text" >
		              					
		              				</div>
		              			</div>
		              		</div>
                         </div>
                  </section>


</asp:Content>


