<html>
	<head>
		<link rel="stylesheet" href="css/css.css">
		<link rel="stylesheet" href="assets/modal.css">
		<title>Address Book</title>
		<link rel="shortcut icon" href="assets/ABicon.png">
	</head>
	<body>
		<cfoutput>
			<cfif structKeyExists(session,'userFlag')>
				<div class="dflex justfyCenter">
					<div class="whiteBackground padding10 width600">
						<div class="lightblue dflex justfyCenter">
							<div class="extraLarge blue padding10 ">EDIT CONTACT</div>
						</div>
						<div class="padding10 blue blueBottomBorder">Personal Contact</div>
						<form method="post" name="createFrom" onsubmit="return vadidateedit()"  enctype="multipart/form-data">
							<div class="dflex justfyBetween">
								<div>
									<input type="hidden" id="personId" name="personId">
									<div class="blue padding10">Title</div>
									<select name="editOptionId" id="editOptionId" class="borderNone">
										<option selected=""></option>
										<option value="Mr">Mr</option>
										<option value="Mrs">Mrs</option>
										<option value="Ms">Ms</option>
									</select>
								</div>
								<div>
									<div class="blue padding10">First Name*</div>
									<input type="text" name="editFName" id="editFName" placeholder="Your First Name" class="createText borderNone">
								</div>
								<div>
									<div class="blue padding10">Last Name*</div>
									<input type="text" name="editLName" id="editLName" placeholder="Your Last Name" class="createText borderNone">
								</div>
							</div>
							<div class="dflex justfyBetween">
								<div>
									<div class="blue padding10">Gender*</div>
									<select name="editGender" id="editGender" class="borderNone createText2">
										<option selected="" value="Default"></option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>
								<div>
									<div class="blue padding10">Date Of Birth*</div>
									<input type="date" name="editDate" id="editDate" class="createText2 borderNone">
								</div>
							</div>
							<div class="dflex justfyBetween">
								<div>
									<div class="blue padding10">Upload Photo*</div>
									<input type="file" name="editFile" id="editFile" class="createText2">
								</div>
							</div>
							<div class="padding10 blue blueBottomBorder">Contact Details</div>
							<div class="dflex justfyBetween">
								<div>
									<div class="blue padding10">Address*</div>
									<input type="text" name="editAddress" id="editAddress" placeholder="Your Address" class="createText2 borderNone">
								</div>
								<div>
									<div class="blue padding10">Street*</div>
									<input type="text" name="editStreet" id="editStreet" placeholder="Your Street Name" class="createText2 borderNone">
								</div>
							</div>
							<div class="dflex justfyBetween">
								<div>
									<div class="blue padding10">Email Id*</div>
									<input type="text" name="editemail" id="editemail" placeholder="Your Email Address" class="createText2 borderNone">
								</div>
								<div>
									<div class="blue padding10">Phone No*</div>
									<input type="text" name="editPhone" id="editPhone" placeholder="Your Phone No" class="createText2 borderNone">
								</div>
							</div>
							<div class="dflex justfyCenter">
								<input type="submit" name="editFormSubmit" id="editFormSubmit" class="login" value="EDIT">
                                <button onclick="document.getElementById('id03').style.display='none'" class="login">Cancel</button>
							</div>
						</form>
					</div>
					<div class="dflex alignCenter justfyCenter width245 background" >
						<img src="" class="bookImg" id="imageprofile">
					</div>
				</div>
				<cfif structKeyExists(form,'editFormSubmit')>
					<cfinvoke method="updateData" component="components/getvalue">
				</cfif>
            <cfelse>
                <cflocation url="login.cfm">
			</cfif>
			<script src="js/edit.js"></script>
		</cfoutput>
    </body>
</html>