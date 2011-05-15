<div id="documentation-page">
	<div id="left-column">
		<p>Your search for <strong>&quot;$Query.XML&quot;</strong> found $TotalResults result<% if TotalResults != 1 %>s<% end_if %>.</p>
	
		<% if Results %>
	    	<p>Showing page $ThisPage of $TotalPages</p>
			
			<ul>
				<% control Results %>
					<li>
						<h3><a href="$Link"><% if BreadcrumbTitle %>$BreadcrumbTitle<% else %>$Title<% end_if %></a></h3>
						<p>$Content.LimitCharacters(200)</p>
					</li>
				<% end_control %>
			</ul>
			
			<% if SearchPages %>
				<ul class="pagination">
					<% if PrevUrl = false %><% else %>
						<li class="prev"><a href="$PrevUrl">Prev</a></li>
					<% end_if %>               
					
					<% control SearchPages %>
						<% if IsEllipsis %>
							<li class="ellipsis">...</li>
						<% else %>
							<% if Current %>
								<li class="active"><strong>$PageNumber</strong></li>
							<% else %>
								<li><a href="$Link">$PageNumber</a></li>
							<% end_if %>
						<% end_if %>
					<% end_control %>
					
					<% if NextUrl = false %>
					<% else %>
						<li class="next"><a href="$NextUrl">Next</a></li>
					<% end_if %>               
				</ul>         
			<% end_if %>
			
		<% else %>
			<p>No Results</p>
		<% end_if %>
	</div>

	<div id="right-column">

	</div>
</div>