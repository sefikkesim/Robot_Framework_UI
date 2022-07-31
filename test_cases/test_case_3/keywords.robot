*** Keywords ***
Login With Valid User Email, Password And Verify That User is not Logged In 
    Click Element 	  	 ${login_link}
    Element Should Be Visible 	  ${login_to_your_account_text}
    Input Text       ${login_email}       ${invalid_email}
    Input Password   ${login_password}    ${invalid_password}
    Click Button   ${login_button}
    Element Should Be Visible   ${incorrect_email_and_password_text}