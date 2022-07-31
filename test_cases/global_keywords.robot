*** Keywords ***
Navigate The Website And Verify Home Page is Visible
    Open Browser   ${base_url}       ${browser} 
    ${url}  Get Location 
    Should Be Equal      ${base_url}     ${url}

Delete The Account
    Click Element 	  ${delete_account_link}	
