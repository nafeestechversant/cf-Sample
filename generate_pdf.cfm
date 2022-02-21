
<!--<cfquery name="MySQLQuery" dataSource="Testing1">
SELECT * FROM employees 
</cfquery>

<cfdocument format="PDF" pagetype="legal" marginbottom="2.0" margintop="1.0" marginleft="0.5" marginright="1.5" userpassword="secret123" encryption="128-bit">
	<cfdump var="#MySQLQuery#">
</cfdocument>-->

<cfpdf action="read" name="myDoc" source="C:\Users\Nafees\Downloads\e-Nomination.pdf" />
<cfcontent variable="#toBinary(myDoc)#" type="application/pdf" />