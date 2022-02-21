<cfinclude template="header.cfm">

<p>Welcome to my website on ColdFusion cfinclude usage!</p>

<cfset firstname="Babu">
<cfoutput>
Hello #firstname#.
</cfoutput><br /><br />
<cfloop list="ColdFusion,HTML;XML" index="ListItem" delimiters=",;">
  <cfoutput>
   #ListItem#<br />
 </cfoutput>
</cfloop>
<cfset firstname1="Barney">
<cfparam name="firstName1" default="Ozzy">
<cfoutput>
Hello #firstName1#
  </cfoutput>
  <cfif IsDefined("firstName")>
  <cfoutput>
  Hello1 #firstName1#!
  </cfoutput>
<cfelse>
  Hello stranger!
</cfif><br />
<cfloop from="1" to="5" index="i">
  <cfoutput>
  #i#<br />
  </cfoutput>
</cfloop>



<cfinclude template="cflist.cfm">
<cfinclude template="cfarray.cfm">
<cfinclude template="footer.cfm">