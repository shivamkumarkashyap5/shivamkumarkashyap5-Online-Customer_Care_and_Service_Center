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
				<button class="btn btn-light dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					Menu<span class="badge badge-danger ml-2">${emailCount}</span>
				</button>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" href="/analyst-home">Home</a>
				</div>
			</div>
		</div>
	</nav>

	<div
		class="container text-center d-flex align-items-center justify-content-center">

		<div class="form-div-sq-question">
			<div class="heading-div">
				<h1>Security Questions</h1>
			</div>
			<form:form modelAttribute="analyst" method="GET"
				action="/submit-secret-question/${analystId}">
				<%-- 				<div class="div-security-questions">
					<label>What is your Childhood pets Name?</label><input id="ans1"
						name="ans1" value="${ans1}"><br> <label>What
						is your mothers maiden name?</label><input id="ans2" name="ans2"
						value="${ans2}"><br> <label>What is the name
						of the city you grew up on?</label><input id="ans3" name="ans3"
						value="${ans3}">
				</div>
				<div class="div-security-question-submit">
					<input type="submit" value="Submit">
				</div> --%>
				<table>
					<tr>
						<td><label>What is your Childhood pets Name?</label></td>
						<td><input id="ans1" type="text" name="ans1"
							placeholder="Type Your Answer" value="${ans1}"></td>
					</tr>
					<tr>
						<td><label>What is your mothers maiden name?</label></td>
						<td><input id="ans2" type="text" name="ans2"
							placeholder="Type Your Answer" value="${ans2}"></td>
					</tr>
					<tr>
						<td><label>What is the name of the city you grew up
								on?</label></td>
						<td><input id="ans3" type="text" name="ans3"
							placeholder="Type Your Answer" value="${ans3}"></td>
					</tr>
				</table>
				<div>
					<input type="submit" id="submit" value="Submit"
						class="btn btn-success"></input>
				</div>
			</form:form>
		</div>
	</div>

	<%@ include file="common/footer-analyst.jspf"%>
</div>
<%@ include file="common/end-tags-analyst.jspf"%>