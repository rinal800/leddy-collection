<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="admin_Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <marquee behavior="alternate" direction="right"> <h1 style="padding-top:80px; color:burlywood; font-family:Forte; padding-bottom:50px"><i>Welcome To The Administrative Panel</i></span></h1></marquee>      		
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html">Leddy<small>Collection</small></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span>Menu
            </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="default1.aspx" class="nav-link">Home</a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Viewfile</a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="viewcategory.aspx">category</a> <a class="dropdown-item" href="viewcontact.aspx">contact</a> <a class="dropdown-item" href="viewproduct.aspx">product</a> <a class="dropdown-item" href="viewregister.aspx">register</a>
                        </div>
                    <li class="nav-item active"><a href="categorys.aspx" class="nav-link">categorys</a></li>
                    <li class="nav-item active"><a href="product.aspx" class="nav-link">product</a></li>
                    <li class="nav-item">
                        <asp:LinkButton ID="LinkButton1" runat="server" class="nav-link" ForeColor="White" PostBackUrl="~/logout.aspx">logout</asp:LinkButton>
                        
                   
                </ul>
            </div>
        </div>
    </nav>
</asp:Content>


