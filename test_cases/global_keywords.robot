*** Keywords ***
Navigate The Website And Verify Home Page is Visible
    Open Browser   ${base_url}       ${browser} 
    ${url}  Get Location 
    Should Be Equal      ${base_url}     ${url}

Login With Valid User Email, Password And Verify That User is Logged In
    Click Element 	  	 ${login_link}
    Element Should Be Visible 	  ${login_to_your_account_text}
    Input Text       ${login_email}       ${email}
    Input Password   ${login_password}    ${pass}
    Click Button   ${login_button}
    Element Should Be Visible   ${logged_with_username_text}

Delete The Account
    Click Element 	  ${delete_account_link}	

Logout
    Click Element 	  	 ${logout_link}
    ${login_page}  Get Location
    Should Contain   ${login_page}   login
