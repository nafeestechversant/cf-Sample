<cfset coldfusion_list = "Lists,Arrays,Structures">
<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#</cfoutput><br />
</cfloop>
<cfoutput>#listLen(coldfusion_list)#</cfoutput><br />
<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#</cfoutput><br />
</cfloop>

<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#</cfoutput><br />
</cfloop>

<cfoutput>
   #DateFormat(Now(), "ddd dd mmmm, yyyy")#
</cfoutput>