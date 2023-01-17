<html>
    <head>
        <link rel="stylesheet" href="css/css.css">
        <title>Address Book</title>
        <link rel="shortcut icon" href="assets/ABicon.png">
        <script src="assets/jquery.js"></script>
    </head>
    <body>
             <cfif structKeyExists(session,'userFlag')>
       <div class="dflex justfyCenter">
            <div class="whiteBackground padding10 width600">
                <div class="lightblue dflex justfyCenter">
                    <div class="extraLarge blue padding10 ">CONTACT DETAILS</div>
                </div>
                <table>
                    <tr>
                        <td class="column blue">Name</td>
                        <td class="column blue">:</td>
                        <td class="column blue" id="nameview"></td>
                    </tr>
                    <tr>
                        <td class="column blue">Gender</td>
                        <td class="column blue">:</td>
                        <td class="column blue" id="genderView"></td>
                    </tr>
                    <tr>
                        <td class="column blue">Date Of Brith</td>
                        <td class="column blue">:</td>
                        <td class="column blue" id="dobView"></td>
                    </tr>
                    <tr>
                        <td class="column blue">Address</td>
                        <td class="column blue">:</td>
                        <td class="column blue" id="addressView"></td>
                    </tr>
                    <tr>
                        <td class="column blue">Email Id</td>
                        <td class="column blue">:</td>
                        <td class="column blue" id="emailView"></td>
                    </tr>
                    <tr>
                        <td class="column blue">Phone</td>
                        <td class="column blue">:</td>
                        <td class="column blue" id="phoneView"></td>
                    </tr>
                </table>
                <div class="dflex justfyCenter">
                    <span onclick="document.getElementById('id02').style.display='none'" class="dflex justfyCenter login">CLOSE</span>
                </div>
            </div>                        
            <div class="dflex alignCenter justfyCenter width245 background">
                <img src="assets/profile.png" alt="printer" class="bookImg">
            </div>
        </div>
                        <cfelse>
                <cflocation url = "login.cfm">
            </cfif>
    </body>
<html>