<cfparam name="form.fileUpload" default="">

<cfif len(trim(form.fileUpload))>
  <cffile action="upload"
     fileField="fileUpload"
     destination="C:\Users\Nafees\Documents">
  <p>Thankyou, your file has been uploaded.</p>
</cfif>

<form enctype="multipart/form-data" method="post">
  <input type="file" name="fileUpload">
  <input type="submit" value="Upload File">
  </form>