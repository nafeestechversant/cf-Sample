<html> 
<head> <title>Input form</title> </head> 
 
<body> 

 
<!--- Insert the new record ---> 
<cfinsert datasource="Testing1" tablename="employees"> 
 
<h1>Employee Added</h1> 
<cfoutput> You have added  to the employee database. 
</cfoutput> 
 
</body> 
</html>