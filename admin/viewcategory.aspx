<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="viewcategory.aspx.cs" Inherits="viewcategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    </br>
    <div style="margin-left:450px;">
        <p style="margin-left:100px; font-family:Arial; font-size:35px; color:#c8a382;" >View Category</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="cnm" HeaderText="cnm" SortExpression="cnm" />
            <asp:TemplateField HeaderText="image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# "~//admin//images//" + Eval("image") %>' Width="200px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cn %>" DeleteCommand="DELETE FROM [category] WHERE [id] = @original_id" InsertCommand="INSERT INTO [category] ([cnm], [image]) VALUES (@cnm, @image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [cnm] = @cnm, [image] = @image WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32"  />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cnm" Type="String" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>


