
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
				<a class="navbar-brand" style="text-align: right;" href="/user-home" class="dropdown-item">Home</a> 
			</div>
		

				</div>
				</nav>
			</div>
	
	<div class="container mt-3">


<form:form modelAttribute="user" action="/userupdate/${userId}" method="post" cssClass="text-left border border-light p-5" >
				
				
				<div class="form-row mb-2">
					<div class="col">
						<form:label path="firstName">First Name</form:label>
					</div>
					<div class="col">
						<form:input path="firstName" value="${user.firstName}" />
					</div>
				</div>
				
			
				<div class="form-row mb-2">
					<div class="col">
						<form:label path="lastName">Last Name</form:label>
					</div>
					<div class="col">
						<form:input path="lastName" value="${user.lastName}" />
					</div>
				</div>

				<div class="form-row mb-2">
					<div class="col">
						<form:label path="phoneNumber">Phone Number</form:label>
					</div>
					<div class="col">
						<form:input path="phoneNumber"
							value="${user.phoneNumber}" />
					</div>
				</div>
				
				<div class="form-row mb-2">
					<div class="col">
				<form:hidden path="emailId"
					value="${user.emailId}" />
					</div>
					</div>
	
			
				<div class="form-row mb-2">
					<div class="col">
						<form:label path="gender">Gender</form:label>
					</div>
					<div class="col">
						
						
						<select id="gender" name="gender">
    <option value=""></option>
    <c:forEach items="${gender}" var="title">
      
            <option value="${title.value}" selected>${title.value}</option>
       
            <option value="Male" >Male</option>
             <option value="Female" >Female</option>
             <option value="Other" >Other</option>
    
    </c:forEach>
</select>
						
					</div>
				</div>
				
				<input type="submit" value="Update" />

			</form:form>
			
			


</div>


	</div>
	<%@ include file="common/footer-user.jspf"%>
</div>
<%@ include file="common/end-tags-user.jspf"%>

			
