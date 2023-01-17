<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
    </head>
    <body>
        <cfif structKeyExists(session,'userFlag')>
        <div class="header background dflex justfyBetween">
            <div class="headerLeft dflex alignCenter">
               <img src="assets/book.png" alt="book" class="imageIcon2">
               <div class="medium white">ADDRESS BOOK</div>
            </div>
            <div class="headerLeft dflex alignCenter">
                    <img src="assets/logout.png" alt="book" class="imageIcon2">
                    <form name="logout" method="post">
                        <input type="submit" value="Logout" class="medium white background noBorder" name="logout">
                    </form>
                    <cfinvoke method="logout" component="components/component">
            </div>
        </div>
                        <cfelse>
                <cflocation url = "login.cfm">
            </cfif>
    </body>
</html>