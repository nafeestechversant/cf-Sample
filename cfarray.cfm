<cfset faq = ArrayNew(1)>
<cfset ArrayAppend(faq, "What are ColdFusion arrays")>
<cfset ArrayAppend(faq, "How to create a ColdFusion array?")>
<cfset ArrayAppend(faq, "What are two dimensional arrays?")>

<cfoutput>#faq[2]#</cfoutput><br />
<cfoutput>#faq[3]#</cfoutput>
<cfoutput>#ArrayToList(faq)#</cfoutput>