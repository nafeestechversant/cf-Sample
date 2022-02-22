<cfset yourInput= 'user=me@example.com&name=John'>
<!--- Get the first value. I mean "user" part --->
<cfset splitFirstPart = listfirst(yourInput,'&', true)>
<cfset splitLastPart = listlast(yourInput, '&', true)>
<!--- Get the second part value --->
<!--- Above values are split by using & --->
<cfset user = listlast(splitFirstPart, '=', true)>
<Cfset name = listlast(splitLastPart, '=', true)>
<!--- 
    Now we can again split the list by using =. 
    Now you can see the result.
--->
<cfoutput>
    User : #user# <br/>
    Name : #name#
</cfoutput>

<cfset list11="123,151425,15641,12">
<p><cfoutput>#ListLen(list11)#</cfoutput></p>
<p><cfoutput>#ListDeleteAt(list11, 4)#</cfoutput></p>
<p><cfoutput>vbnvb #find("apple", "An apple a day keeps the doctor away.")#</cfoutput></p>

<cfscript>
    myString="Hello ColdFusion, how are you?"
    base64Value = toBase64(myString)
    binaryValue = toBinary(base64Value)
    stringValue = toString(binaryValue);
    writeOutput(base64Value);
    writeOutput(stringValue);
</cfscript>
<cfscript>
name = "luis";
writeOutput(name);
</cfscript>

