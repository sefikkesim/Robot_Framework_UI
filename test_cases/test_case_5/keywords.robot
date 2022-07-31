*** Keywords ***
Try To Register With Existing Email Address
    Click Element 	  	 ${login_link}
    Input Text 	 ${signup_name} 	 ${f_name}
    Input Text 	 ${signup_email} 	 ${email}
    Click Button 	 ${signup_btn} 

Email "Address is Already Registered Message" Is Visible
    Element Should Be Visible 	   ${email_already_exists_text}