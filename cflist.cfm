<cfset coldfusion_list = "Lists,Arrays,Structures">
<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#</cfoutput>
</cfloop>
listAppend(coldfusion_list, "Functions")
<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#</cfoutput>
</cfloop>
listPrepend(coldfusion_list, "Functions End")
<cfloop list="#coldfusion_list#" index="i">
	<cfoutput> #i#</cfoutput>
</cfloop>
