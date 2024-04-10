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
                    <asp:Repeater ID="rptThongSo" runat="server" DataSourceID="dsThongSo">
                        <ItemTemplate>
                            <div class="row">
                                 <div class="col-md-6">
                                     <span>Dung tích : <%# Eval("Dung_Tich") %> cm³</span>
                                     <br/>
                                     <span>Xi lanh : <%# Eval("Xi_lanh") %></span>
                                     <br/>
                                     <span>Công Suất : <%# Eval("Cong_Suat") %> PS</span>
                                     <br/>
                                     <span>Mô men xoắn cực đại : <%# Eval("Mo_Men_Xoan_Cuc_Dai") %> Nm</span>
                                     
                                </div>
                                <div class="col-md-6">
                                     <span>Tốc độ tối đa : <%# Eval("Max_Speed") %> Km/h</span>
                                     <br/>
                                     <span>Tăng tốc từ 0 - 100km/h : <%# Eval("Tang_Toc") %> giây</span>
                                     <br/>
                                     <span>Kích thước xe : <%# Eval("Dai") %>mm; <%# Eval("Rong") %>mm; <%# Eval("Cao") %>mm </span>
                                     
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    
                    <span>Mô tả xe : <%# Eval("MoTa") %></span>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource ID="dsXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" SelectCommand="SELECT * FROM [Xe] WHERE ([MaXe] = @MaXe)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaXe" QueryStringField="maxe" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="dsThongSo" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" SelectCommand="SELECT * FROM [ThongSo] WHERE ([MaXe] = @MaXe)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaXe" QueryStringField="maxe" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
