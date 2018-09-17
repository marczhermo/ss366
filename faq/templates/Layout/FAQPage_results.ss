<h1>$Title</h1>
<% include FAQSearchForm %>

<% if $SearchError %>
	$SearchNotAvailable
<% else %>
	<h1>
		$SearchResultsTitle
		<% if $SearchResults %>
			<div><small>$SearchSummary</small></div>
		<% end_if %>
	</h1>

	<% if $SearchSuggestion.Suggestion %>
		<p>Did you mean <a href="$SearchSuggestion.SuggestionQueryString">$SearchSuggestion.SuggestionNice</a><% if $SearchSuggestion.ShowQuestionmark %>?<% end_if %></p>
	<% end_if %>

	<% if $SearchResults %>
		<p>Total $SearchResults.TotalPages Listing $SearchResults.Count pages</p>
		<% loop $SearchResults %>
			<p>item $Me.Question</p>
			<% include FAQSearchResult %>
		<% end_loop %>
		<% with SearchResults %>
			<% include Pagination %>
		<% end_with %>
	<% else %>
		$NoResultsMessage
	<% end_if %>

<% end_if %>


