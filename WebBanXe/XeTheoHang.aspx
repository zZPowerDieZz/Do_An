<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="XeTheoHang.aspx.cs" Inherits="WebBanXe.XeTheoHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
    <section id="featured-books" class="py-5 my-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="align-center">
						<asp:Repeater ID="rptHang" runat="server" DataSourceID="dsHang">
							<ItemTemplate>
								<h2 class="section-title">Danh sách các xe thuộc hãng <%# Eval("TenHX")%></h2>
							</ItemTemplate>
						</asp:Repeater>
						
					</div>

					<div class="product-list" data-aos="fade-up">
						<div class="row">

							<asp:Repeater ID="rptSach" runat="server" DataSourceID="dsXe">
								<ItemTemplate>
									<div class="col-md-3">
										<div class="product-item">
											<figure class="product-style text-center">
												<a href="ChiTiet.aspx?maxe=<%# Eval("MaXe") %>"><img src='xe/<%# Eval("AnhXe")%>' alt="Books" class="product-item" style="width:300px;height:200px"></a>
												<asp:Button ID="btnAddToCard" runat="server"  Text="Add To Card" CommandArgument='<%# Eval("MaXe") %>' class="btn btn-success"
													OnClick="btnAddToCart_Click"  />
											</figure>
											<figcaption>
												<h2><%# Eval("TenXe") %></h2>
												<div class="item-price"><%# Eval("DonGia","{0:#,##0$}") %></div>
											</figcaption>
										</div>
									</div>
								</ItemTemplate>
							</asp:Repeater>

						</div><!--ft-books-slider-->
					</div><!--grid-->


				</div><!--inner-content-->
			</div>

		</div>
	</section>
		<asp:SqlDataSource ID="dsXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
		SelectCommand="SELECT * FROM [Xe] WHERE ([MaHX] = @MaHX)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaHX" QueryStringField="MaHX" Type="Int32" />
            </SelectParameters>
    </asp:SqlDataSource>
	<asp:SqlDataSource ID="dsHang" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" SelectCommand="SELECT * FROM [HangXe] WHERE ([MaHX] = @MaHX)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaHX" QueryStringField="mahx" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
