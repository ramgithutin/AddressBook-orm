<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfset register = EntityLoadByPK( "register", url.name )>
		<cfset EntityDelete( register )>
		<cflocation url="..\mainpage.cfm">
	</cffunction>
</cfcomponent>