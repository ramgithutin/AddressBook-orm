<cfcomponent output="false">
	<cfset this.name = "samplewebsite">
	<cfset this.sessionManagement = "true">
	<cfset this.ormenabled = "true">  
	<cfset this.datasource = "employee">
<cfset this.ormsettings={cfclocation="components/artists.cfc", logsql="true"}>
</cfcomponent>