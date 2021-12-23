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
				<button class="btn btn-primary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Menu<span class="badge badge-danger ml-2">${emailCount}</span></button>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="dropdownMenuButton">
					<a href="/analystprofileview/${analyst.analystId}" class="dropdown-item">Profile</a> 
				
					<a href="/logout" class="dropdown-item"> Logout</a> <a
						class="dropdown-item" href="/analyst-emails?analystId=${analyst.analystId}">Mail<span class="badge badge-danger ml-2">${emailCount}</span></a> <a class="dropdown-item"
						href="#">Show All Complaints</a>
					<!-- <a class="dropdown-item" href="#">Something	else here</a> -->
				</div>
			</div>
		</div>
	</nav>
	<div class="container">

		<h2>Welcome ${analyst.firstName}</h2>
		<p style="color:red">${updatemsg}</p>
	<!-- 	<div class="p-5 text-center bg-image"
			style="background-image: url('https://raw.githubusercontent.com/linjorejoy/host-images-for-projects/b8b24b8c78d7ea2401779f33a04551f895b739e4/svg/undraw_at_home_octe.svg'); width: 400px; height: 400px; background-size: contain; background-repeat: no-repeat; position: absolute; left: 50%; top: 80%; transform: translate(-50%, -50%);"></div> -->
		<%-- <a href="/create-complaint?userId=${user.userId}">Create Complaint</a> --%>

		<div class="row">
			<%-- <div class="d-inline-block col-sm-6" style="height: 200px;">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Create A Complaint</h5>
						<p class="card-text">Submit Your complaint by clicking here.</p>
						<a href="/create-complaint?userId=${analyst.analystId}" class="btn btn-primary">Something</a>
					</div>
				</div>
			</div> --%>
			<div class="h-25  d-inline-block col-sm-6" style="height: 100px;">
				<div class="card my-shadow">
					<div class="card-body">
						<h5 class="card-title">View All Complaints</h5>
						<p class="card-text">Any Complaints which you may have previously submitted can be viewed here.</p>
						<a href="/analyst-view-all?analystId=${analyst.analystId}" class="btn btn-primary">View All Complaints</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="common/footer-analyst.jspf"%>
</div>
<%@ include file="common/end-tags-analyst.jspf"%>
