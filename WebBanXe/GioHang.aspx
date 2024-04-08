<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="WebBanXe.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
    <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="false" DataKeyNames="maxe" CssClass="table table-bordered" OnRowDeleting="gvGioHang_RowDeleting" OnRowUpdating="gvGioHang_RowUpdating">
        <Columns>
            <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="anhxe"
                DataImageUrlFormatString="xe/{0}"
                HeaderText="Ảnh xe" ControlStyle-Width="150px">
            </asp:ImageField>
            <asp:BoundField HeaderText="Tên xe" DataField="tenxe" />
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia"
                DataFormatString="{0:#,##0}$" />
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server"
                        CssClass="form-control text-center" Width="100px" Text='<%# Eval("soluong")%>'>
                    </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành tiền" DataField="Thanhtien"
                DataFormatString="{0:#,##0}$" />
            <asp:TemplateField>
                 <ItemTemplate>
                     <asp:LinkButton ID="btUpdate" runat="server" CommandName="Update" CssClass="btn btn-secondary">
                          <i class="bi bi-pencil-square"></i>Update</asp:LinkButton>
                      <asp:LinkButton ID="btDelete" runat="server" CommandName="Delete"  CssClass="btn btn-danger">
                         <i class="bi bi-trash"></i>Delete</asp:LinkButton>
                 </ItemTemplate> 
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <div class="alert alert-info">
                Chưa có sản phẩm trong giỏ
            </div>
        </EmptyDataTemplate>
    </asp:GridView>
    <div class="mt-2">
        Tạm tính : <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
