
<cfcomponent>
    <cffunction name="registerform">
        <cfargument name="fullName" default="#form.fullName#">
        <cfargument name="Email" default="#form.email#">
        <cfargument name="userName" default="#form.userName#">
        <cfargument name="password" default="#form.signPassword#">
        <cfif structKeyExists(form,'register')>
            <cfquery name="regiter">
            INSERT INTO addressbook 
            VALUES(<cfqueryparam value="#argumentS.fullName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#argumentS.Email#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#argumentS.userName#" cfsqltype="cf_sql_varchar">,
                <cfqueryparam value="#argumentS.password#" cfsqltype="cf_sql_varchar">)
            </cfquery>
            <cflocation url="login.cfm">
        </cfif>
    </cffunction>
    <cffunction name="loginform" access="public">
        <cfargument name="Username" default="#form.loginUserId#">
        <cfargument name="loginPassword" default="#form.loginPassword#">
        <cfquery name="userInfo">
            SELECT name,emailid
            FROM addressbook
            WHERE userid = <cfqueryparam value="#arguments.Username#" cfsqltype="cf_sql_varchar">
            AND password = <cfqueryparam value="#arguments.loginPassword#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif userInfo.recordCount>
            <cfset session.name = userInfo.name>
            <cfset Session.userFlag = 1>
            <cflocation url="mainpage.cfm" addtoken="No">
        <cfelse>
            <cflocation url="login.cfm" addtoken="No">
        </cfif>
    </cffunction>
    <cffunction name="databaseInsert">
        <cfargument name="optionId" default="#form.optionId#">
        <cfargument name="fName" default="#form.fName#">
        <cfargument name="lName" default="#form.lName#">
        <cfargument name="gender" default="#form.gender#">
        <cfargument name="Dob" default="#form.Dob#">
        <cfargument name="address" default="#form.address#">
        <cfargument name="street" default="#form.street#">
        <cfargument name="email" default="#form.email#">
        <cfargument name="phone" default="#form.phone#">
        <cfquery name="check">
            SELECT email
            FROM register
            WHERE email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif check.recordCount eq 0>
            <cfquery name="create">
                INSERT INTO register (Title,First_Name,Last_Name,Gender,DOB,address,Street,email,phone_no)
                VALUES(<cfqueryparam value="#argumentS.optionId#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.fName#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.lName#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.gender#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.Dob#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.address#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.street#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.email#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#argumentS.phone#" cfsqltype="cf_sql_varchar">);
            </cfquery>
        </cfif>
        <cflocation url="mainpage.cfm">
    </cffunction> 
    <cffunction  name="viewTabel" returnType="query">
        <cfquery name="display">
            SELECT ID,First_Name,Last_Name,email,phone_no,Gender
            FROM register;
        </cfquery>
        <cfreturn display>
    </cffunction>
    <cffunction name="logout" access="public">
        <cfif structKeyExists(form,'logout')>
        <cfset StructClear(session)>
        <cflocation url="login.cfm">
        </cfif>
    </cffunction>
</cfcomponent>