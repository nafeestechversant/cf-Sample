<cfinclude template="header.cfm">

<p>Welcome to my website on ColdFusion cfinclude usage!</p>

<cfset firstname="Babu">
<cfparam name="firstName" default="User">
<cfoutput>
Hello #firstname#.
</cfoutput>
<cfif IsDefined("firstName")>
  Hello #firstname#!
<cfelse>
  Hello stranger!
</cfif>

<cfloop list="ColdFusion,HTML;XML" index="ListItem" delimiters=",;">
  <cfoutput>
   #ListItem#<br />
 </cfoutput>
</cfloop>
<cfinclude template="cfarray.cfm">
<cfinclude template="cflist.cfm">
<cfinclude template="footer.cfm">