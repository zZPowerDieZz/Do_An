<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThemXe.aspx.cs" Inherits="WebBanXe.ThemXe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
     <h2 class="text-center">Thêm xe mới</h2>
    <div class="row mt-3 mb-2 ">
        <div class="col-md-2">Hãng xe</div>
        <div class="col-md-10">
            <asp:DropDownList ID="ddlHX" runat="server" CssClass="form-control" DataSourceID="dsHX" DataTextField="TenHX" DataValueField="MaHX"></asp:DropDownList>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Tên xe</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtTenXe" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTenXe" runat="server" ControlToValidate="txtTenXe" ErrorMessage="Tên xe không được bỏ trống" ForeColor="#ff0000"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Giá</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtGia" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvGia" runat="server" ErrorMessage="Không giá được rỗng" ControlToValidate="txtGia" ForeColor="#ff0000"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvGia" runat="server" ErrorMessage="Nhập giá sai kiểu" Operator="DataTypeCheck" Type="Double" ControlToValidate="txtGia" ></asp:CompareValidator>
        </div>
    </div>
        <div class="row mb-2">
        <div class="col-md-2">Mô tả</div>
        <div class="col-md-10">
            <asp:TextBox ID="txtMoTa" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMoTa" runat="server" ControlToValidate="txtMoTa" ErrorMessage="Hãy thêm mô tả cho xe" ForeColor="#ff0000"></asp:RequiredFieldValidator>
        </div>
    </div>
        <div class="row mb-2">
        <div class="col-md-2">Hình</div>
        <div class="col-md-10">
        <asp:FileUpload ID="FHinh" runat="server" />
        </div>
    </div>
   
    <div class="row mb-2">
        <div class="col-md-2"></div>
        <div class="col-md-10">
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <asp:SqlDataSource ID="dsHX" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" SelectCommand="SELECT * FROM [HangXe]"></asp:SqlDataSource>
</asp:Content>
