*** Keywords ***
Navigate To Cart Page 
    Click Link   ${cart_link}

Scroll Down To Footer And Verify Subscription Text
    Scroll Element Into View   ${footer}
    Element Should Be Visible 	  ${subscription_text}

Input Email Address in Input And Click Arrow button
    Input Text   ${subscription_email_input}         aaaa@gmail.com
    Click Button   ${subscription_email_submit_btn}

Verify Subscription Success Message Is Visible
    Wait Until Element Is Visible 	  ${subscription_email_succ_msg}