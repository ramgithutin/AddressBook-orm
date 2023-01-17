<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
        <script src="assets/jquery.js"></script>
    </head>
    <body>
        <cfinclude  template="header.cfm"> 
        <div class="dflex alignCenter justfyCenter middle">
            <div class="dflex">
                <div class="background border middleLeft">
                    <img src="assets/book.png" alt="book" class="bookImg">
                </div>
                <div class="whiteBackground whiteBorder ">
                    <div class="extraLarge blue dflex alignCenter justfyCenter margin1010">SIGN UP</div>
                    <form method="post" name="formLogin" onsubmit="return signUpValidate()">
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="text" placeholder="  Full Name" class="textInput" name="fullName" id="fullName" onblur="signUpValidate()"><br>
                                <div id="nameError" class="small">this field is required</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="email" placeholder="  Email ID" class="textInput" name="email" id="email" onblur="signUpValidate()"><br>
                                <div id="emailError" class="small">this field is required</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="text" placeholder="  Username" class="textInput" name="userName" id="userName" onblur="signUpValidate()"><br>
                                <div id="userError" class="small">this field is required</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="password" placeholder="  Password" class="textInput" name="signPassword" id="signPassword" onblur="signUpValidate()"><br>
                                <div id="passwordError" class="small">the password shouldnot be less than 4</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="password" placeholder="  Confirm Password" class="textInput" name="confirmPassword" id="confirmPassword" onblur="signUpValidate()"><br>
                                <div id="confirmError" class="small">the password is not match</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter padding10">
                            <input type="submit" name="register" value="REGISTER" class="login">
                        </div>
                    </form>
                    <cfif structKeyExists(form,'register')>
                        <cfinvoke method="registerform" component="components/component">
                    </cfif>
                </div>
            </div>
        </div>
        <script  src="js/script.js"></script>
    </body>
</html>