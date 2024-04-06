<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TatCaXe.aspx.cs" Inherits="WebBanXe.TatCaXe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noiDung" runat="server">
    <section id="featured-books">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-header align-center">
						<h2 class="section-title">Danh sách các xe</h2>
					</div>

					<div class="product-list" data-aos="fade-up">
						<div class="row">
							<asp:ListView ID="lvXe" runat="server" ItemPlaceholderID="item" DataSourceID="dsXe">
								<ItemTemplate>
									<div class="col-md-3">
										<div class="product-item">
											<figure class="product-style">
												<img src='xe/<%# Eval("AnhXe")%>' alt="xe" class="product-item" style="width:300px;height:200px">
												<button type="button" class="add-to-cart" data-product-tile="add-to-cart">Add to
													Cart</button>
											</figure>
											<figcaption>
												<h2><%# Eval("TenXe") %></h2>
												<div class="item-price"><%# Eval("DonGia","{0:#,##0Đ}") %></div>
											</figcaption>
										</div>
									</div>
								</ItemTemplate>
								<LayoutTemplate>
									<div class="row">
										<div runat="server" id="item"></div>
                
									</div>
									<br/>
									<div class="text-center">
										<asp:DataPager ID="dtpage" runat="server" PagedControlID="lvXe" PageSize="8" ClientIDMode="Static">
											<Fields>
												<asp:NextPreviousPagerField ButtonType="Button" ShowPreviousPageButton="true"
													ShowNextPageButton="false" ButtonCssClass="prev-page text-black" NextPageText="Sau" PreviousPageText="Trước"/>
												<asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn-cur-page text-danger"
													NumericButtonCssClass="btn-num-page text-success" />
												<asp:NextPreviousPagerField ButtonType="Button"  ShowNextPageButton="true"
													ShowPreviousPageButton="false" ButtonCssClass="next-page text-black" NextPageText="Sau"/>
											</Fields>
										</asp:DataPager>
									</div>
								</LayoutTemplate>
							</asp:ListView>
							

						</div><!--ft-books-slider-->
					</div><!--grid-->
				</div>
			</div>
		</div>
	</section>
	<asp:SqlDataSource ID="dsXe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanHangConnectionString %>" SelectCommand="SELECT * FROM [Xe]"></asp:SqlDataSource>
</asp:Content>
