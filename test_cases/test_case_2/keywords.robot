*** Keywords ***
Login With Valid User Email, Password And Verify That User is Logged In
    Click Element 	  	 ${login_link}
    Element Should Be Visible 	  ${login_to_your_account_text}
    Input Text       ${login_email}       ${email}
    Input Password   ${login_password}    ${pass}
    Click Button   ${login_button}
    Element Should Be Visible   ${logged_with_username_text}