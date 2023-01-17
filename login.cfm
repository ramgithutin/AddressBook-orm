<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
    </head>
    <body>
        <cfinclude  template="header.cfm"> 
        <div class="dflex alignCenter justfyCenter middle">
            <div class="dflex">
                <div class="background border middleLeft">
                    <img src="assets/book.png" alt="book" class="bookImg">
                </div>
                <div class="whiteBackground whiteBorder ">
                    <div class="extraLarge blue dflex alignCenter justfyCenter margin1010">LOGIN</div>
                    
                    <form method="post" name="formLogin" onsubmit="return loginValidate()">
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="text" placeholder="  Username" class="textInput" name="loginUserId" id="loginUserId"><br>
                                <div id="userError" class="small">this field is required</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter">
                            <div>
                                <input type="password" placeholder="Password" class="textInput" name="loginPassword" id="loginPassword"><br>
                                <div id="passwordError" class="small">this field is required</div>
                            </div>
                        </div>
                        <div class="dflex alignCenter justfyCenter">
                            <input type="submit" name="login" value="LOGIN" class="login">
                        </div>
                    </form>
                    <cfif structKeyExists(form,'login')>
                        <cfinvoke method="loginform" component="components/component">
                    </cfif>
                    <div class="dflex alignCenter justfyCenter small margin1010">Or Sign In Using</div>
                    <div class="dflex alignCenter justfyCenter margin1010">
                        <img src="assets/facebook.png" alt="book" class="facebookImg">
                        <img src="assets/google.png" alt="book" class="googleImg">
                    </div>
                    <div class="dflex alignCenter justfyCenter small margin1010">Don't have an account? <a href="signup.cfm">Register Here</a></div>
                </div>
            </div>
        </div>
        <script  src="js/script.js"></script>
    </body>
</html>