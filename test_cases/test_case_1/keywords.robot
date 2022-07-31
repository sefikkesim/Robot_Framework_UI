*** Keywords ***
Input User Information And Click Signup Button
    Click Element 	  	 ${login_link}
    Input Text 	 ${signup_name} 	 ${f_name}
    Input Text 	 ${signup_email} 	 ${email}
    Click Button 	 ${signup_btn} 

Fill Out Register Form And Create A New Account
    Element Should Be Visible  ${enter_account_information_text}
    Select Radio Button   title      Mr
    Input Password 	  ${password}  	 ${pass} 
    Select From List By Value     ${days}    12
    Select From List By Value     ${months}   12
    Select From List By Value     ${years}   1980
    Select Checkbox      ${news_letter_checkbox}
    Select Checkbox 	 ${special_offer_checkbox}
    Input Text      ${first_name}       ${f_name}
    Input Text      ${last_name}        ${l_name}
    Input Text      ${company}          ${company_name}
    Input Text      ${address1}         ${address1_street}
    Input Text      ${address2}         ${address2_building} 
    Select From List By Value     ${country}    ${country_name} 
    Input Text      ${state}            ${state_name}
    Input Text      ${city}             ${city_name}    
    Input Text      ${zipcode}          ${zipcode_number}  
    Input Text      ${mobile_number}    ${mobile_number_number} 
    Click Button 	 ${create_account_button} 	 

Verify A New Account is Created
    Element Should Be Visible   ${account_created_text} 
    Click Element 	 ${continue_button} 
    Element Should Be Visible   ${logged_with_username_text}

