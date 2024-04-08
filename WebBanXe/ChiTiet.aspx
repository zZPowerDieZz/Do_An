<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="WebBanXe.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
    <asp:Repeater ID="rptXe" runat="server" DataSourceID="dsXe">
        <ItemTemplate>
            <div class="row">
                <div class="col-md-5">
                    <img src="xe/<%# Eval("AnhXe") %>" alt="xe" class="product-item" style="width:100%;height:100%">
                </div>
                <div class="col-md-7">
                    <span><%# Eval("MoTa") %></span>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="dsXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" SelectCommand="SELECT * FROM [Xe] WHERE ([MaXe] = @MaXe)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaXe" QueryStringField="maxe" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
