<cfdocument format="PDF" filename="address.pdf" overwrite="Yes">
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
               <table class="whiteBackground margin1010" >
                    <tr class="borderNone">
                        <th class="column blue"> </th>
                        <th class="column blue">NAME</th>
                        <th class="column blue">EMAIL</th>
                        <th class="column blue">PHONE NUMBER</th>
                    </tr>
                    <cfinvoke  method="viewTabel" component="components/component" returnVariable="data">
                    <cfloop array="#data#" index="data">
                        <tr class="borderNone">
                            <td class="column blue borderNone justfyCenter dflex"> 
                                <cfset local.variable=data.getImageName()>
                                <img src="assets/contactImg/#local.variable#" class="googleImg">
                            </td>
                            <td class="column blue borderNone">#data.getFirst_Name()# #data.getLast_Name()#</td>
                            <td class="column blue borderNone">#data.getemail()#</td>
                            <td class="column blue borderNone">#data.getphone_no()#</td>
                        </tr>
                    </cfloop>
                </table>
                <cfelse>
                <cflocation url = "login.cfm">
            </cfif>
            </cfoutput>
        </body>
    </html>
</cfdocument>
<cfheader name="Content-Disposition" value="attachment;filename=address.pdf">
<cfcontent type="application/octet-stream" file="#expandPath('.')#\address.pdf" deletefile="Yes">