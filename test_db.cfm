<cfset  request.dsn="Testing1">
<cfset request.un="root">
<cfset request.pw="">



<cfquery name = "getallmanagers" datasource = "#request.dsn#" username = "#request.un#" password = "#request.pw#">
       select distinct m.emp_id as managerid , m.emp_name as Manager,dep_name ,m.dep_id from employees e join employees m on e.manager_id=m.emp_id
       join Departments d on d.dep_id=m.dep_id; 
    </cfquery>
<!-- <cfdump var = "#getallmanagers#"> -->

<cfquery name = "getalldepartments" datasource = "#request.dsn#" username = "#request.un#" password = "#request.pw#">
   select dep_id,dep_name from Departments;
</cfquery>
<!-- <cfdump var = "#getalldepartments#"> -->



<table align="left">
<caption>Employees Register</caption>
<form method="POST" action="insert_action.cfm">
<tr><th>Employee Name</th>
><input type="hidden" name="emp_id" value="" >
<td><input type="text" name="emp_name" required/></td>
</tr>
<tr><th>Job Name</th>
<td><input type="text" name="job_name" required/></td>
</tr>
<tr><th>Manager id</th
><td><select  name="manager_id" required>
<option value="">Select Manager</option>
    <option value="1">Assistant Manager</option>
	<option value="2">Senior Assistant Manager</option>
	<option value="3">Project Manager</option>
</select>
</td></tr>
<tr><th>Hire date</th>
<td><input type="date" name="hire_date" required/></td>
</tr>
<tr><th>Salary</th>
<td><input type="number" name="salary" required/></td>
</tr>
<tr><th>Commission</th>
<td><input type="text" name="commission" required/></td>
</tr>
<tr>
<th>Department Id</th>
<td><select  name="dep_id" required>
<cfoutput>
<option value="">Select Department--</option>
    <cfloop QUERY="getalldepartments">
    <option value="#getalldepartments.dep_id#">#getalldepartments.dep_name#</option>

    </cfloop>
</cfoutput>

</select></td></tr>



<tr><td colspan="2"> <input type="submit" value="Register"/></td></tr>
</form>

</table>

<br><br>

<!--<cfquery name = "getemployees" datasource = "#request.dsn#" username = "#request.un#" password = "#request.pw#">
   select * from employees;
</cfquery>
<table border="1" align="center">
<caption><h1>Employee Details</h1></caption>
<thead>
<tr>
    <th>Emp#ID</th>
    <th>NAME</th>
    <th>JOB</th>
    <th>MANAGERID</th>
    <th>JOIN DATE</th>
    <th>SALARY</th>
    <th>COMMISSION</th>
    <th>DEPARTMENT ID</th>
 

</tr>
</thead>
<cfloop QUERY = "getemployees" >

<cfoutput>


<tr>
    <td>#getemployees.emp_id#</td>
    <td>#getemployees.emp_name#</td>
    <td>#getemployees.job_name#</td>
    <td>#getemployees.manager_id EQ ''? 'Top-Level Manager':getemployees.manager_id#</td>
    <td>#getemployees.hire_date#</td>
    <td>#getemployees.salary#</td>
    <td>#getemployees.commission EQ ''?'0.00':getemployees.commission#</td>
    <td>#getemployees.dep_id#</td>
   
    
</tr>
</cfoutput>
</cfloop>
<tbody>

</tbody>


</table>-->
 