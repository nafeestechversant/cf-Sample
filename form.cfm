<CFIF IsDefined("URL.From")>
<CFIF #URL.From# IS "DoEdit">

<CFUPDATE DATASOURCE="Testing1" TABLENAME="employees">

</CFIF>
</CFIF>

<CFIF IsDefined("URL.From")>
<CFIF #URL.From# IS "Delete">

<cfquery name="DeleteEmployee" 
    datasource="Testing1"> 
        DELETE FROM employees 
        WHERE emp_id = #URL.ID# 
</cfquery> 

</CFIF>
</CFIF>

<cfquery NAME="GetData" DATASOURCE="Testing1">
    SELECT * 
    FROM employees
    ORDER BY emp_id
</cfquery>

<html>

<head>
<title>Update articles</title>
</head>

<body>

<!-- If DoUpdate has been run a short note is given -->

<CFIF IsDefined("DoUpdate.RecordCount")>
<p><b>Thanks for your update!</b>
</CFIF>

<p>Let's first display all data in a table

<table>
<tr>
<th>EmpID</th>
<th>JOB</th>
<th>MANAGERID</th>
<th>JOIN DATE</th>
<th>SALARY</th>
<th>COMMISSION</th>
<th>DEPARTMENT</th>
</tr>

<!-- Here we check for the URL.From attribute -->

<CFIF IsDefined("URL.From")>

<!-- If URL.From just equals DoEdit, we simply just output the data, just as if it was undefined  -->

<CFIF #URL.From# IS "DoEdit">

<CFOUTPUT QUERY="GetData">
<tr>
<td>#emp_id#</td>
<td>#emp_name#</td>
<td>#job_name#</td>
<td>#manager_id#</td>
<td>#hire_date#</td>
<td>#salary#</td>
<td>#commission#</td>
<td>#dep_id#</td>
<!-- This is where the Edit button and form is created -->

<td>
<form action="form.cfm?From=Edit&ID=#emp_id#" method="post">
<input type="submit" value="Edit">
</form>
</td>

</tr>
</CFOUTPUT>

<CFELSE>

<CFLOOP QUERY="GetData">

<CFIF #URL.ID# IS #GetData.emp_id#>

<CFOUTPUT>

<form action="form.cfm?From=DoEdit&ID=#ID#" method="post">

<tr>
<td><input type="text" name="emp_name" size="4" value="#emp_name#"></td>
<td><input type="text" name="job_name" size="20" value="#job_name#"></td>
<td><input type="text" name="manager_id" size="40" value="#manager_id#"></td>
<td><input type="date" name="hire_date" size="4" value="#hire_date#"></td>
<td><input type="text" name="salary" size="20" value="#salary#"></td>
<td><input type="text" name="commission" size="40" value="#commission#"></td>
<td><input type="text" name="dep_id" size="40" value="#dep_id#"></td>
</tr>

</CFOUTPUT>

<CFELSE>

<!-- This is where all the data get's nicely output into the table -->

<CFOUTPUT>
<tr>
<td>#emp_name#</td>
<td>#job_name#</td>
<td>#manager_id#</td>
<td>#hire_date#</td>
<td>#salary#</td>
<td>#commission#</td>
<td>#dep_id#</td>
<td>
<form action="form.cfm?From=Edit&ID=#emp_id#" method="post">
<input type="submit" value="Edit">
</form>
</td>
<td>

<form action="form.cfm?From=Delete&ID=#emp_id#" method="post">

<input type="submit" value="Delete">
</form>
</td>
</tr>
</CFOUTPUT>

</CFIF>

</CFLOOP>

</CFIF>

<!-- If URL.From is undefined -->

<CFELSE>

<CFOUTPUT QUERY="GetData">
<!--- <CFIF #URL.DELID# IS #GetData.emp_id#> --->
<tr>
<td>#emp_id#</td>
<td>#emp_name#</td>
<td>#job_name#</td>
<td>#manager_id#</td>
<td>#hire_date#</td>
<td>#salary#</td>
<td>#commission#</td>
<td>#dep_id#</td>

<!-- This is where the Edit button and form is created -->

<td>
<form action="form.cfm?From=Edit&ID=#emp_id#" method="post">
<input type="submit" value="Edit">
</form>
</td>
<td>

<form action="form.cfm?From=Delete&ID=#emp_id#" method="post">

<input type="submit" value="Delete">
</form>
</td>
</tr>

</CFOUTPUT>

</CFIF>

<!-- If URL.From is defined and equals Edit, then display an update button and close the form -->

<CFIF IsDefined("URL.From")>
<CFIF #URL.From# IS "Edit">

<tr>
<td colspan="3">
<CFOUTPUT>
<input type="hidden" name="emp_id" value="#URL.ID#">
</CFOUTPUT>
<input type="submit" value="Update">
</form>
</td>
</tr>

</CFIF>
</CFIF>
<tr><td>
<form method="POST" action="generate_pdf.cfm">
<input type="submit" value="Generate Pdf">
</form>
</td>
<td>
<form method="POST" action="excel.cfm">
<input type="submit" value="Generate Spreadsheet">
</form>
</td>
</tr>
</table>




</body>

</html>