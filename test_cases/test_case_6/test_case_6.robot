*** Settings ***

Library    Selenium2Library 

Resource                  ../variable.robot
Resource                  ../test_data.robot
Resource                  ../home_page_locaters.robot
Resource                  ../contact_us_page_locaters.robot
Resource                  ../global_keywords.robot
Resource                   keywords.robot

Test Setup         Run keywords   Navigate The Website And Verify Home Page is Visible
Test Teardown      Close Browser

*** Test Case ***
Contact Us Form
    Navigate To Contact Us Page And Verify That Landed To Contact Us Page
    Fill Out Contact Us Form And Submit	 
    Verify That The Form is Submitted Successfully
    Navigate To Home Page And Verify That Landed To Home Page

