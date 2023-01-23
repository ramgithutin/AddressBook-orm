<html>
    <body>
        <cfoutput>
            <cfif structKeyExists(session,'userFlag')>
                <table class="whiteBackground margin1010" >
                    <tr class="borderNone">
                        <th class="column blue"> </th>
                        <th class="column blue">NAME</th>
                        <th class="column blue">EMAIL</th>
                        <th class="column blue">PHONE NUMBER</th>
                        <th class="column blue"></th>
                        <th class="column blue"></th>
                        <th class="column blue"></th>
                    </tr>
                    <cfinvoke method="viewTabel" component="components/component" returnVariable="data">
                    <cfloop array="#data#" index="data">
                        <tr class="borderNone">
                            <td class="column blue borderNone justfyCenter dflex"> 
                                <cfset local.variable=data.getImageName()>
                                <img src="assets/contactImg/#local.variable#" class="circleIcon">
                            </td>
                            <td class="column blue borderNone">#data.getFirst_Name()# #data.getLast_Name()#</td>
                            <td class="column blue borderNone">#data.getemail()#</td>
                            <td class="column blue borderNone">#data.getphone_no()#</td>
                            <td class="column blue borderNone">
                            <cfset local.id=#data.getID()#>
                                <button class="login" onclick="document.getElementById('id03').style.display='block';getvalue('#local.id#')">EDIT<button>
                            </td>
                            <td class="column blue borderNone">
                                <a href="components/delete.cfc?method=deletepage&name=#data.getID()#"><button class="login">DELETE<button></a>
                            </td>
                            <td class="column blue borderNone">
                                <button class="login" onclick="document.getElementById('id02').style.display='block';postvalue('#local.id#')">VIEW<button>
                            </td>
                        </tr>
                    </cfloop>
                </table>
                <div class="hidden">
                    <div id="printDiv">
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
                                <cfset local.variable = data.getImageName()>
                                <img src="assets/contactImg/#local.variable#" class="googleImg">
                            </td>
                            <td class="column blue borderNone">#data.getFirst_Name()# #data.getLast_Name()#</td>
                            <td class="column blue borderNone">#data.getemail()#</td>
                            <td class="column blue borderNone">#data.getphone_no()#</td>
                        </tr>
                    </cfloop>
                </table>
                </div>
                </div>
            <cfelse>
                <cflocation url = "login.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>