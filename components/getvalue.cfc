<cfcomponent>
    <cffunction  name="view" access="remote"  returntype="struct" returnformat="json">
        <cfargument name="personId" type="string" required="yes">
        <cfquery name="show" datasource="employee">
            SELECT Title,First_Name,Last_Name,Gender,DOB,address,Street,email,phone_no
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
        <cfreturn dateStruct>
    </cffunction>
    <cffunction  name="updateData" access="remote">
        <cfargument name="personId" type="numeric" required="yes">
        <cfargument name="optionID" type="string" required="yes">
        <cfargument name="fName" type="string" required="yes">
        <cfargument name="lName" type="string" required="yes">
        <cfargument name="gender" type="string" required="yes">
        <cfargument name="date" type="string" required="yes">
        <cfargument name="address" type="string" required="yes">
        <cfargument name="street" type="string" required="yes">
        <cfargument name="email" type="string" required="yes">
        <cfargument name="phone" type="string" required="yes">
        <cfdump var="#arguments.personId#">
        <cfquery name="update" datasource="employee">
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
    </cffunction>
</cfcomponent>