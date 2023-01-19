<cfcomponent output="false">
	<cfset this.name = "samplewebsite">
	<cfset this.sessionManagement = "true">
	<cfset this.ormEnabled = "true">  
	<cfset this.datasource = "employee">
	<cfset this.ormsettings={logsql="true"}>
</cfcomponent>