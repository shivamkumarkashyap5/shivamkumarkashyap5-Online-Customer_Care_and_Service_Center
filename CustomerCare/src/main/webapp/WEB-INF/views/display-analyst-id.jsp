<%@ include file="common/header-analyst.jspf"%>
<div class="container-fluid p-0">
	<nav class="navbar navbar-inverse navbar-dark bg-primary">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/roleSelectionPage">Customer Care</a>
			</div>
			<!-- <ul class="nav navbar-nav navbar-right">

				<li><a href="/admin-login"><span
						class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</ul> -->
			<div class="dropdown">
				<%-- <button class="btn btn-light dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					Menu<span class="badge badge-danger ml-2">${emailCount}</span>
				</button>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="dropdownMenuButton">
					<a href="/analyst-home" class="dropdown-item"> Login</a> 
					<!-- <a class="dropdown-item" href="#">Something	else here</a> -->
				</div> --%>
				<a href="/analyst-home" class="btn btn-light"> Login</a> 
			</div>
		</div>
	</nav>
	<div
		class="container text-center d-flex align-items-center justify-content-center">
	<h2 class="display-4">Your Analyst Id is : ${analystId }</h2>
	</div>


	<%@ include file="common/footer-analyst.jspf"%>
</div>
<%@ include file="common/end-tags-analyst.jspf"%>