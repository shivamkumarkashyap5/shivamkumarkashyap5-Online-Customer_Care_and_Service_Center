
<%@ include file="common/header-user.jspf"%>


 <head>
 <!-- CSS only -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
table,td,th{
border:2px solid black;
font-size: 20px;
text-align: center;
padding:8px;
}
table{
border-collapse: collapse;
}


#btn{
margin-top:10px;
float:right;
}

</style>
 </head>

 <div class="container-fluid p-0">
	<nav class="navbar navbar-inverse navbar-dark bg-primary">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/roleSelectionPage">Customer Care</a>
				<a class="navbar-brand" style="text-align: right;" href="/admin-home" class="dropdown-item">Home</a> 
			</div>
		
<!--  	<div class="dropdown">
				 <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Menu
    <span class="caret"></span></button>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="dropdownMenuButton">
					<a href="/userprofile" class="dropdown-item">Profile</a> 
					<a href="/logout" class="dropdown-item"> Logout</a> <a
						class="dropdown-item" href="#">Mail<span class="badge badge-danger ml-2">${emailCount}</span></a> <a class="dropdown-item"
						href="/user-complaint-list-view?userId=${user.userId}">Show All Complaints</a>-->
						<!-- <a class="dropdown-item" href="#">View Profile</a> -->
					
				</div>
				</nav>
			</div>
	
	<div class="container mt-3">

		
		<div class="form">
<table align="center">

<tr><th>Admin Id</th><th> First Name</th><th>Last Name</th><th>Email id</th><tr>
<tr>

<td>${admin.adminId }</td>
<td>${admin.firstName }</td>
<td>${admin.lastName }</td>
<td>${admin.emailId }</td>
</tr>


</table>




</div>
<a href="${admin.adminId }/adminupdateview/" class="btn btn-primary" id="btn">Edit Profile</a>
		

	</div>
	<%@ include file="common/footer-user.jspf"%>
</div>
<%@ include file="common/end-tags-user.jspf"%>

