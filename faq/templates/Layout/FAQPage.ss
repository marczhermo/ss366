<div class="container">
	<div class="row">
		<section class="col-md-7 col-md-offset-1">
			<h1>$Title</h1>
			$Content
			<% include FAQSearchForm %>
			<div>
				<% loop FilterFeaturedFAQs.sort(SortOrder) %>
					<% include FAQSearchResult %>
				<% end_loop %>
			</div>
		</section>

		<aside class="col-md-3">
			<% include SidebarNav %>
		</aside>
	</div>
</div>