<cfhtmltopdf destination="C:/ColdFusion2018/e-Nomination.pdf" source="https://www.google.com" overwrite="true"><cfhtmltopdfitem type="header">
 <b>Page: _PAGENUMBER of _LASTPAGENUMBER</b>
</cfhtmltopdfitem>
<cfhtmltopdfitem type="pagebreak" />
<cfhtmltopdfitem type="footer">
 <cfoutput>
  <p><b><i>Test footer</i></b></p>
 </cfoutput>
</cfhtmltopdfitem>
</cfhtmltopdf>