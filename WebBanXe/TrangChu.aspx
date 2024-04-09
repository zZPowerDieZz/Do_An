<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebBanXe.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
        <section id="billboard">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="main-slider ">
								<img src="images/background.png" alt="banner" class="banner-image">
						</div>
				</div>
			</div>
		</div>

	</section>


	<section id="featured-books" class="py-5 my-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<div class="section-header align-center">
						<h2 class="section-title">Siêu xe</h2>
					</div>

					<div class="product-list" data-aos="fade-up" >
						<div class="row">
							<asp:Repeater ID="rptSach" runat="server" DataSourceID="dsXe">
								<ItemTemplate>
									<div class="col-md-3">
										<div class="product-item">
											<figure class="product-style" >
												<a href="ChiTiet.aspx?maxe=<%# Eval("MaXe") %>"><img src='xe/<%# Eval("AnhXe")%>' alt="xe" class="product-item" style="width:300px;height:200px"></a>
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

			<div class="row">
				<div class="col-md-12">

					<div class="btn-wrap align-right">
						<a href="TatCaXe.aspx" class="btn-accent-arrow">View all cars <i
								class="icon icon-ns-arrow-right"></i></a>
					</div>

				</div>
			</div>
		</div>
	</section>
	<asp:SqlDataSource ID="dsXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" 
		SelectCommand="SELECT top 4 * FROM [Xe] order by DonGia desc" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
</asp:Content>
