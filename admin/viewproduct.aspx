<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="viewproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    </br>
    </br>
    <div style="margin-left:200px;">
<p style="margin-left:350px; font-family:Arial; font-size:35px; color:#c8a382;" >View Product</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="100px" Width="250px" OnRowUpdated="Page_Load" OnRowUpdating="GridView1_RowUpdating" CellPadding="15" CellSpacing="5" AllowPaging="True">
        <Columns>
            
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="cnm" SortExpression="cnm">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("cnm") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("cnm") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="pid" SortExpression="pid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                 </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="stock" SortExpression="stock">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("stock") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("stock") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="image" SortExpression="image">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("image") %>' Visible="false"></asp:Literal>
                    <asp:Image ID="Image2" runat="server"  ImageUrl='<%# "~//admin//images//" + Eval("image") %>'  Height="100px" style="width:200px;"/>
                   
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~//admin//images//" + Eval("image") %>'  Height="100px" Width="100px" style="width:200px;"/>
                   
                </ItemTemplate>

            </asp:TemplateField>
            <asp:TemplateField HeaderText="description" SortExpression="description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
        </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cn %>" DeleteCommand="DELETE FROM [product] WHERE [id] =@id" InsertCommand="INSERT INTO [product] ([cnm], [pid], [price], [stock], [image]) VALUES (@cnm, @pid, @price, @stock, @image)"  SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [cnm] = @cnm, [pid] = @pid, [price] = @price, [stock] = @stock, [image] = @image WHERE [id] = @original_id AND (([cnm] = @original_cnm) OR ([cnm] IS NULL AND @original_cnm IS NULL)) AND (([pid] = @original_pid) OR ([pid] IS NULL AND @original_pid IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([stock] = @original_stock) OR ([stock] IS NULL AND @original_stock IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_cnm" Type="String" />
            <asp:Parameter Name="original_pid" Type="Int32" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_stock" Type="String" />
            <asp:Parameter Name="original_image" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="pid" Type="Int32" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="stock" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="pid" Type="Int32" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="stock" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter Name="original_cnm" Type="String" />
            <asp:Parameter Name="original_pid" Type="Int32" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_stock" Type="String" />
            <asp:Parameter Name="original_image" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>


