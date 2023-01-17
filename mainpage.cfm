<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <link rel="stylesheet" href="assets/modal.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
        <script  src="assets/jquery.js"></script>
    </head>
    <body>
        <cfoutput>
                    <cfif structKeyExists(session,'userFlag')>

            <cfinclude  template="mainHeade.cfm"> 
            <div class="middle padding10">
                <div class="dflex whiteBackground justifyFlexEnd margin10">
                    <a href="pdf.cfm"><img src="assets/pdf.png" alt="pdf" class="imgIcon"></a>
                    <a href="excel.cfm"><img src="assets/excel.png" alt="excel" class="imgIcon"></a>
                    <img src="assets/printer.png" alt="printer" class="imgIcon" onclick="PrintPage()">
                </div>
                <div class="dflex padding10 ">
                    <div class="padding10 whiteBackground height">
                        <div class="dflex justfyCenter">
                            <img src="assets/profile.png" alt="printer" class="bookImg">
                        </div>
                        <div class="dflex justfyCenter blue weight700">#session.name#</div>
                        <button onclick="document.getElementById('id01').style.display='block'" class="background white curveBoder xsmall">CREATE CONTACT</button>
                    </div>
                    <div>
                        <cfinclude  template="display.cfm">
                    </div>
                </div>  
                <div id="id01" class="w3-modal padding10">
                    <div class="w3-modal-content middle padding10">
                        <div class="w3-container dflex">
                            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
                            <div class="whiteBackground padding10 width600">
                                <div class="lightblue dflex justfyCenter">
                                    <div class="extraLarge blue padding10 ">CREATE CONTACT</div>
                                </div>
                                <div class="padding10 blue blueBottomBorder">Personal Contact</div>
                                <form method="post" name="createFrom" onsubmit="return vadidateCreate()">
                                    <div class="dflex justfyBetween">
                                        <div>
                                            <div class="blue padding10">Title</div>
                                                <select name="optionId" id="optionId" class="borderNone">
                                                    <option selected="" ></option>
                                                    <option value="Mr">Mr</option>
                                                    <option value="Mrs">Mrs</option>
                                                    <option value="Ms">Ms</option>
                                                </select>
                                            </div>
                                        <div>
                                            <div class="blue padding10">First Name*</div>   
                                            <input type="text" name="fName" id="fName" placeholder="Your First Name" class="createText borderNone">
                                        </div>
                                        <div>
                                            <div class="blue padding10">Last Name*</div>   
                                            <input type="text" name="lName" id="lName" placeholder="Your Last Name" class="createText borderNone">
                                        </div>
                                    </div>
                                    <div class="dflex justfyBetween">
                                        <div>
                                            <div class="blue padding10">Gender*</div>
                                            <select name="gender" id="gender" class="borderNone createText2">
                                                <option selected=""></option>
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>
                                        <div>
                                            <div class="blue padding10">Date Of Birth*</div>   
                                            <input type="date" name="Dob" id="Dob" class="createText2 borderNone">
                                        </div>
                                    </div>
                                    <div class="dflex justfyBetween">
                                        <div>
                                            <div class="blue padding10">Upload Photo*</div>
                                            <input type="file" name="fileUpload" id="fileUpload" class="createText2">
                                        </div>
                                    </div>
                                    <div class="padding10 blue blueBottomBorder">Contact Details</div>
                                    <div class="dflex justfyBetween">
                                        <div>
                                            <div class="blue padding10">Address*</div>
                                            <input type="text" name="address" id="address" placeholder="Your Address" class="createText2 borderNone">
                                        </div>
                                        <div>
                                            <div class="blue padding10">Street*</div>   
                                            <input type="text" name="street" id="street" placeholder="Your Street Name" class="createText2 borderNone">
                                        </div>
                                    </div>
                                    <div class="dflex justfyBetween">
                                        <div>
                                            <div class="blue padding10">Email Id*</div>
                                            <input type="text" name="email" id="email" placeholder="Your Email Address" class="createText2 borderNone">
                                        </div>
                                        <div>
                                            <div class="blue padding10">Phone No*</div>   
                                            <input type="text" name="phone" id="phone" placeholder="Your Phone No" class="createText2 borderNone">
                                        </div>
                                    </div>
                                    <div class="dflex justfyCenter">
                                        <input type="submit" name="createFormSubmit" id="createFormSubmit" class="login" value="Create">
                                    </div>
                                </form>
                                <cfif structKeyExists(form,'createFormSubmit')>
                                    <cfinvoke method="databaseInsert" component="components/component">
                                </cfif>
                            </div>
                            <div class="dflex alignCenter justfyCenter width245">
                                <img src="assets/profile.png" alt="printer" class="bookImg">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="id02" class="w3-modal ">
                    <cfinclude  template="view.cfm">
                </div>
                <div id="id03" class="w3-modal ">
                    <cfinclude  template="edit.cfm">
                </div>
            </div> 
            <script  src="js/jquery.js"></script>
            <script  src="js/getValue.js"></script>
            <script  src="js/registerValidate.js"></script>            
            <script  src="js/print.js"></script>
                            <cfelse>
                <cflocation url = "login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>