<form action="$Link" role="search">
    <%-- include FAQCategorySelector --%>
    <input id="FAQSearchForm_FAQSearchForm_Search"
        class="st-default-search-input"
        style="height:30px"
        type="search"
        name="$SearchTermKey"
        placeholder="$SearchFieldPlaceholder"
        value="$Query"
        title="$SearchFieldPlaceholder" />
    <input type="submit" value="$SearchButtonText" />
</form>
<div class="st-search-container"></div>