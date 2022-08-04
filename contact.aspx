<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


     <section class="ftco-section contact-section">
      <div class="container mt-5">
        <div class="row block-9">
					<div class="col-md-8 contact-info ftco-animate">
                               <p style="margin-left:10px; font-family:Arial; font-size:35px; color:burlywood;" >Contact Information</p>
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
<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Your Name"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="Please Enter Your Username" Display="None" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
	                  
	                </div>
                </div>
                <div class="col-md-6">
	                <div class="form-group">
<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Your Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="TextBox2" Display="None"></asp:RequiredFieldValidator>
	              
	                </div>
	                </div>
              </div>
              <div class="form-group">
<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="contact no"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Contact no" Display="None" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>             
              </div>
              <div class="form-group">
<asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Message" TextMode="MultiLine" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="Enter Your Message" ControlToValidate="TextBox3" Display="None" ValidationExpression="[A-Za-z0-9._%+-@$%&*]"></asp:RequiredFieldValidator>
                 
              </div>
               <div class="form-group">
<asp:Button ID="Button1" runat="server" Text="send" Height="50px" class="btn btn-primary py-3 px-5" OnClick="Button1_Click" ></asp:Button >
                
              </div>
                 <asp:ValidationSummary ID="ValidationSummary1" runat="server" />                
            </form>



          </div>
        </div>
          

            <style>
       #map {
        height: 400px;
        width: 100%;
        border:solid;
        border-color:black;
       }
    </style>
 <div id="map"></div>
    <script>
      function initMap() {
          var uluru = { lat: 21.52998114, lng: 70.4542722 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 20,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA3LrJUWIe1gGzXdEBPeMuFJOCoVXs_w0g&callback=initMap">
    </script>



         
    </section>

  
</asp:Content>


