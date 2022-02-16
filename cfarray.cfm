<cfset faq = ArrayNew(1)>
<cfset ArrayAppend(faq, "What are ColdFusion arrays")>
<cfset ArrayAppend(faq, "How to create a ColdFusion array?")>
<cfset ArrayAppend(faq, "What are two dimensional arrays?")>
<cfoutput>#faq[2]#</cfoutput>
<cfset ArrayInsertAt(faq, ,3, "How to modify an array?")>
<cfoutput>#faq[3]#</cfoutput>