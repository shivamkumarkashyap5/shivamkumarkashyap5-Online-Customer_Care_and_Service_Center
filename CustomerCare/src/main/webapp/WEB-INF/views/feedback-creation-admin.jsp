<%@ include file="common/header-admin.jspf"%>
<div class="container-my">
	<%@ include file="common/nav-bar-admin.jspf"%>
	<div class="container">
		<div class="centering">
		<!-- <div class="p-5 text-center bg-image"
			style="background-image: url('https://raw.githubusercontent.com/linjorejoy/host-images-for-projects/b8b24b8c78d7ea2401779f33a04551f895b739e4/svg/undraw_survey_05s5.svg'); width: 200px; height: 200px; background-size: contain; background-repeat: no-repeat; position: absolute; right: 0; top: 50%; transform: translate(0%, -50%);"></div> -->

			<div class="form-row mb-0 container-fluid pt-5">
				<div class="col-7">
					<h1>Complaint Feedback Questionaire</h1>
				</div>
				<div class="col-3 text-right">
					<a href="/admin-home" class="btn btn-primary btn-lg">Finish
						Survey</a>
				</div>
			</div>


			<div class="form-div-feedback-admin">
				<!-- for each complaint.feedbackList -->

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">#</th>
							<th scope="col">Question Description</th>
							<th scope="col">Remove</th>
						</tr>
					</thead>
					<c:forEach var="feedbackQuestion" items="${feedbackList}"
						varStatus="loop">
						<tr>
							<th scope="row">${loop.index + 1}</th>
							<td>${feedbackQuestion.question}</td>
							<td><a
								href="/delete-question?responseId=${feedbackQuestion.responseId}&complaintId=${complaintId}">Delete</a></td>
						</tr>
					</c:forEach>
				</table>

				<!-- forEach end  -->
				<form:form action="/addFeedback?complaintId=${complaintId}"
					modelAttribute="feedback" method="post">

					<div class="form-input-feedback-admin">
						<form:label path="question">Question Description</form:label>
						<br>
						<form:textarea path="question" class="form-control z-depth-1 p-4"
							id="exampleFormControlTextarea6" rows="3"
							placeholder="Write your Question here..." value=""></form:textarea>
					</div>
					<div class=" p-3">
						<input type="Submit" class="btn btn-success mt-2" value="Add New" />
					</div>

				</form:form>
			</div>


		</div>
	</div>



</div>
<%@ include file="common/end-tags-admin.jspf"%>