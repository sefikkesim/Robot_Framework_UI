*** Keywords ***
Navigate To Contact Us Page And Verify That Landed To Contact Us Page
    Click Element   ${contact_us_link}
    Element Should Be Visible 	 ${get_in_touch_text}

Fill Out Contact Us Form And Submit
    Input Text      ${contact_name}     ${f_name}
    Input Text   ${contact_email}       ${email}
    Input Text      ${contact_subject}      ${contact_subject_name}
    Input Text      ${contact_message}      ${contact_message_text}
    Choose File 	 ${contact_upload_file}         /Users/sefikkesim/Desktop/image.png
    Click Element   ${contact_submit_button}
    Handle Alert 	 action=ACCEPT 	 timeout=1
    
Verify That The Form is Submitted Successfully 
    Element Should Be Visible 	 ${contact_submit_success_message} 

Navigate To Home Page And Verify That Landed To Home Page
    Click Element   ${contact_home_page_link}
    ${home_page_url}   Get Location
    Should Be Equal      ${home_page_url}   ${base_url} 