<cfcomponent>
    <cffunction  name="view" access="remote"  returntype="struct" returnformat="json">
        <cfargument name="personId" type="string" required="yes">
        <cfquery name="show" datasource="employee">
            SELECT Title,First_Name,Last_Name,Gender,DOB,address,Street,email,phone_no,ImageName
            FROM register
            WHERE ID=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.personId#">
        </cfquery>
        <cfset local.dateStruct=structNew()>
        <cfset local.dateStruct.Title = "#show.Title#">
        <cfset local.dateStruct.First_Name = "#show.First_Name#">
        <cfset local.dateStruct.Last_Name = "#show.Last_Name#">
        <cfset local.dateStruct.Gender = "#show.Gender#">
        <cfset local.dateStruct.DOB = "#show.DOB#">
        <cfset local.dateStruct.address = "#show.address#">
        <cfset local.dateStruct.Street = "#show.Street#">
        <cfset local.dateStruct.email = "#show.email#">
        <cfset local.dateStruct.phone_no = "#show.phone_no#">
        <cfset local.dateStruct.ImageName = "#show.ImageName#">
        <cfreturn dateStruct>
    </cffunction>
    <cffunction  name="updateData" access="remote">
        <cfargument name="personId" type="numeric" required="yes" default="#form.personId#">
        <cfargument name="optionID" type="string" required="yes" default="#form.editOptionId#">
        <cfargument name="fName" type="string" required="yes" default="#form.editFName#">
        <cfargument name="lName" type="string" required="yes" default="#form.editLName#">
        <cfargument name="gender" type="string" required="yes" default="#form.editGender#">
        <cfargument name="date" type="string" required="yes" default="#form.editDate#">
        <cfargument name="address" type="string" required="yes" default="#form.editAddress#">
        <cfargument name="street" type="string" required="yes" default="#form.editStreet#">
        <cfargument name="email" type="string" required="yes" default="#form.editemail#">
        <cfargument name="phone" type="string" required="yes" default="#form.editPhone#">
        <cfquery name="update">
            UPDATE register 
            SET Title = <cfqueryparam value="#argumentS.optionId#" cfsqltype="cf_sql_varchar">,
                First_Name = <cfqueryparam value="#argumentS.fName#" cfsqltype="cf_sql_varchar">,
                Last_Name = <cfqueryparam value="#argumentS.lName#" cfsqltype="cf_sql_varchar">,
                Gender = <cfqueryparam value="#argumentS.gender#" cfsqltype="cf_sql_varchar">,
                DOB = <cfqueryparam value="#argumentS.date#" cfsqltype="cf_sql_varchar">,
                address = <cfqueryparam value="#argumentS.address#" cfsqltype="cf_sql_varchar">,
                Street = <cfqueryparam value="#argumentS.street#" cfsqltype="cf_sql_varchar">,
                email = <cfqueryparam value="#argumentS.email#" cfsqltype="cf_sql_varchar">,
                phone_no = <cfqueryparam value="#argumentS.phone#" cfsqltype="cf_sql_varchar">
            WHERE ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.personId#">
        </cfquery>
        <cfif len(trim(form.editFile))>
            <cffile action="upload" fileField="editFile" nameConflict="overwrite" accept="image/jpg,image/jpeg,image/gif,image/png" result="thisResult" destination="#expandpath("./assets/contactImg/")#">
            <cfset session.imgName2 = thisResult.serverFile>
            <cfquery name="updateimage">
                UPDATE register 
                SET ImageName = <cfqueryparam value="#session.imgName2#" cfsqltype="cf_sql_varchar">
                WHERE ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.personId#">
            </cfquery>
        </cfif>
        <cflocation url="mainpage.cfm">
    </cffunction>
</cfcomponent>