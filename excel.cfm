<!--- Read data from two datasource tables. ---> 
<cfquery 
       name="employees" datasource="Testing1"
       cachedwithin="#CreateTimeSpan(0, 6, 0, 0)#"> 
       SELECT * FROM employees 
</cfquery> 
  
<cfquery 
       name="departments" datasource="Testing1"
       cachedwithin="#CreateTimeSpan(0, 6, 0, 0)#"> 
       SELECT * FROM departments 
</cfquery>


<cfscript> 
    //Use an absolute path for the files. ---> 
       theDir=GetDirectoryFromPath(GetCurrentTemplatePath()); 
    theFile=theDir & "employees.xls"; 
    //Create two empty ColdFusion spreadsheet objects. ---> 
    theSheet = SpreadsheetNew("CourseData"); 
    theSecondSheet = SpreadsheetNew("CentersData"); 
    //Populate each object with a query. ---> 
    SpreadsheetAddRows(theSheet,employees); 
    SpreadsheetAddRows(theSecondSheet,departments); 
</cfscript>

<cfspreadsheet action="write" filename="#theFile#" name="theSheet" 
    sheetname="employees" overwrite=true> 
<cfspreadsheet action="update" filename="#theFile#" name="theSecondSheet"
    sheetname="departments"> 
	
	<cfspreadsheet action="read" src="#theFile#" sheetname="employees" name="spreadsheetData"> 
	<cfspreadsheet action="read" src="#theFile#" sheet=1 rows="3,4" format="csv" name="csvData"> 
	<cfspreadsheet action="read" src="#theFile#" format="html" rows="5-10" name="htmlData"> 
	<cfspreadsheet action="read" src="#theFile#" sheetname="employees" query="queryData"> 
	  
	<!--<h3>First sheet row 3 read as a CSV variable</h3> 
<!--- 	<cfdump var="#csvData#">  --->
	  
	<h3>Second sheet rows 5-10 read as an HTML variable</h3> -->
<!--- 	<cfdump var="#htmlData#">  --->
	  
	<h3>File downloaded path <CFOUTPUT>#theDir#updatedFile1.xls</CFOUTPUT></h3>
 	<cfdump var="#queryData#">  
	
	<!--- Modify the courses sheet. ---> 
<!--- 	<!--<cfscript>  --->
		<!-- SpreadsheetAddRow(spreadsheetData,"03,ENGL,230,Poetry 1",8,1); 
		 SpreadsheetAddColumn(spreadsheetData, 
		 "Basic,Intermediate,Advanced,Basic,Intermediate,Advanced,Basic,Intermediate,Advanced", 
		 3,2,true); -->
<!--- 	</cfscript> --> --->
	
	<!--- Write the updated Courses sheet to a new XLS file ---> 
<cfspreadsheet action="write" filename="#theDir#updatedFile1.xls" name="spreadsheetData" 
    sheetname="courses" overwrite=true> 
<!--- Write an XLS file containing the data in the CSV variable. --->     
<!--- <cfspreadsheet action="write" filename="#theDir#dataFromCSV.xls" name="CSVData"  --->
<!---     format="csv" sheetname="courses" overwrite=true> --->

    