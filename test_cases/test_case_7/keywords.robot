*** Keywords ***
Navigate To Test Cases Page And Verify That Landed To Test Cases Page
    Click Element 	 ${test_cases_link}
    Element Should Be Visible 	  ${test_cases_text}
    ${test_cases_page_url}  Get Location
    Should Contain    ${test_cases_page_url}   test_cases