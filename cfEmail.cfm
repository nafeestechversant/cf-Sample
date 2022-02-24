<html>
<head>
<title>Sending a simple e-mail</title>
</head>
<body>
<head>
    <title>Sending a simple e-mail</title>
    </head>
    <body>
    
    <h1>Sample e-mail</h1>

    <cfmail to="nafees.rahman@techversantinfo.com"
	from="naf@mail.com"
	subject="Welcome to Techversant"
	type="text" mimeattach="C:/Users/Nafees/Downloads/e-Nomination.pdf">
	Dear Nafees

	We, here at Bedrock, would like to thank you for joining.

    Attached is a PDF document outlining our terms and conditions.

	Best wishes
	Rahman
</cfmail>
<cfoutput>
    <p>Thank you Nafees for registering.
    We have just sent you an email.</p>
</cfoutput>

  
<cfscript>

cfmail( 
  subject="Your Order", 
  from="naf@gmail.com", 
  to="nafees.rahman@techversantinfo.com",

  type="HTML"
){
  // body of the email.
  writeOutput( 'Hi there,' );
  writeOutput( 'This mail is sent to confirm that we have received your order.' );
};

</cfscript>
    </body>
    </html>