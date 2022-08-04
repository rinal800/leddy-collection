<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="subcategorys.aspx.cs" Inherits="subcategorys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server" >
    </br>
                                          </br>
     


     <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3" >
        <ItemTemplate>

             <div class="col-md-12 d-flex align-items-center">
		            
		            <div class="tab-content ftco-animate" id="v-pills-tabContent">

		              <div class="tab-pane fade show active" id="v-pills-0" role="tabpanel" aria-labelledby="v-pills-0-tab">
		              	<div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap" style="margin-left:50px">
		              				
<asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl='<%# "~\\images\\" + Eval("image") %>' Height="350px" Width="350px" PostBackUrl='<%#"~/productview.aspx?id="+Eval("id") %>' />		              				
		                             
            <%--<asp:Label ID="priceLabel" runat="server"  Text='<%# Eval("price") %>'/>--%>
                                      <p style="font-size: 25px; color:burlywood; font-weight: bold ">Rs.<%# Eval("price") %>/-</p>
            <br />
		              				
		              				</div>
		              			</div>
		              		</div>
           
           
   
        </ItemTemplate>
    </asp:DataList>

    



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" SelectCommand="SELECT * FROM [product] WHERE ([cnm] = @cnm)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cnm" QueryStringField="cat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>


